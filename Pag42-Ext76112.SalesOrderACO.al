pageextension 76112 SalesOrderCardACO extends "Sales Order"
{
    layout
    {
        addlast(General)
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