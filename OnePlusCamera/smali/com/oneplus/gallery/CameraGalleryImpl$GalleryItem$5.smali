.class Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$5;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->onGestureEnd()V
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
    .line 1386
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$5;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1391
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$5;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-get0(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 1393
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$5;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$5;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v1, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get5(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap1(Lcom/oneplus/gallery/CameraGalleryImpl;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1394
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$5;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1395
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$5;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->-set0(Lcom/oneplus/gallery/CameraGalleryImpl;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1402
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$5;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap66(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 1389
    return-void

    .line 1399
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$5;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1400
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$5;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->-set0(Lcom/oneplus/gallery/CameraGalleryImpl;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto :goto_0
.end method
