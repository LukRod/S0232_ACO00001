page 76114 ProductLinesInfoACO
{
    PageType = ListPlus;
    ApplicationArea = All;
    UsageCategory = Administration;
    CaptionML = ENU = 'Product Lines Info',
                ENG = 'Product Lines Info';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(OrderNoFilterField; OrderNoFilter)
                {
                    ApplicationArea = All;
                    CaptionML = ENU = 'Order No. Filter',
                                ENG = 'Order No. Filter';

                    trigger OnValidate();
                    begin
                        SetMatrix;
                    end;
                }
            }
            part(Matrix; "ProductLinesInfoMatrixACO")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(PreviousSet)
            {
                ApplicationArea = All;
                CaptionML = ENU = 'Previous Set',
                            ENG = 'Previous Set';
                Image = PreviousSet;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin

                end;
            }
            action(PreviousColumn)
            {
                ApplicationArea = All;
                CaptionML = ENU = 'Previous Column',
                            ENG = 'Previous Column';
                Image = PreviousRecord;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin

                end;
            }
            action(NextColumn)
            {
                ApplicationArea = All;
                CaptionML = ENU = 'Next Column',
                            ENG = 'Next Column';
                Image = NextRecord;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin

                end;
            }
            action(NextSet)
            {
                ApplicationArea = All;
                CaptionML = ENU = 'Next Set',
                            ENG = 'Next Set';
                Image = NextSet;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        SetColumns(SetWanted::First);
    end;

    var
        MatrixRecords: array[32] of Record ProductLinesInfoRecordsACO;
        OrderNoFilter: Text;
        ShipToCityFilter: Text;
        ShipmentDateFilter: Text;
        LocationFilter: Text;
        ItemNoFilter: Text;
        MatrixColumnCaptions: ARRAY[32] OF Text[1024];
        //ColumnSet: Text[1024];
        SetWanted: Option First,Previous,Same,Next,PreviousColumn,NextColumn;
        PKFirstRecInCurrSet: Text[100];
        CurrSetLength: Integer;

    procedure SetColumns(SetWanted: Option Initial,Previous,Same,Next,PreviousSet,NextSet);
    var
        MatrixMgt: Codeunit ProductLinesInfoMatrixMgt;
    begin
        MatrixMgt.GenerateOrderShipToMatrixData(SetWanted, ARRAYLEN(MatrixRecords), OrderNoFilter, ShipToCityFilter, ShipmentDateFilter,
          LocationFilter, ItemNoFilter, PKFirstRecInCurrSet,
          MatrixColumnCaptions, CurrSetLength, MatrixRecords);
        SetMatrix;
    end;

    procedure SetMatrix();
    begin
        CurrPage.Matrix.PAGE.Load(
          MatrixColumnCaptions, MatrixRecords, OrderNoFilter, ShipToCityFilter, ShipmentDateFilter,
          LocationFilter, ItemNoFilter, CurrSetLength);
        CurrPage.UPDATE(FALSE);
    end;
}