.class Lcom/oneplus/settings/ui/OPListDialog$4;
.super Ljava/lang/Object;
.source "OPListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPListDialog;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPListDialog;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPListDialog;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/ui/OPListDialog;
    .param p2, "val$listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog$4;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    iput-object p2, p0, Lcom/oneplus/settings/ui/OPListDialog$4;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog$4;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPListDialog$4;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPListDialog;->-get1(Lcom/oneplus/settings/ui/OPListDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 212
    return-void
.end method
