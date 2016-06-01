.class Lcom/oppo/tribune/ui/CustomAlertDialog$Builder$2;
.super Ljava/lang/Object;
.source "CustomAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->create()Lcom/oppo/tribune/ui/CustomAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder$2;->this$0:Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder$2;->this$0:Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;

    # getter for: Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->access$200(Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder$2;->this$0:Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;

    # getter for: Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->access$200(Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder$2;->this$0:Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;

    # getter for: Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mDialog:Lcom/oppo/tribune/ui/CustomAlertDialog;
    invoke-static {v1}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->access$100(Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;)Lcom/oppo/tribune/ui/CustomAlertDialog;

    move-result-object v1

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder$2;->this$0:Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;

    # getter for: Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->mDialog:Lcom/oppo/tribune/ui/CustomAlertDialog;
    invoke-static {v0}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->access$100(Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;)Lcom/oppo/tribune/ui/CustomAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/CustomAlertDialog;->dismiss()V

    .line 198
    return-void
.end method
