pageextension 76112 SalesOrderCardACO extends "Sales Order"
{
    layout
    {
        addlast(General)
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