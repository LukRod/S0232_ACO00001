tableextension 76105 SalesShipmentHeaderACO extends "Sales Shipment Header"
{
    // ***
    // ABS001 INITSPEC LBR 29/11/2018 - [3.4 - New Fields Requirements] New object created
    // ***

    fields
    {
        field(76100; "Wave (ACO)"; Code[10])
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'Wave',
                        ENG = 'Wave';
            Description = 'ABS001';
        }
        field(76101; "Order Owner (ACO)"; Code[10])
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'Order Owner',
                        ENG = 'Order Owner';
            Description = 'ABS001';
        }
    }

    var
        myInt: Integer;
}