tableextension 76101 ItemCrossRefACO extends "Item Cross Reference"
{
    // ***
    // ABS001 INITSPEC LBR 29/11/2018 - [3.4 - New Fields Requirements] New object created
    // ***

    fields
    {
        field(76100; "Active (ACO)"; Boolean)
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'Active',
                        ENG = 'Active';
            Description = 'ABS001';

            trigger OnValidate()
            var
                myInt: Integer;
            begin

            end;

        }
    }

    var
        myInt: Integer;
}