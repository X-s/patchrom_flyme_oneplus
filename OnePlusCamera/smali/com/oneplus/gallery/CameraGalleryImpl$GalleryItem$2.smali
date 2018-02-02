.class Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$2;
.super Lcom/oneplus/widget/ScaleImageView$StateCallback;
.source "CameraGalleryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    .line 1330
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$2;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBoundsChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V
    .locals 6
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$2;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-nez v0, :cond_0

    .line 1336
    return-void

    .line 1337
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$2;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-wrap3(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 1338
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$2;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap43(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;IIII)V

    .line 1333
    return-void
.end method

.method public onBoundsTypeChanged(Lcom/oneplus/widget/ScaleImageView;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V
    .locals 1
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "oldType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;
    .param p3, "newType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$2;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap44(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 1340
    return-void
.end method
