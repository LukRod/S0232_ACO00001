tableextension 76100 ItemCardACO extends Item
{
    // ***
    // ABS001 INITSPEC LBR 29/11/2018 - [3.4 - New Fields Requirements] New object created
    // ***

    fields
    {
        field(76100; "Default Ship-from Location (ACO)"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Location;
            CaptionML = ENU = 'Default Ship-from Location',
                        ENG = 'Default Ship-from Location';
            Description = 'ABS001';
        }
        field(76101; "Sequence Line No. (ACO)"; Code[10])
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'Sequence Line No.',
                        ENG = 'Sequence Line No.';
            Description = 'ABS001';
        }
        field(76102; "Ship-to Code Filter (ACO)"; Code[20])
        {
            CaptionML = ENU = 'Ship-to Code Filter (ACO)',
                        ENG = 'Ship-to Code Filter (ACO)';
            Description = 'ABS001';
            FieldClass = FlowFilter;

        }
        field(76103; "Document No. Filter (ACO)"; Code[20])
        {
            CaptionML = ENU = 'Document No. Filter (ACO)',
                        ENG = 'Document No. Filter (ACO)';
            Description = 'ABS001';
            FieldClass = FlowFilter;

        }
        field(76104; "Qty. on Sales Order (ACO)"; Decimal)
        {
            CaptionML = ENU = 'Qty. on Sales Order (ACO)',
                        ENG = 'Qty. on Sales Order (ACO)';
            Description = 'ABS001';
            FieldClass = FlowField;
            CalcFormula = Sum ("Sales Line"."Outstanding Qty. (Base)" WHERE
                ("Document Type" = CONST (Order), Type = CONST (Item), "No." = FIELD ("No."),
                    "Shortcut Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                    "Shortcut Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                    "Location Code" = FIELD ("Location Filter"),
                    "Drop Shipment" = FIELD ("Drop Shipment Filter"),
                    "Variant Code" = FIELD ("Variant Filter"),
                    "Shipment Date" = FIELD ("Date Filter"),
                    "Ship-to Code (ACO)" = FIELD ("Ship-to Code Filter (ACO)"),
            "Document No." = FIELD ("Document No. Filter (ACO)")));

        }
        // field(76102; "Best before Date Calc."; Date)
        // {
        //     DataClassification = ToBeClassified;
        // }
    }

    var
        myInt: Integer;
}