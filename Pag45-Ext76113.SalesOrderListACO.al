pageextension 76113 SalesOrderListACO extends "Sales Order List"
{
    layout
    {
        addlast(Content)
        {
            field("Wave (ACO)"; 'WaveACO')
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