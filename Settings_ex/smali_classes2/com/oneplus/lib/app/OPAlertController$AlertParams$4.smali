.class Lcom/oneplus/lib/app/OPAlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "OPAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/app/OPAlertController$AlertParams;->createListView(Lcom/oneplus/lib/app/OPAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/oneplus/lib/app/OPAlertController;

.field final synthetic val$listView:Lcom/oneplus/lib/app/OPAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/OPAlertController$AlertParams;Lcom/oneplus/lib/app/OPAlertController$RecycleListView;Lcom/oneplus/lib/app/OPAlertController;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/lib/app/OPAlertController$AlertParams;
    .param p2, "val$listView"    # Lcom/oneplus/lib/app/OPAlertController$RecycleListView;
    .param p3, "val$dialog"    # Lcom/oneplus/lib/app/OPAlertController;

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$4;->this$1:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$4;->val$listView:Lcom/oneplus/lib/app/OPAlertController$RecycleListView;

    iput-object p3, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$4;->val$dialog:Lcom/oneplus/lib/app/OPAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1131
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$4;->this$1:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v0, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$4;->this$1:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v0, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItems:[Z

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$4;->val$listView:Lcom/oneplus/lib/app/OPAlertController$RecycleListView;

    invoke-virtual {v1, p3}, Lcom/oneplus/lib/app/OPAlertController$RecycleListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$4;->this$1:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v0, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 1135
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$4;->val$dialog:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v1}, Lcom/oneplus/lib/app/OPAlertController;->-get7(Lcom/oneplus/lib/app/OPAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$4;->val$listView:Lcom/oneplus/lib/app/OPAlertController$RecycleListView;

    invoke-virtual {v2, p3}, Lcom/oneplus/lib/app/OPAlertController$RecycleListView;->isItemChecked(I)Z

    move-result v2

    .line 1134
    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 1130
    return-void
.end method
