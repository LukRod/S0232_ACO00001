pageextension 76113 SalesOrderListACO extends "Sales Order List"
{
    layout
    {
        addlast(Content)
        {
            field(WaveACO; "Wave (ACO)")
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