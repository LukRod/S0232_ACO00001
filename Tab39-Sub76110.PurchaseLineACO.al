codeunit 76110 PurchaseLineACO
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, Database::"Purchase Line", 'OnAfterValidateEvent', 'No.', false, false)]
    local procedure OnAfterValidateNo(var Rec: Record "Purchase Line"; var xRec: Record "Purchase Line"; CurrFieldNo: Integer)
    var
        Item: Record Item;
    begin
        if NOT (Item.Get(Rec."No.")) then Item.Init();
        Rec.Validate("Location Code", Item."Default Ship-from Location (ACO)");
    end;

    var
        myInt: Integer;
}