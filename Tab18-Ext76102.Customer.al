tableextension 76102 CustomerExt extends "Customer"
{
    // ***
    // ABS001 INITSPEC LBR 29/11/2018 - [3.4 - New Fields Requirements] New object created
    // ***

    fields
    {
        field(76100; "Exclude from Batch Posting (ACO)"; Boolean)
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'Exclude from Batch Posting',
                        ENG = 'Exclude from Batch Posting';
            Description = 'ABS001';
        }
    }

    var
        myInt: Integer;
}