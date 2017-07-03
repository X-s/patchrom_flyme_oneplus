.class Lcom/oneplus/gallery/OPGallery$7$1;
.super Ljava/lang/Object;
.source "OPGallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGallery$7;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/OPGallery$7;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGallery$7;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/oneplus/gallery/OPGallery$7$1;->this$1:Lcom/oneplus/gallery/OPGallery$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 539
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 540
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    const v3, 0x7f06002d

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 541
    .local v1, "editText":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "displayName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 543
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 544
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v3

    const v4, 0x7f090037

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/GalleryApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 545
    :cond_0
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v3

    const-class v4, Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/media/OPMediaManager;

    .line 546
    .local v2, "mediaManager":Lcom/oneplus/gallery/media/OPMediaManager;
    if-eqz v2, :cond_2

    .line 548
    iget-object v3, p0, Lcom/oneplus/gallery/OPGallery$7$1;->this$1:Lcom/oneplus/gallery/OPGallery$7;

    iget-object v3, v3, Lcom/oneplus/gallery/OPGallery$7;->this$0:Lcom/oneplus/gallery/OPGallery;

    iget-object v3, v3, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v4, "createAlbum() - Create album"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v3, p0, Lcom/oneplus/gallery/OPGallery$7$1;->this$1:Lcom/oneplus/gallery/OPGallery$7;

    iget-object v3, v3, Lcom/oneplus/gallery/OPGallery$7;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    if-nez v3, :cond_1

    .line 550
    iget-object v3, p0, Lcom/oneplus/gallery/OPGallery$7$1;->this$1:Lcom/oneplus/gallery/OPGallery$7;

    iget-object v3, v3, Lcom/oneplus/gallery/OPGallery$7;->this$0:Lcom/oneplus/gallery/OPGallery;

    sget-object v4, Lcom/oneplus/gallery/Gallery;->PROP_TARGET_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/MediaType;

    invoke-interface {v2, v0, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->createAlbum(Ljava/lang/String;Lcom/oneplus/gallery/media/MediaType;)Z

    .line 582
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery/OPGallery$7$1;->this$1:Lcom/oneplus/gallery/OPGallery$7;

    iget-object v3, v3, Lcom/oneplus/gallery/OPGallery$7;->this$0:Lcom/oneplus/gallery/OPGallery;

    sget-object v4, Lcom/oneplus/gallery/Gallery;->PROP_TARGET_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/OPGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/MediaType;

    new-instance v4, Lcom/oneplus/gallery/OPGallery$7$1$1;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/OPGallery$7$1$1;-><init>(Lcom/oneplus/gallery/OPGallery$7$1;)V

    iget-object v5, p0, Lcom/oneplus/gallery/OPGallery$7$1;->this$1:Lcom/oneplus/gallery/OPGallery$7;

    iget-object v5, v5, Lcom/oneplus/gallery/OPGallery$7;->this$0:Lcom/oneplus/gallery/OPGallery;

    invoke-virtual {v5}, Lcom/oneplus/gallery/OPGallery;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-interface {v2, v0, v3, v4, v5}, Lcom/oneplus/gallery/media/OPMediaManager;->createAlbum(Ljava/lang/String;Lcom/oneplus/gallery/media/MediaType;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z

    goto :goto_0

    .line 581
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery/OPGallery$7$1;->this$1:Lcom/oneplus/gallery/OPGallery$7;

    iget-object v3, v3, Lcom/oneplus/gallery/OPGallery$7;->this$0:Lcom/oneplus/gallery/OPGallery;

    iget-object v3, v3, Lcom/oneplus/gallery/OPGallery;->TAG:Ljava/lang/String;

    const-string v4, "createAlbum() - No media manager when positive button clicked"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
