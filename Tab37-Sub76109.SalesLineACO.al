codeunit 76109 SalesLineACO
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnAfterValidateEvent', 'No.', false, false)]
    local procedure OnAfterValidateNo(var Rec: Record "Sales Line"; var xRec: Record "Sales Line"; CurrFieldNo: Integer)
    var
        Item: Record Item;
    begin
        if NOT (Item.Get(Rec."No.")) then Item.Init();
        Rec.Validate("Location Code", Item."Default Ship-from Location (ACO)");
    end;

    var
        myInt: Integer;
}