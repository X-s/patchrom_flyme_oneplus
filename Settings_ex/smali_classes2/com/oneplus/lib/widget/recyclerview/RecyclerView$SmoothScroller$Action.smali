.class public Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final UNDEFINED_DURATION:I = -0x80000000


# instance fields
.field private changed:Z

.field private consecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mJumpToPosition:I


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 9188
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 9187
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .prologue
    .line 9197
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 9196
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v1, 0x0

    .line 9207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9173
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 9177
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9181
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    .line 9208
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 9209
    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 9210
    iput p3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 9211
    iput-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 9207
    return-void
.end method

.method private runIfNecessary(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 7
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    const/4 v6, 0x0

    .line 9238
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v1, :cond_0

    .line 9239
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 9240
    .local v0, "position":I
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 9241
    invoke-static {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->-wrap11(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    .line 9242
    iput-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9243
    return-void

    .line 9245
    .end local v0    # "position":I
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->changed:Z

    if-eqz v1, :cond_4

    .line 9246
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->validate()V

    .line 9247
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_3

    .line 9248
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDuration:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    .line 9249
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->-get14(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDy:I

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    .line 9256
    :goto_0
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    .line 9257
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 9260
    const-string/jumbo v1, "RecyclerView"

    const-string/jumbo v2, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9263
    :cond_1
    iput-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9237
    :goto_1
    return-void

    .line 9251
    :cond_2
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->-get14(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDuration:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    goto :goto_0

    .line 9254
    :cond_3
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->-get14(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 9265
    :cond_4
    iput v6, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    goto :goto_1
.end method

.method private validate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9270
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-ge v0, v1, :cond_0

    .line 9271
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9273
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-ge v0, v1, :cond_1

    .line 9274
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9269
    :cond_1
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 9297
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDuration:I

    return v0
.end method

.method public getDx()I
    .locals 1

    .prologue
    .line 9279
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDx:I

    return v0
.end method

.method public getDy()I
    .locals 1

    .prologue
    .line 9288
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDy:I

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 9306
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method hasJumpTarget()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 9234
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public jumpTo(I)V
    .locals 0
    .param p1, "targetPosition"    # I

    .prologue
    .line 9230
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 9229
    return-void
.end method

.method public setDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 9301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9302
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 9300
    return-void
.end method

.method public setDx(I)V
    .locals 1
    .param p1, "dx"    # I

    .prologue
    .line 9283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9284
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 9282
    return-void
.end method

.method public setDy(I)V
    .locals 1
    .param p1, "dy"    # I

    .prologue
    .line 9292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9293
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 9291
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 9316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9317
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 9315
    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 9329
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 9330
    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 9331
    iput p3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 9332
    iput-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 9333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9328
    return-void
.end method
