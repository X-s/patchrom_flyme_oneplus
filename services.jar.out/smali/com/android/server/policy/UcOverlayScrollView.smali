.class public Lcom/android/server/policy/UcOverlayScrollView;
.super Lcom/android/server/policy/UcPowerScrollView;
.source "UcOverlayScrollView.java"


# static fields
.field private static final DBG:Z = false

.field private static final PHASE_IN_DURATION:I = 0x258

.field private static final PHASE_OUT_DURATION:I = 0x12c

.field private static final POS_BASE_Y:I = 0x3c0

.field private static final POS_EXIT_Y:I = 0x4ce

.field private static final POS_PHASE_IN_Y:I = 0x780

.field private static final POS_SHUTDOWN_Y:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UcOverlayScrollView"


# instance fields
.field private mReadyToPhaseOut:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/UcPowerScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/UcOverlayScrollView;->mReadyToPhaseOut:Z

    .line 21
    return-void
.end method


# virtual methods
.method protected exit()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/android/server/policy/UcOverlayScrollView;->getScrollY()I

    move-result v0

    const/16 v2, 0x780

    if-ge v0, v2, :cond_0

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/UcOverlayScrollView;->mReadyToPhaseOut:Z

    .line 66
    iget-object v0, p0, Lcom/android/server/policy/UcOverlayScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/server/policy/UcOverlayScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/policy/UcOverlayScrollView;->getScrollY()I

    move-result v3

    rsub-int v4, v3, 0x780

    const/16 v5, 0x12c

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 70
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/policy/UcOverlayScrollView;->invalidate()V

    .line 71
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/UcOverlayScrollView;->mScrollListener:Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;

    invoke-interface {v0}, Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;->onScrollToExit()V

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/UcPowerScrollView;->onScrollChanged(IIII)V

    .line 49
    const/16 v0, 0x3c0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/UcOverlayScrollView;->mIsPhaseInDone:Z

    .line 54
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/UcOverlayScrollView;->mReadyToPhaseOut:Z

    if-eqz v0, :cond_1

    .line 55
    const/16 v0, 0x780

    if-ne p2, v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/server/policy/UcOverlayScrollView;->mScrollListener:Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;

    invoke-interface {v0}, Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;->onScrollToExit()V

    .line 59
    :cond_1
    return-void
.end method

.method protected phaseIn()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 26
    iget-object v0, p0, Lcom/android/server/policy/UcOverlayScrollView;->mPhaseInScroller:Landroid/widget/Scroller;

    const/16 v2, 0x780

    const/16 v4, -0x3c0

    const/16 v5, 0x258

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 28
    return-void
.end method

.method protected scrollSync(IIII)V
    .locals 4
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    const/16 v2, 0x6f9

    .line 34
    if-le p2, v2, :cond_1

    .line 35
    add-int/lit16 v0, p2, -0x6f9

    .line 36
    .local v0, "deltaY":I
    const/high16 v1, 0x3f800000    # 1.0f

    .line 37
    .local v1, "scale":F
    iget-object v2, p0, Lcom/android/server/policy/UcOverlayScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    int-to-float v3, v0

    mul-float/2addr v3, v1

    float-to-int v3, v3

    add-int/lit16 v3, v3, 0x3c0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/UcOverlayScrollView;->scrollTo(II)V

    .line 45
    .end local v0    # "deltaY":I
    .end local v1    # "scale":F
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    if-gt p2, v2, :cond_0

    const/16 v2, 0x3c0

    if-le p2, v2, :cond_0

    .line 39
    add-int/lit16 v0, p2, -0x6f9

    .line 40
    .restart local v0    # "deltaY":I
    const v1, 0x3f94f209

    .line 41
    .restart local v1    # "scale":F
    iget-object v2, p0, Lcom/android/server/policy/UcOverlayScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    int-to-float v3, v0

    mul-float/2addr v3, v1

    float-to-int v3, v3

    add-int/lit16 v3, v3, 0x3c0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/UcOverlayScrollView;->scrollTo(II)V

    goto :goto_0
.end method
