.class Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$1;
.super Lcom/oneplus/widget/ScaleImageView$GestureCallback;
.source "FilmstripFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;-><init>(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/media/Media;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

.field final synthetic val$this$0:Lcom/oneplus/gallery2/FilmstripFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Lcom/oneplus/gallery2/FilmstripFragment;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$1;->this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    iput-object p2, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$1;->val$this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView$GestureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$1;->this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    iget-object v0, v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$1;->this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->onScaleImageGestureDoubleTap(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;)Z
    invoke-static {v0, v1, p2}, Lcom/oneplus/gallery2/FilmstripFragment;->access$2600(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;)Z

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
    .line 477
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$1;->this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    iget-object v0, v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$1;->this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->onScaleImageGestureFling(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    invoke-static/range {v0 .. v5}, Lcom/oneplus/gallery2/FilmstripFragment;->access$2700(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onGestureEnd(Lcom/oneplus/widget/ScaleImageView;)V
    .locals 2
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$1;->this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    iget-object v0, v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$1;->this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->onScaleImageGestureEnd(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->access$2400(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;)V

    .line 460
    return-void
.end method

.method public onGestureStart(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$1;->this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    iget-object v0, v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$1;->this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->onScaleImageGestureStart(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;)V
    invoke-static {v0, v1, p2}, Lcom/oneplus/gallery2/FilmstripFragment;->access$2500(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;)V

    .line 466
    return-void
.end method

.method public onScale(Lcom/oneplus/widget/ScaleImageView;FFF)Z
    .locals 2
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "factor"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F

    .prologue
    .line 483
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$1;->this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    iget-object v0, v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$1;->this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->onScaleImageGestureScale(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;FFF)Z
    invoke-static {v0, v1, p2, p3, p4}, Lcom/oneplus/gallery2/FilmstripFragment;->access$2800(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;FFF)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$1;->this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    iget-object v0, v0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    iget-object v1, p0, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem$1;->this$1:Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->onScaleImageGestureSingleTapUp(Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;)Z
    invoke-static {v0, v1, p2}, Lcom/oneplus/gallery2/FilmstripFragment;->access$2900(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
