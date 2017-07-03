.class public Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;
.super Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;
.source "EditView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/widget/EditView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EditOnGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;


# direct methods
.method protected constructor <init>(Lcom/oneplus/screenshot/longshot/widget/EditView;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;-><init>(Lcom/oneplus/screenshot/longshot/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method protected getTouchMode(Landroid/view/MotionEvent;)I
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    # invokes: Lcom/oneplus/screenshot/longshot/widget/EditView;->hitDrag(II)Z
    invoke-static {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/widget/EditView;->access$300(Lcom/oneplus/screenshot/longshot/widget/EditView;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x3

    .line 158
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;->getTouchMode(Landroid/view/MotionEvent;)I

    move-result v0

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;

    iget v0, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mTouchMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v0, 0x1

    .line 132
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;

    iget v1, v1, Lcom/oneplus/screenshot/longshot/widget/EditView;->mTouchMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 133
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;

    # getter for: Lcom/oneplus/screenshot/longshot/widget/EditView;->mParent:Landroid/view/ViewParent;
    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/widget/EditView;->access$000(Lcom/oneplus/screenshot/longshot/widget/EditView;)Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 135
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;

    float-to-int v2, p4

    mul-int/lit8 v2, v2, -0x1

    # invokes: Lcom/oneplus/screenshot/longshot/widget/EditView;->trackMotionDrag(I)V
    invoke-static {v1, v2}, Lcom/oneplus/screenshot/longshot/widget/EditView;->access$100(Lcom/oneplus/screenshot/longshot/widget/EditView;I)V

    .line 136
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;

    iget-boolean v1, v1, Lcom/oneplus/screenshot/longshot/widget/EditView;->mIsFirstScroll:Z

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/oneplus/screenshot/longshot/widget/EditView;->mIsFirstScroll:Z

    .line 138
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;

    # getter for: Lcom/oneplus/screenshot/longshot/widget/EditView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/widget/EditView;->access$200(Lcom/oneplus/screenshot/longshot/widget/EditView;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;->DRAG_EDIT:Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    invoke-static {v1, v2}, Lcom/oneplus/screenshot/statistics/EventStatistics;->addAction(Landroid/content/Context;Lcom/oneplus/screenshot/statistics/EventStatistics$Action;)V

    .line 142
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method
