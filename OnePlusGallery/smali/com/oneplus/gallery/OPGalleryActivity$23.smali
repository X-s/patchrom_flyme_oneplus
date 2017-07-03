.class Lcom/oneplus/gallery/OPGalleryActivity$23;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGalleryActivity;->setupUI(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/OPGalleryActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGalleryActivity;)V
    .locals 0

    .prologue
    .line 2370
    iput-object p1, p0, Lcom/oneplus/gallery/OPGalleryActivity$23;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2373
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity$23;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    invoke-virtual {v1}, Lcom/oneplus/gallery/OPGalleryActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    .line 2374
    .local v0, "gallery":Lcom/oneplus/gallery/Gallery;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oneplus/gallery/OPGallery;

    if-eqz v1, :cond_1

    .line 2376
    check-cast v0, Lcom/oneplus/gallery/OPGallery;

    .end local v0    # "gallery":Lcom/oneplus/gallery/Gallery;
    invoke-virtual {v0}, Lcom/oneplus/gallery/OPGallery;->createAlbum()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2377
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity$23;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery/OPGalleryActivity;->access$2800(Lcom/oneplus/gallery/OPGalleryActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setupUI() - Error when create album"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    :cond_0
    :goto_0
    return-void

    .line 2380
    .restart local v0    # "gallery":Lcom/oneplus/gallery/Gallery;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity$23;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery/OPGalleryActivity;->access$2900(Lcom/oneplus/gallery/OPGalleryActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setupUI() - No suitable gallery to create album"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
