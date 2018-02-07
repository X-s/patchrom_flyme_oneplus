.class public final Lcom/android/settings_ex/widget/SlidingTabLayout;
.super Landroid/widget/FrameLayout;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/widget/SlidingTabLayout$InternalViewPagerListener;
    }
.end annotation


# instance fields
.field private final mIndicatorView:Landroid/view/View;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSelectedPosition:I

.field private mSelectionOffset:F

.field private final mTitleView:Landroid/widget/LinearLayout;

.field private mViewPager:Lcom/android/settings_ex/widget/RtlCompatibleViewPager;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/widget/SlidingTabLayout;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/widget/SlidingTabLayout;)Lcom/android/settings_ex/widget/RtlCompatibleViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mViewPager:Lcom/android/settings_ex/widget/RtlCompatibleViewPager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/widget/SlidingTabLayout;IF)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/widget/SlidingTabLayout;->onViewPagerPageChanged(IF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 48
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04019e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings_ex/widget/SlidingTabLayout;->addView(Landroid/view/View;II)V

    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/widget/SlidingTabLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    return-void
.end method

.method private getIndicatorLeft()I
    .locals 6

    .prologue
    .line 142
    iget-object v3, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mSelectedPosition:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 143
    .local v2, "selectedTitle":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 144
    .local v0, "left":I
    iget v3, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mSelectionOffset:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SlidingTabLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 145
    iget-object v3, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mSelectedPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 146
    .local v1, "nextTitle":Landroid/view/View;
    iget v3, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mSelectionOffset:F

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    .line 147
    iget v4, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mSelectionOffset:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    int-to-float v5, v0

    mul-float/2addr v4, v5

    .line 146
    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 149
    .end local v1    # "nextTitle":Landroid/view/View;
    :cond_0
    return v0
.end method

.method private isRtlMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 153
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SlidingTabLayout;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onViewPagerPageChanged(IF)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 119
    iput p1, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mSelectedPosition:I

    .line 120
    iput p2, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mSelectionOffset:F

    .line 122
    invoke-direct {p0}, Lcom/android/settings_ex/widget/SlidingTabLayout;->isRtlMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/widget/SlidingTabLayout;->getIndicatorLeft()I

    move-result v1

    neg-int v0, v1

    .line 123
    .local v0, "leftIndicator":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 118
    return-void

    .line 122
    .end local v0    # "leftIndicator":I
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/widget/SlidingTabLayout;->getIndicatorLeft()I

    move-result v0

    .restart local v0    # "leftIndicator":I
    goto :goto_0
.end method

.method private populateTabStrip()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 127
    iget-object v3, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mViewPager:Lcom/android/settings_ex/widget/RtlCompatibleViewPager;

    invoke-virtual {v3}, Lcom/android/settings_ex/widget/RtlCompatibleViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 129
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 130
    iget-object v3, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 131
    iget-object v5, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    const v6, 0x7f04019f

    .line 130
    invoke-virtual {v3, v6, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 133
    .local v2, "tabTitleView":Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v3, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    iget-object v3, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mViewPager:Lcom/android/settings_ex/widget/RtlCompatibleViewPager;

    invoke-virtual {v3}, Lcom/android/settings_ex/widget/RtlCompatibleViewPager;->getCurrentItem()I

    move-result v3

    if-ne v1, v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    .line 137
    goto :goto_1

    .line 126
    .end local v2    # "tabTitleView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v2, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 110
    .local v1, "titleCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 111
    iget-object v2, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mViewPager:Lcom/android/settings_ex/widget/RtlCompatibleViewPager;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/widget/RtlCompatibleViewPager;->setCurrentItem(I)V

    .line 113
    return-void

    .line 110
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v9, 0x0

    .line 85
    iget-object v6, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SlidingTabLayout;->getMeasuredHeight()I

    move-result v0

    .line 87
    .local v0, "indicatorBottom":I
    iget-object v6, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 88
    .local v1, "indicatorHeight":I
    iget-object v6, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 89
    .local v2, "indicatorWidth":I
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SlidingTabLayout;->getMeasuredWidth()I

    move-result v5

    .line 90
    .local v5, "totalWidth":I
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SlidingTabLayout;->getPaddingLeft()I

    move-result v3

    .line 91
    .local v3, "leftPadding":I
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SlidingTabLayout;->getPaddingRight()I

    move-result v4

    .line 93
    .local v4, "rightPadding":I
    iget-object v6, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v4

    .line 94
    iget-object v8, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v8

    .line 93
    invoke-virtual {v6, v3, v9, v7, v8}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 96
    invoke-direct {p0}, Lcom/android/settings_ex/widget/SlidingTabLayout;->isRtlMode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 97
    iget-object v6, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    sub-int v7, v5, v2

    .line 98
    sub-int v8, v0, v1

    .line 97
    invoke-virtual {v6, v7, v8, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 84
    .end local v0    # "indicatorBottom":I
    .end local v1    # "indicatorHeight":I
    .end local v2    # "indicatorWidth":I
    .end local v3    # "leftPadding":I
    .end local v4    # "rightPadding":I
    .end local v5    # "totalWidth":I
    :cond_0
    :goto_0
    return-void

    .line 101
    .restart local v0    # "indicatorBottom":I
    .restart local v1    # "indicatorHeight":I
    .restart local v2    # "indicatorWidth":I
    .restart local v3    # "leftPadding":I
    .restart local v4    # "rightPadding":I
    .restart local v5    # "totalWidth":I
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    sub-int v7, v0, v1

    invoke-virtual {v6, v9, v7, v2, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 72
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 73
    iget-object v3, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 74
    .local v1, "titleCount":I
    if-lez v1, :cond_0

    .line 76
    iget-object v3, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    div-int/2addr v3, v1

    .line 75
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 78
    .local v2, "width":I
    iget-object v3, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 77
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 79
    .local v0, "height":I
    iget-object v3, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    invoke-virtual {v3, v2, v0}, Landroid/view/View;->measure(II)V

    .line 71
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_0
    return-void
.end method

.method public setViewPager(Lcom/android/settings_ex/widget/RtlCompatibleViewPager;)V
    .locals 2
    .param p1, "viewPager"    # Lcom/android/settings_ex/widget/RtlCompatibleViewPager;

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 63
    iput-object p1, p0, Lcom/android/settings_ex/widget/SlidingTabLayout;->mViewPager:Lcom/android/settings_ex/widget/RtlCompatibleViewPager;

    .line 64
    if-eqz p1, :cond_0

    .line 65
    new-instance v0, Lcom/android/settings_ex/widget/SlidingTabLayout$InternalViewPagerListener;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/widget/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/android/settings_ex/widget/SlidingTabLayout;Lcom/android/settings_ex/widget/SlidingTabLayout$InternalViewPagerListener;)V

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/widget/RtlCompatibleViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/widget/SlidingTabLayout;->populateTabStrip()V

    .line 60
    :cond_0
    return-void
.end method
