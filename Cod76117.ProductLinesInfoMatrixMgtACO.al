codeunit 76117 ProductLinesInfoMatrixMgt
{
    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;
        SetOption: Option Initial,Previous,Same,Next,PreviousColumn,NextColumn;
        Text001: TextConst ENU = 'The previous column set could not be found.', ENG = 'The previous column set could not be found.';
        Text003: TextConst ENU = 'There are no Sales Lines within the filter.', ENG = 'There are no Sales Lines within the filter.';

    procedure GenerateOrderShipToMatrixData(SetWanted: Option; MaximumSetLength: Integer; OrderNoFilter1: Text; ShipToCityFilter1: Text; ShipmentDateFilter1: Text; LocationFilter1: Text; ItemNoFilter1: Text; var RecordPosition: Text; var CaptionSet: array[32] of Text[80]; var CurrSetLength: Integer; var ProductLineInfoRec: array[32] of Record ProductLinesInfoRecordsACO temporary);
    var
        SalesHeader: Record "Sales Header";
        ProductLineInfoRecTmp: Record ProductLinesInfoRecordsACO temporary;
        SalesLine: Record "Sales Line";
        Steps: Integer;
    begin
        CLEAR(CaptionSet);
        //CaptionRange := '';
        CurrSetLength := 0;
        CLEAR(ProductLineInfoRec);
        CLEAR(SalesLine);

        // Update Temp Table
        SalesLine.RESET();
        //MESSAGE(FORMAT(SalesLine.FindFirst()));
        SalesLine.SETRANGE("Document Type", SalesLine."Document Type"::Order);
        SalesLine.SetRange(Type, SalesLine.Type::Item);

        IF (OrderNoFilter1 <> '') THEN
            SalesLine.SetFilter("Document No.", OrderNoFilter1);
        IF (LocationFilter1 <> '') THEN
            SalesLine.SetFilter("Location Code", LocationFilter1);
        IF (ItemNoFilter1 <> '') THEN
            SalesLine.SetFilter("No.", ItemNoFilter1);
        IF (ShipmentDateFilter1 <> '') THEN
            SalesLine.SetFilter("Shipment Date", ShipmentDateFilter1);
        IF (ShipToCityFilter1 <> '') THEN
            SalesLine.SetRange("Ship-to Code (ACO)", ShipToCityFilter1);

        IF NOT SalesLine.FindFirst() THEN BEGIN
            RecordPosition := '';
            ERROR(Text003);
        END;

        // Update Tmp table
        repeat
            SalesLine.CalcFields("Ship-to Code (ACO)");
            ProductLineInfoRecTmp.SetRange(Code, SalesLine."Ship-to Code (ACO)");
            IF NOT ProductLineInfoRecTmp.FINDFIRST() THEN begin
                ProductLineInfoRecTmp.Code := SalesLine."Ship-to Code (ACO)";
                ProductLineInfoRecTmp.DocumentNo := SalesLine."Document No.";
                ProductLineInfoRecTmp.Insert();
            end else begin
                ProductLineInfoRecTmp.DocumentNo := 'MULTIPLE';
                ProductLineInfoRecTmp.Modify();
            end
        until SalesLine.NEXT() = 0;

        CASE SetWanted OF
            SetOption::Initial:
                BEGIN
                    ProductLineInfoRecTmp.Reset();
                    ProductLineInfoRecTmp.Find('-');
                END;
            SetOption::Previous:
                BEGIN
                    ERROR('Opperation Not Supported!');
                END;
            SetOption::PreviousColumn:
                BEGIN
                    ERROR('Opperation Not Supported!');
                END;
            SetOption::NextColumn:
                BEGIN
                    ERROR('Opperation Not Supported!');
                END;
            SetOption::Same:
                BEGIN
                    ERROR('Opperation Not Supported!');
                END;
            SetOption::Next:
                BEGIN
                    ERROR('Opperation Not Supported!');
                END;
        END;

        RecordPosition := ProductLineInfoRecTmp.GETPOSITION;

        REPEAT
            CurrSetLength := CurrSetLength + 1;
            CaptionSet[CurrSetLength] := ProductLineInfoRecTmp.DocumentNo + ' [' + ProductLineInfoRecTmp.Code + ']';
            ProductLineInfoRec[CurrSetLength].COPY(ProductLineInfoRecTmp);
        UNTIL (CurrSetLength = MaximumSetLength) OR (ProductLineInfoRecTmp.Next() <> 1);
    end;
}