.class Lcom/oppo/tribune/ui/CustomAlertDialog$Builder$4;
.super Ljava/lang/Object;
.source "CustomAlertDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder$4;->this$0:Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;

    iput-object p2, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder$4;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 290
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder$4;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder$4;->this$0:Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;

    # getter for: Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mDialog:Lcom/oppo/tribune/ui/CustomAlertDialog;
    invoke-static {v1}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->access$100(Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;)Lcom/oppo/tribune/ui/CustomAlertDialog;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 291
    return-void
.end method
