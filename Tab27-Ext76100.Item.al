tableextension 76100 ItemCardExt extends Item
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
        // field(76102; "Best before Date Calc."; Date)
        // {
        //     DataClassification = ToBeClassified;
        // }
    }

    var
        myInt: Integer;
}