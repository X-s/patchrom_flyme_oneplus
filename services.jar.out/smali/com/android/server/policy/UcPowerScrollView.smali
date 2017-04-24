.class public abstract Lcom/android/server/policy/UcPowerScrollView;
.super Landroid/widget/ScrollView;
.source "UcPowerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;
    }
.end annotation


# static fields
.field static final INTERPOLATOR_TYPE:I = 0x2


# instance fields
.field final INTERPOLATOR_FACTOR:F

.field final PHASEIN_INTERPOLATOR_FACTOR:F

.field mContext:Landroid/content/Context;

.field mIsPhaseInDone:Z

.field mPhaseInScroller:Landroid/widget/Scroller;

.field mScrollListener:Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;

.field mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/UcPowerScrollView;->mIsPhaseInDone:Z

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/UcPowerScrollView;->mScrollListener:Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;

    .line 17
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/android/server/policy/UcPowerScrollView;->INTERPOLATOR_FACTOR:F

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/policy/UcPowerScrollView;->PHASEIN_INTERPOLATOR_FACTOR:F

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/UcPowerScrollView;->mIsPhaseInDone:Z

    .line 16
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/policy/UcPowerScrollView;->mScrollListener:Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;

    .line 17
    iput v3, p0, Lcom/android/server/policy/UcPowerScrollView;->INTERPOLATOR_FACTOR:F

    .line 18
    iput v4, p0, Lcom/android/server/policy/UcPowerScrollView;->PHASEIN_INTERPOLATOR_FACTOR:F

    .line 28
    iput-object p1, p0, Lcom/android/server/policy/UcPowerScrollView;->mContext:Landroid/content/Context;

    .line 31
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 32
    .local v1, "polator":Landroid/view/animation/Interpolator;
    new-instance v2, Landroid/widget/Scroller;

    iget-object v3, p0, Lcom/android/server/policy/UcPowerScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/android/server/policy/UcPowerScrollView;->mScroller:Landroid/widget/Scroller;

    .line 35
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 36
    .local v0, "phaseInPolator":Landroid/view/animation/Interpolator;
    new-instance v2, Landroid/widget/Scroller;

    iget-object v3, p0, Lcom/android/server/policy/UcPowerScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/android/server/policy/UcPowerScrollView;->mPhaseInScroller:Landroid/widget/Scroller;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/UcPowerScrollView;->mIsPhaseInDone:Z

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/UcPowerScrollView;->mScrollListener:Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;

    .line 17
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/android/server/policy/UcPowerScrollView;->INTERPOLATOR_FACTOR:F

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/policy/UcPowerScrollView;->PHASEIN_INTERPOLATOR_FACTOR:F

    .line 41
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/policy/UcPowerScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/server/policy/UcPowerScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/UcPowerScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/UcPowerScrollView;->scrollTo(II)V

    .line 51
    invoke-virtual {p0}, Lcom/android/server/policy/UcPowerScrollView;->postInvalidate()V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/UcPowerScrollView;->mPhaseInScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/android/server/policy/UcPowerScrollView;->mPhaseInScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/UcPowerScrollView;->mPhaseInScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/UcPowerScrollView;->scrollTo(II)V

    .line 55
    invoke-virtual {p0}, Lcom/android/server/policy/UcPowerScrollView;->postInvalidate()V

    .line 57
    :cond_1
    invoke-super {p0}, Landroid/widget/ScrollView;->computeScroll()V

    .line 58
    return-void
.end method

.method protected isPhaseInFinished()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/server/policy/UcPowerScrollView;->mIsPhaseInDone:Z

    return v0
.end method

.method protected abstract phaseIn()V
.end method

.method protected abstract scrollSync(IIII)V
.end method

.method protected setScrollCallBack(Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    iput-object p1, p0, Lcom/android/server/policy/UcPowerScrollView;->mScrollListener:Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;

    .line 64
    :cond_0
    return-void
.end method
