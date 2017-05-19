.class public Lcom/android/server/policy/UcScreenshotScrollView;
.super Lcom/android/server/policy/UcPowerScrollView;
.source "UcScreenshotScrollView.java"


# static fields
.field private static final ALPHA_BASE_Y:F = 0.4f

.field private static final ALPHA_EXIT_Y:F = 1.0f

.field private static final ALPHA_SHUTDOWN_Y:F = 0.0f

.field private static final DBG:Z = false

.field public static final PHASE_IN_DELAY:I = 0x64

.field private static final PHASE_IN_DURATION:I = 0x1f4

.field private static final POS_BASE_Y:I = 0x9c

.field private static final POS_EXIT_Y:I = 0xd8

.field private static final POS_SHUTDOWN_Y:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UcScreenshotScrollView"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/UcPowerScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/android/server/policy/UcPowerScrollView;->onFinishInflate()V

    .line 32
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 5
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/UcPowerScrollView;->onScrollChanged(IIII)V

    .line 66
    const/16 v2, 0x9c

    if-ne p2, v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/UcScreenshotScrollView;->mIsPhaseInDone:Z

    .line 67
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/policy/UcScreenshotScrollView;->mIsPhaseInDone:Z

    if-nez v2, :cond_1

    .line 68
    add-int/lit16 v1, p2, -0x9c

    .line 69
    .local v1, "deltaY":I
    const v0, 0x3c23d70b    # 0.010000001f

    .line 70
    .local v0, "alphaScale":F
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    int-to-float v4, v1

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/server/policy/UcScreenshotScrollView;->setAlpha(F)V

    .line 73
    .end local v0    # "alphaScale":F
    .end local v1    # "deltaY":I
    :cond_1
    return-void
.end method

.method protected phaseIn()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 36
    iget-object v0, p0, Lcom/android/server/policy/UcScreenshotScrollView;->mPhaseInScroller:Landroid/widget/Scroller;

    const/16 v2, 0xd8

    const/16 v4, -0x3c

    const/16 v5, 0x1f4

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 38
    return-void
.end method

.method protected scrollSync(IIII)V
    .locals 7
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    const/16 v3, 0x6f9

    const v6, 0x3ecccccd    # 0.4f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 42
    if-le p2, v3, :cond_0

    .line 43
    add-int/lit16 v1, p2, -0x6f9

    .line 44
    .local v1, "deltaY":I
    const v2, 0x3e638e39

    .line 45
    .local v2, "posScale":F
    iget-object v3, p0, Lcom/android/server/policy/UcScreenshotScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    int-to-float v4, v1

    mul-float/2addr v4, v2

    float-to-int v4, v4

    add-int/lit16 v4, v4, 0x9c

    invoke-virtual {p0, v3, v4}, Lcom/android/server/policy/UcScreenshotScrollView;->scrollTo(II)V

    .line 48
    const v0, 0x3b11a2b4

    .line 49
    .local v0, "alphaScale":F
    int-to-float v3, v1

    mul-float/2addr v3, v0

    add-float/2addr v3, v6

    sub-float v3, v5, v3

    invoke-virtual {p0, v3}, Lcom/android/server/policy/UcScreenshotScrollView;->setAlpha(F)V

    .line 62
    .end local v0    # "alphaScale":F
    .end local v1    # "deltaY":I
    .end local v2    # "posScale":F
    :goto_0
    return-void

    .line 50
    :cond_0
    if-gt p2, v3, :cond_1

    const/16 v3, 0x3c0

    if-le p2, v3, :cond_1

    .line 51
    add-int/lit16 v1, p2, -0x6f9

    .line 52
    .restart local v1    # "deltaY":I
    const v2, 0x3e41a10c

    .line 53
    .restart local v2    # "posScale":F
    iget-object v3, p0, Lcom/android/server/policy/UcScreenshotScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    int-to-float v4, v1

    mul-float/2addr v4, v2

    float-to-int v4, v4

    add-int/lit16 v4, v4, 0x9c

    invoke-virtual {p0, v3, v4}, Lcom/android/server/policy/UcScreenshotScrollView;->scrollTo(II)V

    .line 56
    const v0, 0x39fe3343

    .line 57
    .restart local v0    # "alphaScale":F
    int-to-float v3, v1

    mul-float/2addr v3, v0

    add-float/2addr v3, v6

    sub-float v3, v5, v3

    invoke-virtual {p0, v3}, Lcom/android/server/policy/UcScreenshotScrollView;->setAlpha(F)V

    goto :goto_0

    .line 59
    .end local v0    # "alphaScale":F
    .end local v1    # "deltaY":I
    .end local v2    # "posScale":F
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/UcScreenshotScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/policy/UcScreenshotScrollView;->scrollTo(II)V

    .line 60
    invoke-virtual {p0, v5}, Lcom/android/server/policy/UcScreenshotScrollView;->setAlpha(F)V

    goto :goto_0
.end method
