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
    .line 138
    iput-object p1, p0, Lcom/oneplus/widget/ScaleImageView$2;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "consumed":Z
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView$2;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;
    invoke-static {v1}, Lcom/oneplus/widget/ScaleImageView;->access$200(Lcom/oneplus/widget/ScaleImageView;)Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView$2;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;
    invoke-static {v1}, Lcom/oneplus/widget/ScaleImageView;->access$200(Lcom/oneplus/widget/ScaleImageView;)Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView$2;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v1, v2, p1}, Lcom/oneplus/widget/ScaleImageView$GestureCallback;->onDoubleTap(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 159
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView$2;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # invokes: Lcom/oneplus/widget/ScaleImageView;->onGestureDoubleTap(Landroid/view/MotionEvent;)Z
    invoke-static {v1, p1}, Lcom/oneplus/widget/ScaleImageView;->access$300(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 142
    # getter for: Lcom/oneplus/widget/ScaleImageView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/widget/ScaleImageView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onSingleTapConfirmed()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "consumed":Z
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView$2;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;
    invoke-static {v1}, Lcom/oneplus/widget/ScaleImageView;->access$200(Lcom/oneplus/widget/ScaleImageView;)Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView$2;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;
    invoke-static {v1}, Lcom/oneplus/widget/ScaleImageView;->access$200(Lcom/oneplus/widget/ScaleImageView;)Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView$2;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v1, v2, p1}, Lcom/oneplus/widget/ScaleImageView$GestureCallback;->onSingleTapUp(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 147
    :cond_0
    return v0
.end method
