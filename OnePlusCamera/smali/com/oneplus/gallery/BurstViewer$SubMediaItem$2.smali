.class Lcom/oneplus/gallery/BurstViewer$SubMediaItem$2;
.super Lcom/oneplus/widget/ScaleImageView$GestureCallback;
.source "BurstViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/BurstViewer$SubMediaItem;-><init>(Lcom/oneplus/gallery/BurstViewer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/BurstViewer$SubMediaItem;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/BurstViewer$SubMediaItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/gallery/BurstViewer$SubMediaItem;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem$2;->this$1:Lcom/oneplus/gallery/BurstViewer$SubMediaItem;

    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView$GestureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "e1"    # Landroid/view/MotionEvent;
    .param p3, "e2"    # Landroid/view/MotionEvent;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F

    .prologue
    .line 348
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem$2;->this$1:Lcom/oneplus/gallery/BurstViewer$SubMediaItem;

    iget-object v0, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->this$0:Lcom/oneplus/gallery/BurstViewer;

    iget-object v1, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem$2;->this$1:Lcom/oneplus/gallery/BurstViewer$SubMediaItem;

    invoke-static {v0, v1, p4, p5}, Lcom/oneplus/gallery/BurstViewer;->-wrap0(Lcom/oneplus/gallery/BurstViewer;Lcom/oneplus/gallery/BurstViewer$SubMediaItem;FF)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 354
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getImageBoundsType()Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-ne v0, v1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem$2;->this$1:Lcom/oneplus/gallery/BurstViewer$SubMediaItem;

    iget-object v0, v0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->this$0:Lcom/oneplus/gallery/BurstViewer;

    iget-object v1, p0, Lcom/oneplus/gallery/BurstViewer$SubMediaItem$2;->this$1:Lcom/oneplus/gallery/BurstViewer$SubMediaItem;

    iget-object v1, v1, Lcom/oneplus/gallery/BurstViewer$SubMediaItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-static {v0, v1}, Lcom/oneplus/gallery/BurstViewer;->-wrap24(Lcom/oneplus/gallery/BurstViewer;Lcom/oneplus/gallery2/media/Media;)V

    .line 357
    const/4 v0, 0x1

    return v0

    .line 359
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
