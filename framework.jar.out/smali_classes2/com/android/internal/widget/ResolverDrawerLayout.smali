.class public Lcom/android/internal/widget/ResolverDrawerLayout;
.super Landroid/view/ViewGroup;
.source "ResolverDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;,
        Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;,
        Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;,
        Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResolverDrawerLayout"


# instance fields
.field private mActivePointerId:I

.field private mCollapseOffset:F

.field private mCollapsibleHeight:I

.field private mCollapsibleHeightReserved:I

.field private mDismissOnScrollerFinished:Z

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mIsDragging:Z

.field private mLastTouchY:F

.field private mMaxCollapsedHeight:I

.field private mMaxCollapsedHeightSmall:I

.field private mMaxWidth:I

.field private final mMinFlingVelocity:F

.field private mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

.field private mOpenOnClick:Z

.field private mOpenOnLayout:Z

.field private mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

.field private final mScroller:Landroid/widget/OverScroller;

.field private mSmallCollapsed:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopOffset:I

.field private final mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

.field private final mTouchSlop:I

.field private mUncollapsibleHeight:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 97
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    .line 99
    new-instance v2, Lcom/android/internal/widget/ResolverDrawerLayout$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/ResolverDrawerLayout$1;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 120
    sget-object v2, Lcom/android/internal/R$styleable;->ResolverDrawerLayout:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    .line 123
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    .line 125
    const/4 v2, 0x2

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeightSmall:I

    .line 128
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    new-instance v2, Landroid/widget/OverScroller;

    const v3, 0x10c0005

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    .line 132
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 134
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 135
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    .line 136
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    .line 138
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->setImportantForAccessibility(I)V

    .line 139
    return-void
.end method

.method private abortAnimation()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    .line 424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    .line 425
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ResolverDrawerLayout;Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ResolverDrawerLayout;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ResolverDrawerLayout;IF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/ResolverDrawerLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 493
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 494
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 495
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private findChildUnder(FF)Landroid/view/View;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 503
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;
    .locals 4
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 507
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 508
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 509
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 510
    .local v0, "child":Landroid/view/View;
    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->isChildUnder(Landroid/view/View;FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 514
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 508
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 514
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findListChildUnder(FF)Landroid/view/View;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 518
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 519
    .local v0, "v":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    sub-float/2addr p1, v1

    .line 521
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr p2, v1

    .line 522
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_1

    .line 524
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "v":Landroid/view/View;
    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    .line 528
    :cond_0
    return-object v0

    .line 526
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "v":Landroid/view/View;
    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "v":Landroid/view/View;
    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getHeightUsed(Landroid/view/View;)I
    .locals 10
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 780
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 781
    .local v2, "heightUsed":I
    instance-of v8, p1, Landroid/widget/AbsListView;

    if-eqz v8, :cond_2

    move-object v6, p1

    .line 782
    check-cast v6, Landroid/widget/AbsListView;

    .line 783
    .local v6, "lv":Landroid/widget/AbsListView;
    invoke-virtual {v6}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v7

    .line 785
    .local v7, "lvPaddingBottom":I
    const/4 v4, 0x0

    .line 786
    .local v4, "lowest":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v6}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 787
    invoke-virtual {v6, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int v1, v8, v7

    .line 788
    .local v1, "bottom":I
    if-le v1, v4, :cond_0

    .line 789
    move v4, v1

    .line 786
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 793
    .end local v1    # "bottom":I
    :cond_1
    if-ge v4, v2, :cond_2

    .line 794
    move v2, v4

    .line 798
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "lowest":I
    .end local v6    # "lv":Landroid/widget/AbsListView;
    .end local v7    # "lvPaddingBottom":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 799
    .local v5, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget v8, v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v2

    iget v9, v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    return v8
.end method

.method private getMaxCollapsedHeight()I
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isSmallCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeightSmall:I

    :goto_0
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    goto :goto_0
.end method

.method private static isChildUnder(Landroid/view/View;FF)Z
    .locals 5
    .param p0, "child"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 579
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    .line 580
    .local v1, "left":F
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v3

    .line 581
    .local v3, "top":F
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float v2, v1, v4

    .line 582
    .local v2, "right":F
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float v0, v3, v4

    .line 583
    .local v0, "bottom":F
    cmpl-float v4, p1, v1

    if-ltz v4, :cond_0

    cmpl-float v4, p2, v3

    if-ltz v4, :cond_0

    cmpg-float v4, p1, v2

    if-gez v4, :cond_0

    cmpg-float v4, p2, v0

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isDescendantClipped(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 546
    const/4 v0, 0x0

    return v0
.end method

.method private isDragging()Z
    .locals 2

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getNestedScrollAxes()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isListChildUnderClipped(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 535
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findListChildUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 536
    .local v0, "listChild":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMoving()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 387
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 388
    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 391
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 392
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 393
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 394
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 396
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 391
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performDrag(F)F
    .locals 13
    .param p1, "dy"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 428
    iget v10, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    add-float/2addr v10, p1

    iget v11, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v12, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 430
    .local v6, "newPos":F
    iget v10, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v10, v6, v10

    if-eqz v10, :cond_5

    .line 431
    iget v10, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    sub-float p1, v6, v10

    .line 432
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v1

    .line 433
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 434
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 435
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 436
    .local v5, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v10, v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    if-nez v10, :cond_0

    .line 437
    float-to-int v10, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 433
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 440
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_1
    iget v10, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v10, v10, v9

    if-eqz v10, :cond_3

    move v4, v7

    .line 441
    .local v4, "isCollapsedOld":Z
    :goto_1
    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    .line 442
    iget v10, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    int-to-float v10, v10

    add-float/2addr v10, p1

    float-to-int v10, v10

    iput v10, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    .line 443
    cmpl-float v9, v6, v9

    if-eqz v9, :cond_4

    move v3, v7

    .line 444
    .local v3, "isCollapsedNew":Z
    :goto_2
    if-eq v4, v3, :cond_2

    .line 445
    invoke-virtual {p0, v8}, Lcom/android/internal/widget/ResolverDrawerLayout;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 448
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    move v7, p1

    .line 451
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "isCollapsedNew":Z
    .end local v4    # "isCollapsedOld":Z
    :goto_3
    return v7

    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_3
    move v4, v8

    .line 440
    goto :goto_1

    .restart local v4    # "isCollapsedOld":Z
    :cond_4
    move v3, v8

    .line 443
    goto :goto_2

    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v4    # "isCollapsedOld":Z
    :cond_5
    move v7, v9

    .line 451
    goto :goto_3
.end method

.method private resetTouch()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 399
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 400
    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 401
    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    .line 402
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 403
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 404
    return-void
.end method

.method private smoothScrollTo(IF)V
    .locals 13
    .param p1, "yOffset"    # I
    .param p2, "velocity"    # F

    .prologue
    const/4 v1, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    .line 465
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 466
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    float-to-int v2, v0

    .line 467
    .local v2, "sy":I
    sub-int v4, p1, v2

    .line 468
    .local v4, "dy":I
    if-nez v4, :cond_0

    .line 490
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getHeight()I

    move-result v9

    .line 473
    .local v9, "height":I
    div-int/lit8 v8, v9, 0x2

    .line 474
    .local v8, "halfHeight":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v12

    int-to-float v3, v9

    div-float/2addr v0, v3

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 475
    .local v7, "distanceRatio":F
    int-to-float v0, v8

    int-to-float v3, v8

    invoke-direct {p0, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->distanceInfluenceForSnapDuration(F)F

    move-result v11

    mul-float/2addr v3, v11

    add-float v6, v0, v3

    .line 478
    .local v6, "distance":F
    const/4 v5, 0x0

    .line 479
    .local v5, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 480
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 481
    const/high16 v0, 0x447a0000    # 1000.0f

    div-float v3, v6, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v5, v0, 0x4

    .line 486
    :goto_1
    const/16 v0, 0x12c

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 488
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 489
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 483
    :cond_1
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v9

    div-float v10, v0, v3

    .line 484
    .local v10, "pageDelta":F
    add-float v0, v10, v12

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    float-to-int v5, v0

    goto :goto_1
.end method

.method private updateCollapseOffset(IZ)Z
    .locals 7
    .param p1, "oldCollapsibleHeight"    # I
    .param p2, "remainClosed"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 190
    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-ne p1, v5, :cond_0

    move v2, v3

    .line 212
    :goto_0
    return v2

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isLaidOut()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 195
    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_2

    move v1, v4

    .line 196
    .local v1, "isCollapsedOld":Z
    :goto_1
    if-eqz p2, :cond_3

    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-ge p1, v5, :cond_3

    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    int-to-float v6, p1

    cmpl-float v5, v5, v6

    if-nez v5, :cond_3

    .line 199
    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v5, v5

    iput v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    .line 203
    :goto_2
    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_4

    move v0, v4

    .line 204
    .local v0, "isCollapsedNew":Z
    :goto_3
    if-eq v1, v0, :cond_1

    .line 205
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .end local v0    # "isCollapsedNew":Z
    .end local v1    # "isCollapsedOld":Z
    :cond_1
    :goto_4
    move v2, v4

    .line 212
    goto :goto_0

    :cond_2
    move v1, v3

    .line 195
    goto :goto_1

    .line 201
    .restart local v1    # "isCollapsedOld":Z
    :cond_3
    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    goto :goto_2

    :cond_4
    move v0, v3

    .line 203
    goto :goto_3

    .line 210
    .end local v1    # "isCollapsedOld":Z
    :cond_5
    iget-boolean v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    if-eqz v3, :cond_6

    :goto_5
    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    goto :goto_4

    :cond_6
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v2, v2

    goto :goto_5
.end method


# virtual methods
.method public computeScroll()V
    .locals 3

    .prologue
    .line 408
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    .line 409
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 411
    .local v0, "keepGoing":Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    sub-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    .line 412
    if-eqz v0, :cond_2

    .line 413
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    .line 419
    .end local v0    # "keepGoing":Z
    :cond_0
    :goto_1
    return-void

    .line 410
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 414
    .restart local v0    # "keepGoing":Z
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v1, :cond_0

    .line 415
    new-instance v1, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;Lcom/android/internal/widget/ResolverDrawerLayout$1;)V

    iput-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    .line 416
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method dispatchOnDismissed()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    invoke-interface {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;->onDismissed()V

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    .line 462
    :cond_1
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 853
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 838
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 843
    instance-of v0, p1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 844
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    check-cast p1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;)V

    .line 848
    :goto_0
    return-object v0

    .line 845
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 846
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 848
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 682
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCollapsed()Z
    .locals 2

    .prologue
    .line 151
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmallCollapsed()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mSmallCollapsed:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 596
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 597
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 598
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 602
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 603
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 604
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 605
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 687
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 689
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 691
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 692
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 698
    :cond_0
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 699
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 228
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 229
    iget-object v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    .line 232
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 234
    packed-switch v0, :pswitch_data_0

    .line 270
    :cond_1
    :goto_0
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v4, :cond_2

    .line 271
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 273
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    if-eqz v4, :cond_4

    :cond_3
    move v6, v5

    :cond_4
    return v6

    .line 236
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 237
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 238
    .local v3, "y":F
    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 239
    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 240
    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->isListChildUnderClipped(FF)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-lez v4, :cond_5

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    goto :goto_0

    :cond_5
    move v4, v6

    goto :goto_1

    .line 245
    .end local v2    # "x":F
    .end local v3    # "y":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 246
    .restart local v2    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 247
    .restart local v3    # "y":F
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    sub-float v1, v3, v4

    .line 248
    .local v1, "dy":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v4, v4, v7

    if-lez v4, :cond_1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getNestedScrollAxes()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    .line 250
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 251
    iput-boolean v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 252
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    add-float/2addr v7, v1

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    goto :goto_0

    .line 259
    .end local v1    # "dy":F
    .end local v2    # "x":F
    .end local v3    # "y":F
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 265
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 804
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWidth()I

    move-result v12

    .line 806
    .local v12, "width":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    .line 807
    .local v14, "ypos":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingLeft()I

    move-result v7

    .line 808
    .local v7, "leftEdge":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingRight()I

    move-result v15

    sub-int v10, v12, v15

    .line 810
    .local v10, "rightEdge":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v3

    .line 811
    .local v3, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 812
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 813
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 815
    .local v8, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 811
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 819
    :cond_0
    iget v15, v8, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->topMargin:I

    add-int v11, v14, v15

    .line 820
    .local v11, "top":I
    iget-boolean v15, v8, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    if-eqz v15, :cond_1

    .line 821
    int-to-float v15, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-int v11, v15

    .line 823
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int v1, v11, v15

    .line 825
    .local v1, "bottom":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 826
    .local v4, "childWidth":I
    sub-int v13, v10, v7

    .line 827
    .local v13, "widthAvailable":I
    sub-int v15, v13, v4

    div-int/lit8 v15, v15, 0x2

    add-int v6, v7, v15

    .line 828
    .local v6, "left":I
    add-int v9, v6, v4

    .line 830
    .local v9, "right":I
    invoke-virtual {v2, v6, v11, v9, v1}, Landroid/view/View;->layout(IIII)V

    .line 832
    iget v15, v8, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->bottomMargin:I

    add-int v14, v1, v15

    goto :goto_1

    .line 834
    .end local v1    # "bottom":I
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childWidth":I
    .end local v6    # "left":I
    .end local v8    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .end local v9    # "right":I
    .end local v11    # "top":I
    .end local v13    # "widthAvailable":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 722
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 723
    .local v13, "sourceWidth":I
    move v14, v13

    .line 724
    .local v14, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 728
    .local v9, "heightSize":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    if-ltz v1, :cond_0

    .line 729
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 732
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v14, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 733
    .local v3, "widthSpec":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 734
    .local v5, "heightSpec":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingRight()I

    move-result v15

    add-int v4, v1, v15

    .line 735
    .local v4, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingBottom()I

    move-result v15

    add-int v6, v1, v15

    .line 738
    .local v6, "heightUsed":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v8

    .line 739
    .local v8, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_2

    .line 740
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 741
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 742
    .local v11, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v1, v11, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v15, 0x8

    if-eq v1, v15, :cond_1

    move-object/from16 v1, p0

    .line 743
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 744
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->getHeightUsed(Landroid/view/View;)I

    move-result v1

    add-int/2addr v6, v1

    .line 739
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 748
    .end local v2    # "child":Landroid/view/View;
    .end local v11    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_2
    move v7, v6

    .line 751
    .local v7, "alwaysShowHeight":I
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_4

    .line 752
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 753
    .restart local v2    # "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 754
    .restart local v11    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v1, v11, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    if-nez v1, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v15, 0x8

    if-eq v1, v15, :cond_3

    move-object/from16 v1, p0

    .line 755
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 756
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->getHeightUsed(Landroid/view/View;)I

    move-result v1

    add-int/2addr v6, v1

    .line 751
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 760
    .end local v2    # "child":Landroid/view/View;
    .end local v11    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    .line 761
    .local v12, "oldCollapsibleHeight":I
    const/4 v1, 0x0

    sub-int v15, v6, v7

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getMaxCollapsedHeight()I

    move-result v16

    sub-int v15, v15, v16

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    .line 763
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    sub-int v1, v6, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    .line 765
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDragging()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->updateCollapseOffset(IZ)Z

    .line 767
    const/4 v1, 0x0

    sub-int v15, v9, v6

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    float-to-int v15, v15

    add-int/2addr v1, v15

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    .line 769
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v9}, Lcom/android/internal/widget/ResolverDrawerLayout;->setMeasuredDimension(II)V

    .line 770
    return-void

    .line 765
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 651
    if-nez p4, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 652
    iget-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v2, :cond_1

    cmpg-float v2, p3, v4

    if-gez v2, :cond_1

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 654
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 655
    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    :goto_0
    move v0, v1

    .line 661
    :cond_0
    return v0

    .line 657
    :cond_1
    cmpl-float v2, p3, v4

    if-lez v2, :cond_2

    :goto_1
    invoke-direct {p0, v0, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    const/4 v0, 0x0

    .line 642
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 643
    invoke-direct {p0, v0, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 644
    const/4 v0, 0x1

    .line 646
    :cond_0
    return v0
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "target"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 666
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 674
    :goto_0
    return v0

    .line 670
    :cond_0
    const/16 v2, 0x1000

    if-ne p2, v2, :cond_1

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 671
    invoke-direct {p0, v1, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 674
    goto :goto_0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    .line 635
    if-lez p3, :cond_0

    .line 636
    const/4 v0, 0x1

    neg-int v1, p3

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    aput v1, p4, v0

    .line 638
    :cond_0
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 628
    if-gez p5, :cond_0

    .line 629
    neg-int v0, p5

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    .line 631
    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 614
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 615
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 865
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    .line 866
    .local v0, "ss":Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 867
    iget-boolean v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->open:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    .line 868
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 858
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 859
    .local v0, "ss":Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->open:Z

    .line 860
    return-object v0

    .line 859
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 609
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 619
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onStopNestedScroll(Landroid/view/View;)V

    .line 620
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 623
    :cond_0
    return-void

    .line 621
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 278
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 280
    .local v1, "action":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 282
    const/4 v3, 0x0

    .line 283
    .local v3, "handled":Z
    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v12, v3

    .line 382
    :goto_1
    return v12

    .line 285
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 286
    .local v9, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 287
    .local v10, "y":F
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 288
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 289
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 290
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_1

    const/4 v4, 0x1

    .line 291
    .local v4, "hitView":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-lez v12, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 292
    :goto_3
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    const/4 v12, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 293
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    goto :goto_0

    .line 290
    .end local v4    # "hitView":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 291
    .restart local v4    # "hitView":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 292
    :cond_3
    const/4 v12, 0x0

    goto :goto_4

    .line 298
    .end local v4    # "hitView":Z
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 299
    .local v5, "index":I
    if-gez v5, :cond_4

    .line 300
    const-string v12, "ResolverDrawerLayout"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bad pointer id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", resetting"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v5, 0x0

    .line 302
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 303
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 306
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 307
    .restart local v9    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 308
    .restart local v10    # "y":F
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v12, :cond_5

    .line 309
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    sub-float v2, v10, v12

    .line 310
    .local v2, "dy":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 311
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 312
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    add-float/2addr v13, v2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    .line 316
    .end local v2    # "dy":F
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v12, :cond_6

    .line 317
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    sub-float v2, v10, v12

    .line 318
    .restart local v2    # "dy":F
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    .line 320
    .end local v2    # "dy":F
    :cond_6
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    goto/16 :goto_0

    .line 325
    .end local v5    # "index":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 326
    .local v7, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 327
    .local v6, "pointerId":I
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 328
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 329
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    goto/16 :goto_0

    .line 334
    .end local v6    # "pointerId":I
    .end local v7    # "pointerIndex":I
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 339
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 340
    .local v8, "wasDragging":Z
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 341
    if-nez v8, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_7

    .line 343
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v12, :cond_7

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dispatchOnDismissed()V

    .line 345
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    .line 346
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 349
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    if-eqz v12, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_8

    .line 351
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 352
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 354
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v13, 0x3e8

    invoke-virtual {v12, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 355
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    invoke-virtual {v12, v13}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v11

    .line 356
    .local v11, "yvel":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_b

    .line 357
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    cmpl-float v12, v11, v12

    if-lez v12, :cond_9

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_9

    .line 359
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 360
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    .line 368
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    goto/16 :goto_0

    .line 362
    :cond_9
    const/4 v12, 0x0

    cmpg-float v12, v11, v12

    if-gez v12, :cond_a

    const/4 v12, 0x0

    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_6

    .line 365
    :cond_b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_c

    const/4 v12, 0x0

    :goto_7
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_7

    .line 373
    .end local v8    # "wasDragging":Z
    .end local v11    # "yvel":F
    :pswitch_6
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v12, :cond_d

    .line 374
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_e

    const/4 v12, 0x0

    :goto_8
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 377
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    .line 378
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 374
    :cond_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_8

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 703
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 717
    :cond_0
    :goto_0
    return v0

    .line 708
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 709
    goto :goto_0

    .line 712
    :cond_2
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 713
    invoke-direct {p0, v0, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    move v0, v1

    .line 714
    goto :goto_0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 588
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 589
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 592
    :cond_0
    return-void
.end method

.method public setCollapsed(Z)V
    .locals 2
    .param p1, "collapsed"    # Z

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    :goto_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setCollapsibleHeightReserved(I)V
    .locals 5
    .param p1, "heightPixels"    # I

    .prologue
    .line 163
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    .line 164
    .local v2, "oldReserved":I
    iput p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    .line 166
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    sub-int v0, v3, v2

    .line 167
    .local v0, "dReserved":I
    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v3, :cond_0

    .line 168
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    .line 171
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    .line 172
    .local v1, "oldCollapsibleHeight":I
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getMaxCollapsedHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    .line 174
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDragging()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0, v1, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->updateCollapseOffset(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 179
    :goto_1
    return-void

    .line 174
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->invalidate()V

    goto :goto_1
.end method

.method public setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    .line 222
    return-void
.end method

.method public setSmallCollapsed(Z)V
    .locals 0
    .param p1, "smallCollapsed"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mSmallCollapsed:Z

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->requestLayout()V

    .line 144
    return-void
.end method
