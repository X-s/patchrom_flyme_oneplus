.class Lcom/oneplus/gallery2/OPGallery$4$1;
.super Ljava/lang/Object;
.source "OPGallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/OPGallery$4;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/OPGallery$4;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGallery$4;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGallery$4$1;->this$1:Lcom/oneplus/gallery2/OPGallery$4;

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

    .line 494
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 495
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    const v4, 0x7f06002d

    invoke-virtual {p1, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 496
    .local v2, "editText":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, "displayName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 498
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 499
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v4

    const v5, 0x7f090037

    invoke-virtual {v4, v5}, Lcom/oneplus/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 500
    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v4

    const-class v5, Lcom/oneplus/gallery2/media/AlbumManager;

    invoke-virtual {v4, v5}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager;

    .line 501
    .local v0, "albumManager":Lcom/oneplus/gallery2/media/AlbumManager;
    if-eqz v0, :cond_2

    .line 503
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGallery$4$1;->this$1:Lcom/oneplus/gallery2/OPGallery$4;

    iget-object v4, v4, Lcom/oneplus/gallery2/OPGallery$4;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    invoke-virtual {v4, v6}, Lcom/oneplus/base/OperationCallbackHelper;->callOnStarted(Ljava/lang/Object;)V

    .line 504
    new-instance v4, Lcom/oneplus/gallery2/OPGallery$4$1$1;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery2/OPGallery$4$1$1;-><init>(Lcom/oneplus/gallery2/OPGallery$4$1;)V

    invoke-virtual {v0, v1, v4}, Lcom/oneplus/gallery2/media/AlbumManager;->createAlbum(Ljava/lang/String;Lcom/oneplus/gallery2/media/AlbumManager$AlbumCallback;)Lcom/oneplus/base/Handle;

    move-result-object v3

    .line 528
    .local v3, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 530
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGallery$4$1;->this$1:Lcom/oneplus/gallery2/OPGallery$4;

    iget-object v4, v4, Lcom/oneplus/gallery2/OPGallery$4;->this$0:Lcom/oneplus/gallery2/OPGallery;

    iget-object v4, v4, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v5, "createAlbum() - Fail to create album"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGallery$4$1;->this$1:Lcom/oneplus/gallery2/OPGallery$4;

    iget-object v4, v4, Lcom/oneplus/gallery2/OPGallery$4;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    invoke-virtual {v4, v6}, Lcom/oneplus/base/OperationCallbackHelper;->callOnCanceled(Ljava/lang/Object;)V

    .line 536
    .end local v3    # "handle":Lcom/oneplus/base/Handle;
    :cond_1
    :goto_0
    return-void

    .line 535
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGallery$4$1;->this$1:Lcom/oneplus/gallery2/OPGallery$4;

    iget-object v4, v4, Lcom/oneplus/gallery2/OPGallery$4;->this$0:Lcom/oneplus/gallery2/OPGallery;

    iget-object v4, v4, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    const-string v5, "createAlbum() - No AlbumMediaSetManager when positive button clicked"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
