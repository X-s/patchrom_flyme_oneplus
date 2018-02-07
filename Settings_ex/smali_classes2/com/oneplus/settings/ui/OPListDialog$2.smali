.class Lcom/oneplus/settings/ui/OPListDialog$2;
.super Ljava/lang/Object;
.source "OPListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPListDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPListDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPListDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/ui/OPListDialog;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog$2;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog$2;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPListDialog;->-get3(Lcom/oneplus/settings/ui/OPListDialog;)Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog$2;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPListDialog;->-get3(Lcom/oneplus/settings/ui/OPListDialog;)Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;->OnDialogListCancelClick()V

    .line 118
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 114
    return-void
.end method
