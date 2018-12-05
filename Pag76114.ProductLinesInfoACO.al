page 76114 ProductLinesInfoACO
{
    PageType = ListPlus;
    ApplicationArea = All;
    UsageCategory = Administration;
    CaptionML = ENU = 'Product Lines Info',
                ENG = 'Product Lines Info';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(OrderNoFilterField; OrderNoFilter)
                {
                    ApplicationArea = All;
                    CaptionML = ENU = 'Order No. Filter',
                                ENG = 'Order No. Filter';
                }
            }
            part(Matrix; "Acc. Sched. Chart SubPage")
            {

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(PreviousSet)
            {
                ApplicationArea = All;
                CaptionML = ENU = 'Previous Set',
                            ENG = 'Previous Set';
                Image = PreviousSet;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin

                end;
            }
            action(PreviousColumn)
            {
                ApplicationArea = All;
                CaptionML = ENU = 'Previous Column',
                            ENG = 'Previous Column';
                Image = PreviousRecord;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin

                end;
            }
            action(NextColumn)
            {
                ApplicationArea = All;
                CaptionML = ENU = 'Next Column',
                            ENG = 'Next Column';
                Image = NextRecord;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin

                end;
            }
            action(NextSet)
            {
                ApplicationArea = All;
                CaptionML = ENU = 'Next Set',
                            ENG = 'Next Set';
                Image = NextSet;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        LocationFilter: Text;
        OrderNoFilter: Text;
        ShipmentDateFilter: Text;
        ShipToCodeFilter: Text;
        ItemNoFilter: Text;


}