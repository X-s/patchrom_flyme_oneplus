.class Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem$1;
.super Lcom/oneplus/widget/ScaleImageView$GestureCallback;
.source "BurstViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;-><init>(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/media/Media;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

.field final synthetic val$this$0:Lcom/oneplus/gallery2/BurstViewerFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;Lcom/oneplus/gallery2/BurstViewerFragment;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem$1;->this$1:Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    iput-object p2, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem$1;->val$this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView$GestureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem$1;->this$1:Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    iget-object v0, v0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem$1;->this$1:Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    # invokes: Lcom/oneplus/gallery2/BurstViewerFragment;->onScaleImageGestureDoubleTap(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;Landroid/view/MotionEvent;)Z
    invoke-static {v0, v1, p2}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$2600(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "e1"    # Landroid/view/MotionEvent;
    .param p3, "e2"    # Landroid/view/MotionEvent;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F

    .prologue
    .line 473
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem$1;->this$1:Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    iget-object v0, v0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem$1;->this$1:Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    # invokes: Lcom/oneplus/gallery2/BurstViewerFragment;->onScaleImageGestureFling(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    invoke-static/range {v0 .. v5}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$2700(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onGestureEnd(Lcom/oneplus/widget/ScaleImageView;)V
    .locals 2
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem$1;->this$1:Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    iget-object v0, v0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem$1;->this$1:Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    # invokes: Lcom/oneplus/gallery2/BurstViewerFragment;->onScaleImageGestureEnd(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$2400(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;)V

    .line 456
    return-void
.end method

.method public onGestureStart(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem$1;->this$1:Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    iget-object v0, v0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem$1;->this$1:Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    # invokes: Lcom/oneplus/gallery2/BurstViewerFragment;->onScaleImageGestureStart(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;Landroid/view/MotionEvent;)V
    invoke-static {v0, v1, p2}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$2500(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;Landroid/view/MotionEvent;)V

    .line 462
    return-void
.end method

.method public onScale(Lcom/oneplus/widget/ScaleImageView;FFF)Z
    .locals 2
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "factor"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F

    .prologue
    .line 479
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem$1;->this$1:Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    iget-object v0, v0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem$1;->this$1:Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    # invokes: Lcom/oneplus/gallery2/BurstViewerFragment;->onScaleImageGestureScale(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;FFF)Z
    invoke-static {v0, v1, p2, p3, p4}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$2800(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;FFF)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem$1;->this$1:Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->m_ScaleImageView:Lcom/oneplus/widget/ScaleImageView;
    invoke-static {v0}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->access$2900(Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;)Lcom/oneplus/widget/ScaleImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->getImageBoundsType()Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-ne v0, v1, :cond_0

    .line 487
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem$1;->this$1:Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    iget-object v0, v0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem$1;->this$1:Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/BurstViewerFragment$CenterFilmstripItem;->getPosition()I

    move-result v1

    # invokes: Lcom/oneplus/gallery2/BurstViewerFragment;->updateFilmstripItemSelected(I)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$3000(Lcom/oneplus/gallery2/BurstViewerFragment;I)V

    .line 488
    const/4 v0, 0x1

    .line 490
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
