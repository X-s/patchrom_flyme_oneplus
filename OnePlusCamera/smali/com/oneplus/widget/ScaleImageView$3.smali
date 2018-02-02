.class Lcom/oneplus/widget/ScaleImageView$3;
.super Ljava/lang/Object;
.source "ScaleImageView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/ScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/widget/ScaleImageView;


# direct methods
.method constructor <init>(Lcom/oneplus/widget/ScaleImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/oneplus/widget/ScaleImageView$3;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 363
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$3;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/oneplus/widget/ScaleImageView;->-wrap3(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$3;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {v0}, Lcom/oneplus/widget/ScaleImageView;->-get0(Lcom/oneplus/widget/ScaleImageView;)Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$3;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {v0}, Lcom/oneplus/widget/ScaleImageView;->-get0(Lcom/oneplus/widget/ScaleImageView;)Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView$3;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/widget/ScaleImageView$GestureCallback;->onLongPress(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)Z

    .line 354
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 350
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView$3;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/oneplus/widget/ScaleImageView;->-wrap5(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 336
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 343
    const/4 v0, 0x0

    return v0
.end method
