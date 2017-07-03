.class Lcom/oneplus/gallery2/OPGalleryActivity$30;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/OPGalleryActivity;->setupUI(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/OPGalleryActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V
    .locals 0

    .prologue
    .line 2820
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGalleryActivity$30;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2823
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity$30;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    .line 2824
    .local v0, "gallery":Lcom/oneplus/gallery2/Gallery;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oneplus/gallery2/OPGallery;

    if-eqz v1, :cond_1

    .line 2826
    check-cast v0, Lcom/oneplus/gallery2/OPGallery;

    .end local v0    # "gallery":Lcom/oneplus/gallery2/Gallery;
    invoke-virtual {v0}, Lcom/oneplus/gallery2/OPGallery;->createAlbum()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2827
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity$30;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$3500(Lcom/oneplus/gallery2/OPGalleryActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setupUI() - Error when create album"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2831
    :cond_0
    :goto_0
    return-void

    .line 2830
    .restart local v0    # "gallery":Lcom/oneplus/gallery2/Gallery;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity$30;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$3600(Lcom/oneplus/gallery2/OPGalleryActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setupUI() - No suitable gallery to create album"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
