table 76116 ProductLinesInfoRecordsACO
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Code; Code[80])
        {
            DataClassification = ToBeClassified;

        }
        field(2; DocumentNo; Code[20])
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}