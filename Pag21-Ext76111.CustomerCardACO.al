pageextension 76111 CustomerCardACO extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field(ExcludeFromBatchPostingACO; "Exclude from Batch Posting (ACO)")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}