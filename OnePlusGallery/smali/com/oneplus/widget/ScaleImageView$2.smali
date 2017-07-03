.class Lcom/oneplus/widget/ScaleImageView$2;
.super Ljava/lang/Object;
.source "ScaleImageView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


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

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/widget/ScaleImageView$2;->this$0:Lcom/oneplus/widget/ScaleImageView;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "consumed":Z
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView$2;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;
    invoke-static {v1}, Lcom/oneplus/widget/ScaleImageView;->access$1(Lcom/oneplus/widget/ScaleImageView;)Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView$2;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;
    invoke-static {v1}, Lcom/oneplus/widget/ScaleImageView;->access$1(Lcom/oneplus/widget/ScaleImageView;)Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView$2;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v1, v2, p1}, Lcom/oneplus/widget/ScaleImageView$GestureCallback;->onDoubleTap(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 279
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView$2;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # invokes: Lcom/oneplus/widget/ScaleImageView;->onGestureDoubleTap(Landroid/view/MotionEvent;)Z
    invoke-static {v1, p1}, Lcom/oneplus/widget/ScaleImageView;->access$2(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "consumed":Z
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView$2;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;
    invoke-static {v1}, Lcom/oneplus/widget/ScaleImageView;->access$1(Lcom/oneplus/widget/ScaleImageView;)Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView$2;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;
    invoke-static {v1}, Lcom/oneplus/widget/ScaleImageView;->access$1(Lcom/oneplus/widget/ScaleImageView;)Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView$2;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v1, v2, p1}, Lcom/oneplus/widget/ScaleImageView$GestureCallback;->onSingleTapUp(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 267
    :cond_0
    return v0
.end method
