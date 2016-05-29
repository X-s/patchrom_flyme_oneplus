.class Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog$1;
.super Ljava/lang/Object;
.source "OPFingerPrintEditFragments.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;

.field final synthetic val$renameEdit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog$1;->this$1:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;

    iput-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog$1;->val$renameEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 295
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 289
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 279
    const-string v0, " "

    if-ne p1, v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog$1;->val$renameEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :cond_0
    return-void
.end method
