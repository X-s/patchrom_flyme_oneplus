.class public Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;
.super Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollingViewBehavior"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1373
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1376
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1379
    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OpScrollingViewBehavior_Layout:[I

    .line 1378
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1381
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpScrollingViewBehavior_Layout_op_behavior_overlapTop:I

    const/4 v2, 0x0

    .line 1380
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;->setOverlayTop(I)V

    .line 1382
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1375
    return-void
.end method

.method private static getAppBarLayoutOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;)I
    .locals 2
    .param p0, "abl"    # Lcom/oneplus/lib/design/widget/AppBarLayout;

    .prologue
    .line 1457
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1458
    .local v0, "behavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    instance-of v1, v0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;

    if-eqz v1, :cond_0

    .line 1459
    check-cast v0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;

    .end local v0    # "behavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v1

    return v1

    .line 1461
    .restart local v0    # "behavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private offsetChildAsNeeded(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 1421
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 1422
    .local v1, "behavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    instance-of v2, v1, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1425
    check-cast v0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;

    .line 1426
    .local v0, "ablBehavior":Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1427
    invoke-static {v0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->-get0(Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;)I

    move-result v3

    .line 1426
    add-int/2addr v2, v3

    .line 1428
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;->getVerticalLayoutGap()I

    move-result v3

    .line 1426
    add-int/2addr v2, v3

    .line 1429
    invoke-virtual {p0, p3}, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    move-result v3

    .line 1426
    sub-int/2addr v2, v3

    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1419
    .end local v0    # "ablBehavior":Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;
    :cond_0
    return-void
.end method


# virtual methods
.method bridge synthetic findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .locals 1
    .param p1, "views"    # Ljava/util/List;

    .prologue
    .line 1465
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Lcom/oneplus/lib/design/widget/AppBarLayout;

    move-result-object v0

    return-object v0
.end method

.method findFirstDependency(Ljava/util/List;)Lcom/oneplus/lib/design/widget/AppBarLayout;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/oneplus/lib/design/widget/AppBarLayout;"
        }
    .end annotation

    .prologue
    .line 1466
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1467
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1468
    .local v1, "view":Landroid/view/View;
    instance-of v3, v1, Lcom/oneplus/lib/design/widget/AppBarLayout;

    if-eqz v3, :cond_0

    .line 1469
    check-cast v1, Lcom/oneplus/lib/design/widget/AppBarLayout;

    .end local v1    # "view":Landroid/view/View;
    return-object v1

    .line 1466
    .restart local v1    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1472
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->getLeftAndRightOffset()I

    move-result v0

    return v0
.end method

.method getOverlapRatioForOffset(Landroid/view/View;)F
    .locals 7
    .param p1, "header"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 1435
    instance-of v5, p1, Lcom/oneplus/lib/design/widget/AppBarLayout;

    if-eqz v5, :cond_1

    move-object v0, p1

    .line 1436
    check-cast v0, Lcom/oneplus/lib/design/widget/AppBarLayout;

    .line 1437
    .local v0, "abl":Lcom/oneplus/lib/design/widget/AppBarLayout;
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v4

    .line 1438
    .local v4, "totalScrollRange":I
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v3

    .line 1439
    .local v3, "preScrollDown":I
    invoke-static {v0}, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;->getAppBarLayoutOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;)I

    move-result v2

    .line 1441
    .local v2, "offset":I
    if-eqz v3, :cond_0

    add-int v5, v4, v2

    if-gt v5, v3, :cond_0

    .line 1443
    return v6

    .line 1445
    :cond_0
    sub-int v1, v4, v3

    .line 1446
    .local v1, "availScrollRange":I
    if-eqz v1, :cond_1

    .line 1448
    int-to-float v5, v2

    int-to-float v6, v1

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    return v5

    .line 1452
    .end local v0    # "abl":Lcom/oneplus/lib/design/widget/AppBarLayout;
    .end local v1    # "availScrollRange":I
    .end local v2    # "offset":I
    .end local v3    # "preScrollDown":I
    .end local v4    # "totalScrollRange":I
    :cond_1
    return v6
.end method

.method getScrollRange(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1477
    instance-of v0, p1, Lcom/oneplus/lib/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    .line 1478
    check-cast p1, Lcom/oneplus/lib/design/widget/AppBarLayout;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0

    .line 1480
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method public layoutDependsOn(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 1388
    instance-of v0, p3, Lcom/oneplus/lib/design/widget/AppBarLayout;

    return v0
.end method

.method public onDependentViewChanged(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 1394
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;->offsetChildAsNeeded(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1395
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "layoutDirection"    # I

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 1
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "parentWidthMeasureSpec"    # I
    .param p4, "widthUsed"    # I
    .param p5, "parentHeightMeasureSpec"    # I
    .param p6, "heightUsed"    # I

    .prologue
    invoke-super/range {p0 .. p6}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v0

    return v0
.end method

.method public onRequestChildRectangleOnScreen(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "rectangle"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1401
    invoke-virtual {p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Lcom/oneplus/lib/design/widget/AppBarLayout;

    move-result-object v0

    .line 1402
    .local v0, "header":Lcom/oneplus/lib/design/widget/AppBarLayout;
    if-eqz v0, :cond_1

    .line 1404
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p3, v2, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1406
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 1407
    .local v1, "parentRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    invoke-virtual {v1, v3, v3, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1409
    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1412
    if-eqz p4, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v0, v3, v2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->setExpanded(ZZ)V

    .line 1413
    return v4

    :cond_0
    move v2, v4

    .line 1412
    goto :goto_0

    .line 1416
    .end local v1    # "parentRect":Landroid/graphics/Rect;
    :cond_1
    return v3
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->setLeftAndRightOffset(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->setTopAndBottomOffset(I)Z

    move-result v0

    return v0
.end method
