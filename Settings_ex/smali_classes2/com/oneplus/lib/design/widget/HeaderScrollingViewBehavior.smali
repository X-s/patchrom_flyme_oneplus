.class abstract Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;
.super Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;
.source "HeaderScrollingViewBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/design/widget/ViewOffsetBehavior",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private mOverlayTop:I

.field final mTempRect1:Landroid/graphics/Rect;

.field final mTempRect2:Landroid/graphics/Rect;

.field private mVerticalLayoutGap:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mTempRect2:Landroid/graphics/Rect;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mTempRect2:Landroid/graphics/Rect;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    .line 48
    return-void
.end method

.method private static resolveGravity(I)I
    .locals 0
    .param p0, "gravity"    # I

    .prologue
    .line 152
    if-nez p0, :cond_0

    const p0, 0x800033

    .end local p0    # "gravity":I
    :cond_0
    return p0
.end method


# virtual methods
.method abstract findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method final getOverlapPixelsForOffset(Landroid/view/View;)I
    .locals 3
    .param p1, "header"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 147
    iget v1, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mOverlayTop:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    .line 148
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->getOverlapRatioForOffset(Landroid/view/View;)F

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mOverlayTop:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mOverlayTop:I

    .line 147
    invoke-static {v1, v0, v2}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v0

    goto :goto_0
.end method

.method getOverlapRatioForOffset(Landroid/view/View;)F
    .locals 1
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 143
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final getOverlayTop()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mOverlayTop:I

    return v0
.end method

.method getScrollRange(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method final getVerticalLayoutGap()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    return v0
.end method

.method protected layoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 12
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "layoutDirection"    # I

    .prologue
    .line 104
    invoke-virtual {p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v6

    .line 105
    .local v6, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0, v6}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    move-result-object v7

    .line 107
    .local v7, "header":Landroid/view/View;
    if-eqz v7, :cond_2

    .line 109
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 110
    .local v8, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 111
    .local v3, "available":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v0

    iget v1, v8, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    .line 112
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, v8, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    .line 113
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    iget v5, v8, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v5

    .line 114
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v5, v11

    .line 115
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v11

    .line 114
    sub-int/2addr v5, v11

    .line 115
    iget v11, v8, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    .line 114
    sub-int/2addr v5, v11

    .line 111
    invoke-virtual {v3, v0, v1, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 117
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getLastWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v10

    .line 118
    .local v10, "parentInsets":Landroid/support/v4/view/WindowInsetsCompat;
    if-eqz v10, :cond_0

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mTempRect2:Landroid/graphics/Rect;

    .line 128
    .local v4, "out":Landroid/graphics/Rect;
    iget v0, v8, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v0}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->resolveGravity(I)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 129
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move v5, p3

    .line 128
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 131
    invoke-virtual {p0, v7}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    move-result v9

    .line 133
    .local v9, "overlap":I
    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v9

    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v9

    invoke-virtual {p2, v0, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 134
    iget v0, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    .line 103
    .end local v3    # "available":Landroid/graphics/Rect;
    .end local v4    # "out":Landroid/graphics/Rect;
    .end local v8    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v9    # "overlap":I
    .end local v10    # "parentInsets":Landroid/support/v4/view/WindowInsetsCompat;
    :goto_1
    return-void

    .line 123
    .restart local v3    # "available":Landroid/graphics/Rect;
    .restart local v8    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .restart local v10    # "parentInsets":Landroid/support/v4/view/WindowInsetsCompat;
    :cond_1
    iget v0, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v10}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 124
    iget v0, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v10}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 137
    .end local v3    # "available":Landroid/graphics/Rect;
    .end local v8    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v10    # "parentInsets":Landroid/support/v4/view/WindowInsetsCompat;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->layoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    goto :goto_1
.end method

.method public onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 11
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "parentWidthMeasureSpec"    # I
    .param p4, "widthUsed"    # I
    .param p5, "parentHeightMeasureSpec"    # I
    .param p6, "heightUsed"    # I

    .prologue
    .line 56
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 57
    .local v7, "childLpHeight":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    .line 58
    const/4 v0, -0x2

    if-ne v7, v0, :cond_5

    .line 62
    :cond_0
    invoke-virtual {p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v8

    .line 63
    .local v8, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0, v8}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    move-result-object v9

    .line 64
    .local v9, "header":Landroid/view/View;
    if-eqz v9, :cond_5

    .line 65
    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 79
    .local v6, "availableHeight":I
    if-nez v6, :cond_2

    .line 81
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v6

    .line 84
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v6, v0

    .line 85
    invoke-virtual {p0, v9}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    move-result v1

    .line 84
    add-int v10, v0, v1

    .line 87
    .local v10, "height":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_4

    .line 88
    const/high16 v0, 0x40000000    # 2.0f

    .line 86
    :goto_0
    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .local v4, "heightMeasureSpec":I
    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v5, p6

    .line 92
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 95
    const/4 v0, 0x1

    return v0

    .line 69
    .end local v4    # "heightMeasureSpec":I
    .end local v6    # "availableHeight":I
    .end local v10    # "height":I
    :cond_3
    const/4 v0, 0x1

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 71
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 74
    const/4 v0, 0x1

    return v0

    .line 89
    .restart local v6    # "availableHeight":I
    .restart local v10    # "height":I
    :cond_4
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 98
    .end local v6    # "availableHeight":I
    .end local v8    # "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v9    # "header":Landroid/view/View;
    .end local v10    # "height":I
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public final setOverlayTop(I)V
    .locals 0
    .param p1, "overlayTop"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mOverlayTop:I

    .line 173
    return-void
.end method
