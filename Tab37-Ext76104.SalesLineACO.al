tableextension 76104 SalesLineACO extends "Sales Line"
{
    // ***
    // ABS001 INITSPEC LBR 29/11/2018 - [3.4 - New Fields Requirements] New object created
    // ***

    fields
    {
        field(76100; "Ready to Invoice (ACO)"; Code[10])
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'Ready to Invoice',
                        ENG = 'Ready to Invoice';
            Description = 'ABS001';
        }
        field(76101; "User ID (ACO)"; Code[10])
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'User ID',
                        ENG = 'User ID';
            Description = 'ABS001';
        }
        field(76102; "Date / Time (ACO)"; Code[10])
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'Date / Time',
                        ENG = 'Date / Time';
            Description = 'ABS001';
        }
        field(76103; "Ship-to Code (ACO)"; Code[20])
        {
            //DataClassification = ToBeClassified;
            CaptionML = ENU = 'Ship-to Code (ACO)',
                        ENG = 'Ship-to Code (ACO)';
            Description = 'ABS001';
            FieldClass = FlowField;
            CalcFormula = Lookup ("Sales Header"."Ship-to City" WHERE ("Document Type" = FIELD ("Document Type"), "No." = FIELD ("Document No.")));
        }

    }

    var
        myInt: Integer;
}