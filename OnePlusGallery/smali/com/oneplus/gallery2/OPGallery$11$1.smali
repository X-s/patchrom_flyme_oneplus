.class Lcom/oneplus/gallery2/OPGallery$11$1;
.super Ljava/lang/Object;
.source "OPGallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/OPGallery$11;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/OPGallery$11;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGallery$11;)V
    .locals 0

    .prologue
    .line 1246
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGallery$11$1;->this$1:Lcom/oneplus/gallery2/OPGallery$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 1250
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1251
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    const v3, 0x7f060030

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1252
    .local v1, "editText":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1253
    .local v0, "displayName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1254
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1255
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v3

    const v4, 0x7f090037

    invoke-virtual {v3, v4}, Lcom/oneplus/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1256
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGallery$11$1;->this$1:Lcom/oneplus/gallery2/OPGallery$11;

    iget-object v3, v3, Lcom/oneplus/gallery2/OPGallery$11;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    if-eqz v3, :cond_1

    .line 1257
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGallery$11$1;->this$1:Lcom/oneplus/gallery2/OPGallery$11;

    iget-object v3, v3, Lcom/oneplus/gallery2/OPGallery$11;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    invoke-virtual {v3, v6}, Lcom/oneplus/base/OperationCallbackHelper;->callOnStarted(Ljava/lang/Object;)V

    .line 1258
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGallery$11$1;->this$1:Lcom/oneplus/gallery2/OPGallery$11;

    iget-object v3, v3, Lcom/oneplus/gallery2/OPGallery$11;->val$albumMediaSet:Lcom/oneplus/gallery2/media/AlbumMediaSet;

    new-instance v4, Lcom/oneplus/gallery2/OPGallery$11$1$1;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery2/OPGallery$11$1$1;-><init>(Lcom/oneplus/gallery2/OPGallery$11$1;)V

    invoke-virtual {v3, v0, v4}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->rename(Ljava/lang/String;Lcom/oneplus/gallery2/media/AlbumMediaSet$RenameCallback;)Lcom/oneplus/base/Handle;

    move-result-object v2

    .line 1276
    .local v2, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1278
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGallery$11$1;->this$1:Lcom/oneplus/gallery2/OPGallery$11;

    iget-object v3, v3, Lcom/oneplus/gallery2/OPGallery$11;->this$0:Lcom/oneplus/gallery2/OPGallery;

    iget-object v3, v3, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "renameMediaSet() - Fail to rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/gallery2/OPGallery$11$1;->this$1:Lcom/oneplus/gallery2/OPGallery$11;

    iget-object v5, v5, Lcom/oneplus/gallery2/OPGallery$11;->val$mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGallery$11$1;->this$1:Lcom/oneplus/gallery2/OPGallery$11;

    iget-object v3, v3, Lcom/oneplus/gallery2/OPGallery$11;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    if-eqz v3, :cond_2

    .line 1280
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGallery$11$1;->this$1:Lcom/oneplus/gallery2/OPGallery$11;

    iget-object v3, v3, Lcom/oneplus/gallery2/OPGallery$11;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    invoke-virtual {v3, v6}, Lcom/oneplus/base/OperationCallbackHelper;->callOnCanceled(Ljava/lang/Object;)V

    .line 1282
    :cond_2
    return-void
.end method
