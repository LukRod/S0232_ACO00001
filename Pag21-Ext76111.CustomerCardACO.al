pageextension 76111 CustomerCardACO extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Exclude from Batch Posting (ACO)"; 'ExcludeFromBatchPostingACO')
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