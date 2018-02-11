.class public abstract Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;
    }
.end annotation


# instance fields
.field private mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

.field private final mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

.field private mRunning:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->onAnimation(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8933
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 8948
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    invoke-direct {v0, v1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    .line 8947
    return-void
.end method

.method private onAnimation(II)V
    .locals 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v4, 0x0

    .line 9042
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 9043
    .local v1, "recyclerView":Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 9044
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->stop()V

    .line 9046
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 9047
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 9049
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetPosition:I

    if-ne v2, v3, :cond_5

    .line 9050
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    iget-object v3, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->onTargetFound(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;)V

    .line 9051
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    invoke-static {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->-wrap0(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 9052
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->stop()V

    .line 9058
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_3

    .line 9059
    iget-object v2, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->onSeekTargetStep(IILcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;)V

    .line 9060
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->hasJumpTarget()Z

    move-result v0

    .line 9061
    .local v0, "hadJumpTarget":Z
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    invoke-static {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->-wrap0(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    .line 9062
    if-eqz v0, :cond_3

    .line 9064
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_6

    .line 9065
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 9066
    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->-get14(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 9041
    .end local v0    # "hadJumpTarget":Z
    :cond_3
    :goto_2
    return-void

    .line 9043
    :cond_4
    if-nez v1, :cond_1

    goto :goto_0

    .line 9054
    :cond_5
    const-string/jumbo v2, "RecyclerView"

    const-string/jumbo v3, "Passed over target position while smooth scrolling."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9055
    iput-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    goto :goto_1

    .line 9068
    .restart local v0    # "hadJumpTarget":Z
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->stop()V

    goto :goto_2
.end method


# virtual methods
.method public findViewByPosition(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 9092
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->-get9(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 9085
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->-get9(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 9078
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    .locals 1

    .prologue
    .line 8986
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getTargetPosition()I
    .locals 1

    .prologue
    .line 9038
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetPosition:I

    return v0
.end method

.method public instantScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 9101
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->scrollToPosition(I)V

    .line 9100
    return-void
.end method

.method public isPendingInitialRun()Z
    .locals 1

    .prologue
    .line 9020
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 9028
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRunning:Z

    return v0
.end method

.method protected normalize(Landroid/graphics/PointF;)V
    .locals 5
    .param p1, "scrollVector"    # Landroid/graphics/PointF;

    .prologue
    .line 9118
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->y:F

    .line 9119
    iget v4, p1, Landroid/graphics/PointF;->y:F

    .line 9118
    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 9120
    .local v0, "magnitute":D
    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 9121
    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 9117
    return-void
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 9105
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 9106
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 9104
    :cond_0
    return-void
.end method

.method protected abstract onSeekTargetStep(IILcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onTargetFound(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;)V
.end method

.method public setTargetPosition(I)V
    .locals 0
    .param p1, "targetPosition"    # I

    .prologue
    .line 8978
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 8977
    return-void
.end method

.method start(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V
    .locals 3
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "layoutManager"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    .prologue
    const/4 v2, 0x1

    .line 8964
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 8965
    iput-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    .line 8966
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 8967
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid target position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8969
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetPosition:I

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->-set6(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    .line 8970
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRunning:Z

    .line 8971
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 8972
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 8973
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->onStart()V

    .line 8974
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->-get14(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 8963
    return-void
.end method

.method protected final stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 8996
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRunning:Z

    if-nez v0, :cond_0

    .line 8997
    return-void

    .line 8999
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->onStop()V

    .line 9000
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->-set6(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    .line 9001
    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 9002
    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 9003
    iput-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 9004
    iput-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRunning:Z

    .line 9006
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-static {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->-wrap0(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;)V

    .line 9008
    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    .line 9009
    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 8995
    return-void
.end method
