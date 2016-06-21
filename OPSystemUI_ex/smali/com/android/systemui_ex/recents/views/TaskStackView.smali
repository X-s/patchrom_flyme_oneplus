.class public Lcom/android/systemui_ex/recents/views/TaskStackView;
.super Landroid/widget/FrameLayout;
.source "TaskStackView.java"

# interfaces
.implements Lcom/android/systemui_ex/recents/model/RecentsPackageMonitor$PackageCallbacks;
.implements Lcom/android/systemui_ex/recents/model/TaskStack$TaskStackCallbacks;
.implements Lcom/android/systemui_ex/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;
.implements Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;
.implements Lcom/android/systemui_ex/recents/views/ViewPool$ViewPoolConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/recents/views/TaskStackView$TaskStackViewCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/android/systemui_ex/recents/model/RecentsPackageMonitor$PackageCallbacks;",
        "Lcom/android/systemui_ex/recents/model/TaskStack$TaskStackCallbacks;",
        "Lcom/android/systemui_ex/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;",
        "Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;",
        "Lcom/android/systemui_ex/recents/views/ViewPool$ViewPoolConsumer",
        "<",
        "Lcom/android/systemui_ex/recents/views/TaskView;",
        "Lcom/android/systemui_ex/recents/model/Task;",
        ">;"
    }
.end annotation


# instance fields
.field mAwaitingFirstLayout:Z

.field mCb:Lcom/android/systemui_ex/recents/views/TaskStackView$TaskStackViewCallbacks;

.field mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

.field mContext:Landroid/content/Context;

.field mCurrentTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field mDebugOverlay:Lcom/android/systemui_ex/recents/views/DebugOverlayView;

.field mFilterAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewFilterAlgorithm;

.field mFocusedTaskIndex:I

.field mInflater:Landroid/view/LayoutInflater;

.field mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

.field mLockedStateManager:Lcom/android/systemui_ex/recents/LockedStateManager;

.field mPrevAccessibilityFocusedIndex:I

.field mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

.field mStackScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

.field mStackViewsAnimationDuration:I

.field mStackViewsClipDirty:Z

.field mStackViewsDirty:Z

.field mStartEnterAnimationCompleted:Z

.field mStartEnterAnimationContext:Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;

.field mStartEnterAnimationRequestedAfterLayout:Z

.field mTaskStackBounds:Landroid/graphics/Rect;

.field mTmpCoord:[F

.field mTmpMatrix:Landroid/graphics/Matrix;

.field mTmpRect:Landroid/graphics/Rect;

.field mTmpTaskViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui_ex/recents/model/Task;",
            "Lcom/android/systemui_ex/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field mTmpTransform:Lcom/android/systemui_ex/recents/views/TaskViewTransform;

.field mTmpVisibleRange:[I

.field mTouchHandler:Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;

.field mUIDozeTrigger:Lcom/android/systemui_ex/recents/misc/DozeTrigger;

.field mViewPool:Lcom/android/systemui_ex/recents/views/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui_ex/recents/views/ViewPool",
            "<",
            "Lcom/android/systemui_ex/recents/views/TaskView;",
            "Lcom/android/systemui_ex/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui_ex/recents/model/TaskStack;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stack"    # Lcom/android/systemui_ex/recents/model/TaskStack;

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 117
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 87
    iput v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 88
    iput v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    .line 92
    iput-boolean v1, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackViewsDirty:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    .line 94
    iput-boolean v1, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    .line 98
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpVisibleRange:[I

    .line 99
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpCoord:[F

    .line 100
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    .line 102
    new-instance v0, Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui_ex/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpTaskViewMap:Ljava/util/HashMap;

    .line 108
    new-instance v0, Lcom/android/systemui_ex/recents/views/TaskStackView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/recents/views/TaskStackView$1;-><init>(Lcom/android/systemui_ex/recents/views/TaskStackView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 118
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    .line 119
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui_ex/recents/LockedStateManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui_ex/recents/LockedStateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLockedStateManager:Lcom/android/systemui_ex/recents/LockedStateManager;

    .line 120
    invoke-virtual {p0, p2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->setStack(Lcom/android/systemui_ex/recents/model/TaskStack;)V

    .line 121
    invoke-static {}, Lcom/android/systemui_ex/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui_ex/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    .line 122
    new-instance v0, Lcom/android/systemui_ex/recents/views/ViewPool;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui_ex/recents/views/ViewPool;-><init>(Landroid/content/Context;Lcom/android/systemui_ex/recents/views/ViewPool$ViewPoolConsumer;)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui_ex/recents/views/ViewPool;

    .line 123
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    .line 124
    new-instance v0, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;-><init>(Lcom/android/systemui_ex/recents/RecentsConfiguration;)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    .line 125
    new-instance v0, Lcom/android/systemui_ex/recents/views/TaskStackViewFilterAlgorithm;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui_ex/recents/views/ViewPool;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/systemui_ex/recents/views/TaskStackViewFilterAlgorithm;-><init>(Lcom/android/systemui_ex/recents/RecentsConfiguration;Lcom/android/systemui_ex/recents/views/TaskStackView;Lcom/android/systemui_ex/recents/views/ViewPool;)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mFilterAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewFilterAlgorithm;

    .line 126
    new-instance v0, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;-><init>(Landroid/content/Context;Lcom/android/systemui_ex/recents/RecentsConfiguration;Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    .line 127
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->setCallbacks(Lcom/android/systemui_ex/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;)V

    .line 128
    new-instance v0, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;-><init>(Landroid/content/Context;Lcom/android/systemui_ex/recents/views/TaskStackView;Lcom/android/systemui_ex/recents/RecentsConfiguration;Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;

    .line 129
    new-instance v0, Lcom/android/systemui_ex/recents/misc/DozeTrigger;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskBarDismissDozeDelaySeconds:I

    new-instance v2, Lcom/android/systemui_ex/recents/views/TaskStackView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui_ex/recents/views/TaskStackView$2;-><init>(Lcom/android/systemui_ex/recents/views/TaskStackView;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui_ex/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui_ex/recents/misc/DozeTrigger;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/recents/views/TaskStackView;Lcom/android/systemui_ex/recents/model/Task;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/recents/views/TaskStackView;
    .param p1, "x1"    # Lcom/android/systemui_ex/recents/model/Task;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getSavedLockedState(Lcom/android/systemui_ex/recents/model/Task;)Z

    move-result v0

    return v0
.end method

.method private getSavedLockedState(Lcom/android/systemui_ex/recents/model/Task;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/systemui_ex/recents/model/Task;

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLockedStateManager:Lcom/android/systemui_ex/recents/LockedStateManager;

    if-nez v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui_ex/recents/LockedStateManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui_ex/recents/LockedStateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLockedStateManager:Lcom/android/systemui_ex/recents/LockedStateManager;

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLockedStateManager:Lcom/android/systemui_ex/recents/LockedStateManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/recents/LockedStateManager;->getSavedLockedState(Lcom/android/systemui_ex/recents/model/Task;)Z

    move-result v0

    return v0
.end method

.method private updateStackTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;F[IZ)Z
    .locals 10
    .param p3, "stackScroll"    # F
    .param p4, "visibleRangeOut"    # [I
    .param p5, "boundTranslationsToRect"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/recents/model/Task;",
            ">;F[IZ)Z"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "taskTransforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/views/TaskViewTransform;>;"
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 250
    .local v5, "taskTransformCount":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 251
    .local v4, "taskCount":I
    const/4 v1, -0x1

    .line 252
    .local v1, "frontMostVisibleIndex":I
    const/4 v0, -0x1

    .line 255
    .local v0, "backMostVisibleIndex":I
    if-ge v5, v4, :cond_0

    .line 257
    move v2, v5

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 258
    new-instance v7, Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    invoke-direct {v7}, Lcom/android/systemui_ex/recents/views/TaskViewTransform;-><init>()V

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    .end local v2    # "i":I
    :cond_0
    if-le v5, v4, :cond_1

    .line 262
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 266
    :cond_1
    const/4 v3, 0x0

    .line 267
    .local v3, "prevTransform":Lcom/android/systemui_ex/recents/views/TaskViewTransform;
    add-int/lit8 v2, v4, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_6

    .line 268
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui_ex/recents/model/Task;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    invoke-virtual {v9, v7, p3, v8, v3}, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui_ex/recents/model/Task;FLcom/android/systemui_ex/recents/views/TaskViewTransform;Lcom/android/systemui_ex/recents/views/TaskViewTransform;)Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    move-result-object v6

    .line 270
    .local v6, "transform":Lcom/android/systemui_ex/recents/views/TaskViewTransform;
    iget-boolean v7, v6, Lcom/android/systemui_ex/recents/views/TaskViewTransform;->visible:Z

    if-eqz v7, :cond_5

    .line 271
    if-gez v1, :cond_2

    .line 272
    move v1, v2

    .line 274
    :cond_2
    move v0, v2

    .line 287
    :cond_3
    if-eqz p5, :cond_4

    .line 288
    iget v7, v6, Lcom/android/systemui_ex/recents/views/TaskViewTransform;->translationY:I

    iget-object v8, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v8, v8, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lcom/android/systemui_ex/recents/views/TaskViewTransform;->translationY:I

    .line 291
    :cond_4
    move-object v3, v6

    .line 267
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 276
    :cond_5
    const/4 v7, -0x1

    if-eq v0, v7, :cond_3

    .line 279
    :goto_2
    if-ltz v2, :cond_6

    .line 280
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    invoke-virtual {v7}, Lcom/android/systemui_ex/recents/views/TaskViewTransform;->reset()V

    .line 281
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 293
    .end local v6    # "transform":Lcom/android/systemui_ex/recents/views/TaskViewTransform;
    :cond_6
    if-eqz p4, :cond_7

    .line 294
    const/4 v7, 0x0

    aput v1, p4, v7

    .line 295
    const/4 v7, 0x1

    aput v0, p4, v7

    .line 297
    :cond_7
    const/4 v7, -0x1

    if-eq v1, v7, :cond_8

    const/4 v7, -0x1

    if-eq v0, v7, :cond_8

    const/4 v7, 0x1

    :goto_3
    return v7

    :cond_8
    const/4 v7, 0x0

    goto :goto_3
.end method


# virtual methods
.method clipTaskViews()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 382
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 383
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v7, v0, -0x1

    if-ge v2, v7, :cond_3

    .line 384
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 385
    .local v6, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    const/4 v4, 0x0

    .line 386
    .local v4, "nextTv":Lcom/android/systemui_ex/recents/views/TaskView;
    const/4 v5, 0x0

    .line 387
    .local v5, "tmpTv":Lcom/android/systemui_ex/recents/views/TaskView;
    const/4 v1, 0x0

    .line 388
    .local v1, "clipBottom":I
    invoke-virtual {v6}, Lcom/android/systemui_ex/recents/views/TaskView;->shouldClipViewInStack()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 390
    move v3, v2

    .line 391
    .local v3, "nextIndex":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 392
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "tmpTv":Lcom/android/systemui_ex/recents/views/TaskView;
    check-cast v5, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 393
    .restart local v5    # "tmpTv":Lcom/android/systemui_ex/recents/views/TaskView;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/systemui_ex/recents/views/TaskView;->shouldClipViewInStack()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 394
    move-object v4, v5

    .line 402
    :cond_1
    if-eqz v4, :cond_2

    .line 405
    iget-object v7, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpCoord:[F

    iget-object v8, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpCoord:[F

    const/4 v9, 0x0

    aput v9, v8, v11

    aput v9, v7, v10

    .line 406
    iget-object v7, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpCoord:[F

    invoke-static {v4, p0, v7, v10}, Lcom/android/systemui_ex/recents/misc/Utilities;->mapCoordInDescendentToSelf(Landroid/view/View;Landroid/view/View;[FZ)F

    .line 407
    iget-object v7, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpCoord:[F

    iget-object v8, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v6, p0, v7, v8}, Lcom/android/systemui_ex/recents/misc/Utilities;->mapCoordInSelfToDescendent(Landroid/view/View;Landroid/view/View;[FLandroid/graphics/Matrix;)F

    .line 408
    invoke-virtual {v6}, Lcom/android/systemui_ex/recents/views/TaskView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpCoord:[F

    aget v8, v8, v11

    sub-float/2addr v7, v8

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/views/TaskView;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v1, v8

    .line 412
    .end local v3    # "nextIndex":I
    :cond_2
    invoke-virtual {v6}, Lcom/android/systemui_ex/recents/views/TaskView;->getViewBounds()Lcom/android/systemui_ex/recents/views/AnimateableViewBounds;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/systemui_ex/recents/views/AnimateableViewBounds;->setClipBottom(I)V

    .line 383
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 414
    .end local v1    # "clipBottom":I
    .end local v4    # "nextTv":Lcom/android/systemui_ex/recents/views/TaskView;
    .end local v5    # "tmpTv":Lcom/android/systemui_ex/recents/views/TaskView;
    .end local v6    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_4

    .line 416
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 417
    .restart local v6    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    invoke-virtual {v6}, Lcom/android/systemui_ex/recents/views/TaskView;->getViewBounds()Lcom/android/systemui_ex/recents/views/AnimateableViewBounds;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/systemui_ex/recents/views/AnimateableViewBounds;->setClipBottom(I)V

    .line 420
    .end local v6    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_4
    iput-boolean v10, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    .line 421
    return-void
.end method

.method public computeRects(IILandroid/graphics/Rect;ZZ)V
    .locals 1
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "taskStackBounds"    # Landroid/graphics/Rect;
    .param p4, "launchedWithAltTab"    # Z
    .param p5, "launchedFromHome"    # Z

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->computeRects(IILandroid/graphics/Rect;)V

    .line 707
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p4, p5}, Lcom/android/systemui_ex/recents/views/TaskStackView;->updateMinMaxScroll(ZZZ)V

    .line 708
    return-void
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->computeScroll()Z

    .line 694
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->synchronizeStackViewsWithModel()Z

    .line 695
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->clipTaskViews()V

    .line 697
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->sendAccessibilityEvent(I)V

    .line 698
    return-void
.end method

.method public computeStackVisibilityReport()Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
    .locals 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;

    move-result-object v0

    return-object v0
.end method

.method public createView(Landroid/content/Context;)Lcom/android/systemui_ex/recents/views/TaskView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040045

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/recents/views/TaskView;

    return-object v0
.end method

.method public bridge synthetic createView(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->createView(Landroid/content/Context;)Lcom/android/systemui_ex/recents/views/TaskView;

    move-result-object v0

    return-object v0
.end method

.method public dismissAllTasks()V
    .locals 1

    .prologue
    .line 548
    new-instance v0, Lcom/android/systemui_ex/recents/views/TaskStackView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/recents/views/TaskStackView$4;-><init>(Lcom/android/systemui_ex/recents/views/TaskStackView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->post(Ljava/lang/Runnable;)Z

    .line 637
    return-void
.end method

.method public dismissFocusedTask()V
    .locals 4

    .prologue
    .line 537
    iget v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mFocusedTaskIndex:I

    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 538
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 545
    :goto_0
    return-void

    .line 542
    :cond_1
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mFocusedTaskIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/recents/model/Task;

    .line 543
    .local v0, "t":Lcom/android/systemui_ex/recents/model/Task;
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui_ex/recents/model/Task;)Lcom/android/systemui_ex/recents/views/TaskView;

    move-result-object v1

    .line 544
    .local v1, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/views/TaskView;->dismissTask()V

    goto :goto_0
.end method

.method public ensureFocusedTask()Z
    .locals 7

    .prologue
    .line 493
    iget v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-gez v5, :cond_1

    .line 496
    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    .line 497
    .local v3, "x":I
    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    .line 498
    .local v4, "y":I
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 499
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 500
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 501
    .local v2, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Lcom/android/systemui_ex/recents/views/TaskView;->getHitRect(Landroid/graphics/Rect;)V

    .line 502
    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 503
    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui_ex/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui_ex/recents/model/Task;)I

    move-result v5

    iput v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 508
    .end local v2    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_0
    iget v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-gez v5, :cond_1

    if-lez v0, :cond_1

    .line 509
    add-int/lit8 v5, v0, -0x1

    iput v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 512
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_1
    iget v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-ltz v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    return v5

    .line 499
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    .restart local v2    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 512
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public focusNextTask(ZZ)V
    .locals 6
    .param p1, "forward"    # Z
    .param p2, "animateFocusedState"    # Z

    .prologue
    const/4 v3, 0x1

    .line 523
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    .line 524
    .local v2, "numTasks":I
    if-nez v2, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, -0x1

    .line 527
    .local v0, "direction":I
    :goto_1
    iget v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mFocusedTaskIndex:I

    add-int v1, v4, v0

    .line 528
    .local v1, "newIndex":I
    if-ltz v1, :cond_0

    add-int/lit8 v4, v2, -0x1

    if-gt v1, v4, :cond_0

    .line 529
    const/4 v4, 0x0

    add-int/lit8 v5, v2, -0x1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 530
    invoke-virtual {p0, v1, v3, p2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->focusTask(IZZ)V

    goto :goto_0

    .end local v0    # "direction":I
    .end local v1    # "newIndex":I
    :cond_2
    move v0, v3

    .line 526
    goto :goto_1
.end method

.method focusTask(IZZ)V
    .locals 6
    .param p1, "taskIndex"    # I
    .param p2, "scrollToNewPosition"    # Z
    .param p3, "animateFocusedState"    # Z

    .prologue
    .line 448
    iget v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-ne p1, v4, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 451
    iput p1, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 454
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/recents/model/Task;

    .line 455
    .local v2, "t":Lcom/android/systemui_ex/recents/model/Task;
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui_ex/recents/model/Task;)Lcom/android/systemui_ex/recents/views/TaskView;

    move-result-object v3

    .line 456
    .local v3, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    const/4 v1, 0x0

    .line 457
    .local v1, "postScrollRunnable":Ljava/lang/Runnable;
    if-eqz v3, :cond_2

    .line 458
    invoke-virtual {v3, p3}, Lcom/android/systemui_ex/recents/views/TaskView;->setFocusedTask(Z)V

    .line 475
    :goto_1
    if-eqz p2, :cond_3

    .line 476
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-virtual {v4, v2}, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui_ex/recents/model/Task;)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v0, v4, v5

    .line 477
    .local v0, "newScroll":F
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v4, v0}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v0

    .line 478
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v5}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->animateScroll(FFLjava/lang/Runnable;)V

    goto :goto_0

    .line 460
    .end local v0    # "newScroll":F
    :cond_2
    new-instance v1, Lcom/android/systemui_ex/recents/views/TaskStackView$3;

    .end local v1    # "postScrollRunnable":Ljava/lang/Runnable;
    invoke-direct {v1, p0, p3}, Lcom/android/systemui_ex/recents/views/TaskStackView$3;-><init>(Lcom/android/systemui_ex/recents/views/TaskStackView;Z)V

    .restart local v1    # "postScrollRunnable":Ljava/lang/Runnable;
    goto :goto_1

    .line 480
    :cond_3
    if-eqz v1, :cond_0

    .line 481
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public getChildViewForTask(Lcom/android/systemui_ex/recents/model/Task;)Lcom/android/systemui_ex/recents/views/TaskView;
    .locals 4
    .param p1, "t"    # Lcom/android/systemui_ex/recents/model/Task;

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 227
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 228
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 229
    .local v2, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 233
    .end local v2    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :goto_1
    return-object v2

    .line 227
    .restart local v2    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v2    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getScroller()Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    return-object v0
.end method

.method public getStackAlgorithm()Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    return-object v0
.end method

.method public hasPreferredData(Lcom/android/systemui_ex/recents/views/TaskView;Lcom/android/systemui_ex/recents/model/Task;)Z
    .locals 1
    .param p1, "tv"    # Lcom/android/systemui_ex/recents/views/TaskView;
    .param p2, "preferredData"    # Lcom/android/systemui_ex/recents/model/Task;

    .prologue
    .line 1207
    invoke-virtual {p1}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic hasPreferredData(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Lcom/android/systemui_ex/recents/views/TaskView;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui_ex/recents/model/Task;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->hasPreferredData(Lcom/android/systemui_ex/recents/views/TaskView;Lcom/android/systemui_ex/recents/model/Task;)Z

    move-result v0

    return v0
.end method

.method public isTransformedTouchPointInView(FFLandroid/view/View;)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "child"    # Landroid/view/View;

    .prologue
    .line 957
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v0

    return v0
.end method

.method onFirstLayout()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 802
    iget-object v8, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v8, v8, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v9, v9, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v10, v10, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    sub-int v4, v8, v9

    .line 806
    .local v4, "offscreenY":I
    const/4 v2, 0x0

    .line 807
    .local v2, "launchTargetTask":Lcom/android/systemui_ex/recents/model/Task;
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 808
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 809
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 810
    .local v6, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    invoke-virtual {v6}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v5

    .line 811
    .local v5, "task":Lcom/android/systemui_ex/recents/model/Task;
    iget-boolean v8, v5, Lcom/android/systemui_ex/recents/model/Task;->isLaunchTarget:Z

    if-eqz v8, :cond_1

    .line 812
    move-object v2, v5

    .line 818
    .end local v5    # "task":Lcom/android/systemui_ex/recents/model/Task;
    .end local v6    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_0
    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 819
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 820
    .restart local v6    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    invoke-virtual {v6}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v5

    .line 821
    .restart local v5    # "task":Lcom/android/systemui_ex/recents/model/Task;
    if-eqz v2, :cond_2

    iget-object v8, v2, Lcom/android/systemui_ex/recents/model/Task;->group:Lcom/android/systemui_ex/recents/model/TaskGrouping;

    invoke-virtual {v8, v5, v2}, Lcom/android/systemui_ex/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui_ex/recents/model/Task;Lcom/android/systemui_ex/recents/model/Task;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v3, 0x1

    .line 823
    .local v3, "occludesLaunchTarget":Z
    :goto_2
    iget-boolean v8, v5, Lcom/android/systemui_ex/recents/model/Task;->isLaunchTarget:Z

    invoke-virtual {v6, v8, v3, v4}, Lcom/android/systemui_ex/recents/views/TaskView;->prepareEnterRecentsAnimation(ZZI)V

    .line 818
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 808
    .end local v3    # "occludesLaunchTarget":Z
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    move v3, v7

    .line 821
    goto :goto_2

    .line 828
    .end local v5    # "task":Lcom/android/systemui_ex/recents/model/Task;
    .end local v6    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_3
    iget-boolean v8, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStartEnterAnimationRequestedAfterLayout:Z

    if-eqz v8, :cond_4

    .line 829
    iget-object v8, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStartEnterAnimationContext:Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;

    invoke-virtual {p0, v8}, Lcom/android/systemui_ex/recents/views/TaskStackView;->startEnterRecentsAnimation(Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 830
    iput-boolean v7, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStartEnterAnimationRequestedAfterLayout:Z

    .line 831
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStartEnterAnimationContext:Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;

    .line 836
    :cond_4
    iget-object v8, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v8, v8, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedWithAltTab:Z

    if-eqz v8, :cond_5

    .line 837
    iget-object v8, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v8, v8, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    if-eqz v8, :cond_6

    .line 838
    iget-object v8, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v8}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTaskCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v9, v9, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    invoke-virtual {p0, v8, v7, v9}, Lcom/android/systemui_ex/recents/views/TaskStackView;->focusTask(IZZ)V

    .line 847
    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui_ex/recents/misc/DozeTrigger;

    invoke-virtual {v7}, Lcom/android/systemui_ex/recents/misc/DozeTrigger;->startDozing()V

    .line 848
    return-void

    .line 841
    :cond_6
    iget-object v8, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v8}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTaskCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v9, v9, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    invoke-virtual {p0, v8, v7, v9}, Lcom/android/systemui_ex/recents/views/TaskStackView;->focusTask(IZZ)V

    goto :goto_3
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 661
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 662
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v1

    .line 663
    .local v1, "childCount":I
    if-lez v1, :cond_0

    .line 664
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 665
    .local v0, "backMostTask":Lcom/android/systemui_ex/recents/views/TaskView;
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 666
    .local v2, "frontMostTask":Lcom/android/systemui_ex/recents/views/TaskView;
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui_ex/recents/model/Task;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 667
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui_ex/recents/model/Task;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 668
    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui_ex/recents/model/Task;->activityLabel:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 670
    .end local v0    # "backMostTask":Lcom/android/systemui_ex/recents/views/TaskView;
    .end local v2    # "frontMostTask":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 671
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    iget-object v3, v3, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 672
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget v4, v4, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 673
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 781
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 782
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 783
    .local v2, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 784
    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 788
    :goto_1
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v3, v3, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/systemui_ex/recents/views/TaskView;->layout(IIII)V

    .line 781
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 786
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    .line 794
    .end local v2    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v3, :cond_2

    .line 795
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    .line 796
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->onFirstLayout()V

    .line 798
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 734
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 735
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 738
    .local v2, "height":I
    new-instance v3, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 739
    .local v3, "taskStackBounds":Landroid/graphics/Rect;
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-object v4, v4, Lcom/android/systemui_ex/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v4

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 740
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v4, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedWithAltTab:Z

    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v5, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedFromHome:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui_ex/recents/views/TaskStackView;->computeRects(IILandroid/graphics/Rect;ZZ)V

    .line 745
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->setStackScrollToInitialState()Z

    .line 747
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel()V

    .line 748
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->synchronizeStackViewsWithModel()Z

    .line 752
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v6

    .line 753
    .local v6, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 754
    invoke-virtual {p0, v7}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 755
    .local v8, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    invoke-virtual {v8}, Lcom/android/systemui_ex/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 756
    invoke-virtual {v8}, Lcom/android/systemui_ex/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 760
    :goto_1
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v0, v0, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v4

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v8, v0, v4}, Lcom/android/systemui_ex/recents/views/TaskView;->measure(II)V

    .line 753
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    .line 769
    .end local v8    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->setMeasuredDimension(II)V

    .line 770
    return-void
.end method

.method public onPackagesChanged(Lcom/android/systemui_ex/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V
    .locals 6
    .param p1, "monitor"    # Lcom/android/systemui_ex/recents/model/RecentsPackageMonitor;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 1324
    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTaskKeys()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p1, v5, p2, p3}, Lcom/android/systemui_ex/recents/model/RecentsPackageMonitor;->computeComponentsRemoved(Ljava/util/List;Ljava/lang/String;I)Ljava/util/HashSet;

    move-result-object v1

    .line 1328
    .local v1, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 1329
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1330
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/recents/model/Task;

    .line 1331
    .local v2, "t":Lcom/android/systemui_ex/recents/model/Task;
    iget-object v5, v2, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1332
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui_ex/recents/model/Task;)Lcom/android/systemui_ex/recents/views/TaskView;

    move-result-object v4

    .line 1333
    .local v4, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    if-eqz v4, :cond_1

    .line 1336
    invoke-virtual {v4, v2}, Lcom/android/systemui_ex/recents/views/TaskView;->removeLockState(Lcom/android/systemui_ex/recents/model/Task;)V

    .line 1338
    new-instance v5, Lcom/android/systemui_ex/recents/views/TaskStackView$6;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui_ex/recents/views/TaskStackView$6;-><init>(Lcom/android/systemui_ex/recents/views/TaskStackView;Lcom/android/systemui_ex/recents/model/Task;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui_ex/recents/views/TaskView;->startDeleteTaskAnimation(Ljava/lang/Runnable;)V

    .line 1329
    .end local v4    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1346
    .restart local v4    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v5, v2}, Lcom/android/systemui_ex/recents/model/TaskStack;->removeTask(Lcom/android/systemui_ex/recents/model/Task;)V

    goto :goto_1

    .line 1350
    .end local v2    # "t":Lcom/android/systemui_ex/recents/model/Task;
    .end local v4    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_2
    return-void
.end method

.method onRecentsHidden()V
    .locals 0

    .prologue
    .line 953
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->reset()V

    .line 954
    return-void
.end method

.method public onScrollChanged(F)V
    .locals 1
    .param p1, "p"    # F

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui_ex/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/misc/DozeTrigger;->poke()V

    .line 1315
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel()V

    .line 1316
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->postInvalidateOnAnimation()V

    .line 1317
    return-void
.end method

.method public onStackTaskAdded(Lcom/android/systemui_ex/recents/model/TaskStack;Lcom/android/systemui_ex/recents/model/Task;)V
    .locals 0
    .param p1, "stack"    # Lcom/android/systemui_ex/recents/model/TaskStack;
    .param p2, "t"    # Lcom/android/systemui_ex/recents/model/Task;

    .prologue
    .line 970
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel()V

    .line 971
    return-void
.end method

.method public onStackTaskRemoved(Lcom/android/systemui_ex/recents/model/TaskStack;Lcom/android/systemui_ex/recents/model/Task;Lcom/android/systemui_ex/recents/model/Task;)V
    .locals 12
    .param p1, "stack"    # Lcom/android/systemui_ex/recents/model/TaskStack;
    .param p2, "removedTask"    # Lcom/android/systemui_ex/recents/model/Task;
    .param p3, "newFrontMostTask"    # Lcom/android/systemui_ex/recents/model/Task;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 977
    invoke-virtual {p0, p2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui_ex/recents/model/Task;)Lcom/android/systemui_ex/recents/views/TaskView;

    move-result-object v6

    .line 978
    .local v6, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    if-eqz v6, :cond_0

    .line 979
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui_ex/recents/views/ViewPool;

    invoke-virtual {v9, v6}, Lcom/android/systemui_ex/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    .line 983
    :cond_0
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mCb:Lcom/android/systemui_ex/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-interface {v9, p2}, Lcom/android/systemui_ex/recents/views/TaskStackView$TaskStackViewCallbacks;->onTaskViewDismissed(Lcom/android/systemui_ex/recents/model/Task;)V

    .line 987
    const/4 v0, 0x0

    .line 988
    .local v0, "anchorTask":Lcom/android/systemui_ex/recents/model/Task;
    const/4 v3, 0x0

    .line 989
    .local v3, "prevAnchorTaskScroll":F
    invoke-virtual {p1}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTaskCount()I

    move-result v9

    if-lez v9, :cond_6

    move v4, v7

    .line 990
    .local v4, "pullStackForward":Z
    :goto_0
    if-eqz v4, :cond_1

    .line 991
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui_ex/recents/model/TaskStack;->getFrontMostTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v0

    .line 992
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-virtual {v9, v0}, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui_ex/recents/model/Task;)F

    move-result v3

    .line 996
    :cond_1
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v9, v9, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedWithAltTab:Z

    iget-object v10, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v10, v10, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedFromHome:Z

    invoke-virtual {p0, v7, v9, v10}, Lcom/android/systemui_ex/recents/views/TaskStackView;->updateMinMaxScroll(ZZZ)V

    .line 999
    if-eqz v4, :cond_2

    .line 1000
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-virtual {v9, v0}, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui_ex/recents/model/Task;)F

    move-result v1

    .line 1001
    .local v1, "anchorTaskScroll":F
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    iget-object v10, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v10}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v10

    sub-float v11, v1, v3

    add-float/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 1003
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v9}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->boundScroll()Z

    .line 1007
    .end local v1    # "anchorTaskScroll":F
    :cond_2
    const/16 v9, 0xc8

    invoke-virtual {p0, v9}, Lcom/android/systemui_ex/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel(I)V

    .line 1010
    if-eqz p3, :cond_3

    .line 1011
    invoke-virtual {p0, p3}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui_ex/recents/model/Task;)Lcom/android/systemui_ex/recents/views/TaskView;

    move-result-object v2

    .line 1012
    .local v2, "frontTv":Lcom/android/systemui_ex/recents/views/TaskView;
    if-eqz v2, :cond_3

    .line 1013
    invoke-virtual {v2, p3}, Lcom/android/systemui_ex/recents/views/TaskView;->onTaskBound(Lcom/android/systemui_ex/recents/model/Task;)V

    .line 1014
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v9, v9, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewEnterFromAppDuration:I

    invoke-virtual {v2, v8, v9}, Lcom/android/systemui_ex/recents/views/TaskView;->fadeInActionButton(II)V

    .line 1020
    .end local v2    # "frontTv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_3
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTaskCount()I

    move-result v9

    if-nez v9, :cond_5

    .line 1021
    const/4 v5, 0x1

    .line 1022
    .local v5, "shouldFinishActivity":Z
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui_ex/recents/model/TaskStack;->hasFilteredTasks()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1023
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui_ex/recents/model/TaskStack;->unfilterTasks()V

    .line 1024
    iget-object v9, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTaskCount()I

    move-result v9

    if-nez v9, :cond_7

    move v5, v7

    .line 1026
    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    .line 1027
    iget-object v7, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mCb:Lcom/android/systemui_ex/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-interface {v7}, Lcom/android/systemui_ex/recents/views/TaskStackView$TaskStackViewCallbacks;->onAllTaskViewsDismissed()V

    .line 1030
    .end local v5    # "shouldFinishActivity":Z
    :cond_5
    return-void

    .end local v4    # "pullStackForward":Z
    :cond_6
    move v4, v8

    .line 989
    goto :goto_0

    .restart local v4    # "pullStackForward":Z
    .restart local v5    # "shouldFinishActivity":Z
    :cond_7
    move v5, v8

    .line 1024
    goto :goto_1
.end method

.method public onStackTaskRemovedAnimated(Lcom/android/systemui_ex/recents/model/TaskStack;Lcom/android/systemui_ex/recents/model/Task;Lcom/android/systemui_ex/recents/model/Task;)V
    .locals 3
    .param p1, "stack"    # Lcom/android/systemui_ex/recents/model/TaskStack;
    .param p2, "removedTask"    # Lcom/android/systemui_ex/recents/model/Task;
    .param p3, "newFrontMostTask"    # Lcom/android/systemui_ex/recents/model/Task;

    .prologue
    .line 1037
    invoke-virtual {p0, p2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui_ex/recents/model/Task;)Lcom/android/systemui_ex/recents/views/TaskView;

    move-result-object v1

    .line 1038
    .local v1, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    if-eqz v1, :cond_0

    .line 1039
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui_ex/recents/views/ViewPool;

    invoke-virtual {v2, v1}, Lcom/android/systemui_ex/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    .line 1043
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mCb:Lcom/android/systemui_ex/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-interface {v2, p2}, Lcom/android/systemui_ex/recents/views/TaskStackView$TaskStackViewCallbacks;->onTaskViewDismissed(Lcom/android/systemui_ex/recents/model/Task;)V

    .line 1047
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 1048
    const/4 v0, 0x1

    .line 1049
    .local v0, "shouldFinishActivity":Z
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/model/TaskStack;->hasFilteredTasks()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1050
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/model/TaskStack;->unfilterTasks()V

    .line 1051
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x1

    .line 1053
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1054
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mCb:Lcom/android/systemui_ex/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-interface {v2}, Lcom/android/systemui_ex/recents/views/TaskStackView$TaskStackViewCallbacks;->onAllTaskViewsDismissed()V

    .line 1057
    .end local v0    # "shouldFinishActivity":Z
    :cond_2
    return-void

    .line 1051
    .restart local v0    # "shouldFinishActivity":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStackUnfiltered(Lcom/android/systemui_ex/recents/model/TaskStack;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "newStack"    # Lcom/android/systemui_ex/recents/model/TaskStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui_ex/recents/model/TaskStack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1122
    .local p2, "curTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    return-void
.end method

.method public onTaskViewClicked(Lcom/android/systemui_ex/recents/views/TaskView;Lcom/android/systemui_ex/recents/model/Task;Z)V
    .locals 6
    .param p1, "tv"    # Lcom/android/systemui_ex/recents/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui_ex/recents/model/Task;
    .param p3, "lockToTask"    # Z

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui_ex/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/misc/DozeTrigger;->stopDozing()V

    .line 1242
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mCb:Lcom/android/systemui_ex/recents/views/TaskStackView$TaskStackViewCallbacks;

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mCb:Lcom/android/systemui_ex/recents/views/TaskStackView$TaskStackViewCallbacks;

    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui_ex/recents/views/TaskStackView$TaskStackViewCallbacks;->onTaskViewClicked(Lcom/android/systemui_ex/recents/views/TaskStackView;Lcom/android/systemui_ex/recents/views/TaskView;Lcom/android/systemui_ex/recents/model/TaskStack;Lcom/android/systemui_ex/recents/model/Task;Z)V

    .line 1245
    :cond_0
    return-void
.end method

.method public onTaskViewClipStateChanged(Lcom/android/systemui_ex/recents/views/TaskView;)V
    .locals 1
    .param p1, "tv"    # Lcom/android/systemui_ex/recents/views/TaskView;

    .prologue
    .line 1298
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackViewsDirty:Z

    if-nez v0, :cond_0

    .line 1299
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->invalidate()V

    .line 1301
    :cond_0
    return-void
.end method

.method public onTaskViewDismissed(Lcom/android/systemui_ex/recents/views/TaskView;)V
    .locals 12
    .param p1, "tv"    # Lcom/android/systemui_ex/recents/views/TaskView;

    .prologue
    .line 1249
    invoke-virtual {p1}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v3

    .line 1250
    .local v3, "task":Lcom/android/systemui_ex/recents/model/Task;
    iget-object v7, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v7, v3}, Lcom/android/systemui_ex/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui_ex/recents/model/Task;)I

    move-result v4

    .line 1251
    .local v4, "taskIndex":I
    invoke-virtual {p1}, Lcom/android/systemui_ex/recents/views/TaskView;->isFocusedTask()Z

    move-result v5

    .line 1253
    .local v5, "taskWasFocused":Z
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c00ae

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v11

    iget-object v11, v11, Lcom/android/systemui_ex/recents/model/Task;->activityLabel:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/systemui_ex/recents/views/TaskView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1256
    iget-object v7, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v7, v3}, Lcom/android/systemui_ex/recents/model/TaskStack;->removeTask(Lcom/android/systemui_ex/recents/model/Task;)V

    .line 1258
    if-eqz v5, :cond_0

    .line 1259
    iget-object v7, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v7}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 1260
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v8, v4, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1261
    .local v1, "nextTaskIndex":I
    if-ltz v1, :cond_0

    .line 1262
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/recents/model/Task;

    .line 1263
    .local v0, "nextTask":Lcom/android/systemui_ex/recents/model/Task;
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui_ex/recents/model/Task;)Lcom/android/systemui_ex/recents/views/TaskView;

    move-result-object v2

    .line 1264
    .local v2, "nextTv":Lcom/android/systemui_ex/recents/views/TaskView;
    if-eqz v2, :cond_0

    .line 1267
    iget-object v7, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v7, v7, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedWithAltTab:Z

    invoke-virtual {v2, v7}, Lcom/android/systemui_ex/recents/views/TaskView;->setFocusedTask(Z)V

    .line 1271
    .end local v0    # "nextTask":Lcom/android/systemui_ex/recents/model/Task;
    .end local v1    # "nextTaskIndex":I
    .end local v2    # "nextTv":Lcom/android/systemui_ex/recents/views/TaskView;
    .end local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    :cond_0
    return-void
.end method

.method public onTaskViewDismissedAnimated(Lcom/android/systemui_ex/recents/views/TaskView;)V
    .locals 13
    .param p1, "tv"    # Lcom/android/systemui_ex/recents/views/TaskView;

    .prologue
    const/4 v12, 0x1

    .line 1275
    invoke-virtual {p1}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v3

    .line 1276
    .local v3, "task":Lcom/android/systemui_ex/recents/model/Task;
    iget-object v7, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v7, v3}, Lcom/android/systemui_ex/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui_ex/recents/model/Task;)I

    move-result v4

    .line 1277
    .local v4, "taskIndex":I
    invoke-virtual {p1}, Lcom/android/systemui_ex/recents/views/TaskView;->isFocusedTask()Z

    move-result v5

    .line 1279
    .local v5, "taskWasFocused":Z
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c00ae

    new-array v9, v12, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v11

    iget-object v11, v11, Lcom/android/systemui_ex/recents/model/Task;->activityLabel:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/systemui_ex/recents/views/TaskView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1282
    iget-object v7, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v7, v3, v12}, Lcom/android/systemui_ex/recents/model/TaskStack;->removeTask(Lcom/android/systemui_ex/recents/model/Task;Z)V

    .line 1284
    if-eqz v5, :cond_0

    .line 1285
    iget-object v7, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v7}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 1286
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1287
    .local v1, "nextTaskIndex":I
    if-ltz v1, :cond_0

    .line 1288
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/recents/model/Task;

    .line 1289
    .local v0, "nextTask":Lcom/android/systemui_ex/recents/model/Task;
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui_ex/recents/model/Task;)Lcom/android/systemui_ex/recents/views/TaskView;

    move-result-object v2

    .line 1290
    .local v2, "nextTv":Lcom/android/systemui_ex/recents/views/TaskView;
    iget-object v7, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v7, v7, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedWithAltTab:Z

    invoke-virtual {v2, v7}, Lcom/android/systemui_ex/recents/views/TaskView;->setFocusedTask(Z)V

    .line 1293
    .end local v0    # "nextTask":Lcom/android/systemui_ex/recents/model/Task;
    .end local v1    # "nextTaskIndex":I
    .end local v2    # "nextTv":Lcom/android/systemui_ex/recents/views/TaskView;
    .end local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    :cond_0
    return-void
.end method

.method public onTaskViewFocusChanged(Lcom/android/systemui_ex/recents/views/TaskView;Z)V
    .locals 2
    .param p1, "tv"    # Lcom/android/systemui_ex/recents/views/TaskView;
    .param p2, "focused"    # Z

    .prologue
    .line 1305
    if-eqz p2, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {p1}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui_ex/recents/model/Task;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 1308
    :cond_0
    return-void
.end method

.method public onTaskViewLongClicked(Lcom/android/systemui_ex/recents/views/TaskView;)V
    .locals 0
    .param p1, "tv"    # Lcom/android/systemui_ex/recents/views/TaskView;

    .prologue
    .line 1234
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/recents/views/TaskStackViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method onUserInteraction()V
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui_ex/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/misc/DozeTrigger;->poke()V

    .line 964
    return-void
.end method

.method public prepareViewToEnterPool(Lcom/android/systemui_ex/recents/views/TaskView;)V
    .locals 2
    .param p1, "tv"    # Lcom/android/systemui_ex/recents/views/TaskView;

    .prologue
    .line 1133
    invoke-virtual {p1}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v0

    .line 1136
    .local v0, "task":Lcom/android/systemui_ex/recents/model/Task;
    invoke-virtual {p1}, Lcom/android/systemui_ex/recents/views/TaskView;->isAccessibilityFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1137
    invoke-virtual {p1}, Lcom/android/systemui_ex/recents/views/TaskView;->clearAccessibilityFocus()V

    .line 1141
    :cond_0
    invoke-static {}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->unloadTaskData(Lcom/android/systemui_ex/recents/model/Task;)V

    .line 1144
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->detachViewFromParent(Landroid/view/View;)V

    .line 1147
    invoke-virtual {p1}, Lcom/android/systemui_ex/recents/views/TaskView;->resetViewProperties()V

    .line 1150
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/systemui_ex/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1151
    return-void
.end method

.method public bridge synthetic prepareViewToEnterPool(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Lcom/android/systemui_ex/recents/views/TaskView;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->prepareViewToEnterPool(Lcom/android/systemui_ex/recents/views/TaskView;)V

    return-void
.end method

.method public prepareViewToLeavePool(Lcom/android/systemui_ex/recents/views/TaskView;Lcom/android/systemui_ex/recents/model/Task;Z)V
    .locals 8
    .param p1, "tv"    # Lcom/android/systemui_ex/recents/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui_ex/recents/model/Task;
    .param p3, "isNewView"    # Z

    .prologue
    const/4 v7, 0x1

    .line 1157
    invoke-virtual {p1}, Lcom/android/systemui_ex/recents/views/TaskView;->getWidth()I

    move-result v6

    if-gtz v6, :cond_4

    if-nez p3, :cond_4

    move v3, v7

    .line 1160
    .local v3, "requiresRelayout":Z
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/systemui_ex/recents/views/TaskView;->onTaskBound(Lcom/android/systemui_ex/recents/model/Task;)V

    .line 1163
    invoke-static {}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->loadTaskData(Lcom/android/systemui_ex/recents/model/Task;)V

    .line 1166
    iget-object v6, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui_ex/recents/misc/DozeTrigger;

    invoke-virtual {v6}, Lcom/android/systemui_ex/recents/misc/DozeTrigger;->hasTriggered()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1167
    invoke-virtual {p1}, Lcom/android/systemui_ex/recents/views/TaskView;->setNoUserInteractionState()V

    .line 1171
    :cond_0
    iget-boolean v6, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStartEnterAnimationCompleted:Z

    if-eqz v6, :cond_1

    .line 1172
    invoke-virtual {p1}, Lcom/android/systemui_ex/recents/views/TaskView;->enableFocusAnimations()V

    .line 1176
    :cond_1
    const/4 v2, -0x1

    .line 1177
    .local v2, "insertIndex":I
    iget-object v6, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v6, p2}, Lcom/android/systemui_ex/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui_ex/recents/model/Task;)I

    move-result v4

    .line 1178
    .local v4, "taskIndex":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    .line 1179
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 1180
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1181
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui_ex/recents/views/TaskView;

    invoke-virtual {v6}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v5

    .line 1182
    .local v5, "tvTask":Lcom/android/systemui_ex/recents/model/Task;
    iget-object v6, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v6, v5}, Lcom/android/systemui_ex/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui_ex/recents/model/Task;)I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 1183
    move v2, v1

    .line 1190
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v5    # "tvTask":Lcom/android/systemui_ex/recents/model/Task;
    :cond_2
    if-eqz p3, :cond_6

    .line 1191
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->addView(Landroid/view/View;I)V

    .line 1200
    :cond_3
    :goto_2
    invoke-virtual {p1, p0}, Lcom/android/systemui_ex/recents/views/TaskView;->setCallbacks(Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;)V

    .line 1201
    invoke-virtual {p1, v7}, Lcom/android/systemui_ex/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 1202
    invoke-virtual {p1, v7}, Lcom/android/systemui_ex/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1203
    return-void

    .line 1157
    .end local v2    # "insertIndex":I
    .end local v3    # "requiresRelayout":Z
    .end local v4    # "taskIndex":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 1180
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    .restart local v2    # "insertIndex":I
    .restart local v3    # "requiresRelayout":Z
    .restart local v4    # "taskIndex":I
    .restart local v5    # "tvTask":Lcom/android/systemui_ex/recents/model/Task;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1193
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v5    # "tvTask":Lcom/android/systemui_ex/recents/model/Task;
    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui_ex/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {p0, p1, v2, v6}, Lcom/android/systemui_ex/recents/views/TaskStackView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1194
    if-eqz v3, :cond_3

    .line 1195
    invoke-virtual {p1}, Lcom/android/systemui_ex/recents/views/TaskView;->requestLayout()V

    goto :goto_2
.end method

.method public bridge synthetic prepareViewToLeavePool(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Z

    .prologue
    .line 51
    check-cast p1, Lcom/android/systemui_ex/recents/views/TaskView;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui_ex/recents/model/Task;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui_ex/recents/views/TaskStackView;->prepareViewToLeavePool(Lcom/android/systemui_ex/recents/views/TaskView;Lcom/android/systemui_ex/recents/model/Task;Z)V

    return-void
.end method

.method requestSynchronizeStackViewsWithModel()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel(I)V

    .line 202
    return-void
.end method

.method requestSynchronizeStackViewsWithModel(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackViewsDirty:Z

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->invalidate()V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackViewsDirty:Z

    .line 208
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v0, :cond_1

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_1
    iget v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    goto :goto_0
.end method

.method requestUpdateStackViewsClip()V
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->invalidate()V

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    .line 222
    :cond_0
    return-void
.end method

.method reset()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->resetFocusedTask()V

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 170
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 171
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 172
    .local v3, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui_ex/recents/views/ViewPool;

    invoke-virtual {v4, v3}, Lcom/android/systemui_ex/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    .line 170
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 176
    .end local v3    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui_ex/recents/views/ViewPool;

    if-eqz v4, :cond_1

    .line 177
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui_ex/recents/views/ViewPool;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/views/ViewPool;->poolViewIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 178
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui_ex/recents/views/TaskView;>;"
    if-eqz v2, :cond_1

    .line 179
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 180
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 181
    .restart local v3    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/views/TaskView;->reset()V

    goto :goto_1

    .line 187
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui_ex/recents/views/TaskView;>;"
    .end local v3    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/model/TaskStack;->reset()V

    .line 188
    iput-boolean v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackViewsDirty:Z

    .line 189
    iput-boolean v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    .line 190
    iput-boolean v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    .line 191
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    .line 192
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui_ex/recents/misc/DozeTrigger;

    if-eqz v4, :cond_2

    .line 193
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui_ex/recents/misc/DozeTrigger;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/misc/DozeTrigger;->stopDozing()V

    .line 194
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui_ex/recents/misc/DozeTrigger;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/misc/DozeTrigger;->resetTrigger()V

    .line 196
    :cond_2
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->reset()V

    .line 197
    return-void
.end method

.method resetFocusedTask()V
    .locals 4

    .prologue
    .line 649
    iget v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mFocusedTaskIndex:I

    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 650
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mFocusedTaskIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/recents/model/Task;

    .line 651
    .local v0, "t":Lcom/android/systemui_ex/recents/model/Task;
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui_ex/recents/model/Task;)Lcom/android/systemui_ex/recents/views/TaskView;

    move-result-object v1

    .line 652
    .local v1, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    if-eqz v1, :cond_0

    .line 653
    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/views/TaskView;->unsetFocusedTask()V

    .line 656
    .end local v0    # "t":Lcom/android/systemui_ex/recents/model/Task;
    .end local v1    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 657
    return-void
.end method

.method setCallbacks(Lcom/android/systemui_ex/recents/views/TaskStackView$TaskStackViewCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui_ex/recents/views/TaskStackView$TaskStackViewCallbacks;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mCb:Lcom/android/systemui_ex/recents/views/TaskStackView$TaskStackViewCallbacks;

    .line 145
    return-void
.end method

.method public setDebugOverlay(Lcom/android/systemui_ex/recents/views/DebugOverlayView;)V
    .locals 0
    .param p1, "overlay"    # Lcom/android/systemui_ex/recents/views/DebugOverlayView;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mDebugOverlay:Lcom/android/systemui_ex/recents/views/DebugOverlayView;

    .line 161
    return-void
.end method

.method setStack(Lcom/android/systemui_ex/recents/model/TaskStack;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/systemui_ex/recents/model/TaskStack;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    .line 151
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/recents/model/TaskStack;->setCallbacks(Lcom/android/systemui_ex/recents/model/TaskStack$TaskStackCallbacks;)V

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->requestLayout()V

    .line 156
    return-void
.end method

.method public setStackInsetRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 426
    return-void
.end method

.method public startEnterRecentsAnimation(Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;)V
    .locals 10
    .param p1, "ctx"    # Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;

    .prologue
    const/4 v6, 0x1

    .line 853
    iget-boolean v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v5, :cond_1

    .line 854
    iput-boolean v6, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStartEnterAnimationRequestedAfterLayout:Z

    .line 855
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStartEnterAnimationContext:Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 861
    const/4 v2, 0x0

    .line 862
    .local v2, "launchTargetTask":Lcom/android/systemui_ex/recents/model/Task;
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 863
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 864
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 865
    .local v4, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v3

    .line 866
    .local v3, "task":Lcom/android/systemui_ex/recents/model/Task;
    iget-boolean v5, v3, Lcom/android/systemui_ex/recents/model/Task;->isLaunchTarget:Z

    if-eqz v5, :cond_3

    .line 867
    move-object v2, v3

    .line 873
    .end local v3    # "task":Lcom/android/systemui_ex/recents/model/Task;
    .end local v4    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_2
    add-int/lit8 v1, v0, -0x1

    :goto_2
    if-ltz v1, :cond_5

    .line 874
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 875
    .restart local v4    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v3

    .line 876
    .restart local v3    # "task":Lcom/android/systemui_ex/recents/model/Task;
    new-instance v5, Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    invoke-direct {v5}, Lcom/android/systemui_ex/recents/views/TaskViewTransform;-><init>()V

    iput-object v5, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskTransform:Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    .line 877
    iput v1, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;->currentStackViewIndex:I

    .line 878
    iput v0, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;->currentStackViewCount:I

    .line 879
    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iput-object v5, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskRect:Landroid/graphics/Rect;

    .line 880
    if-eqz v2, :cond_4

    iget-object v5, v2, Lcom/android/systemui_ex/recents/model/Task;->group:Lcom/android/systemui_ex/recents/model/TaskGrouping;

    invoke-virtual {v5, v3, v2}, Lcom/android/systemui_ex/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui_ex/recents/model/Task;Lcom/android/systemui_ex/recents/model/Task;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    :goto_3
    iput-boolean v5, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskOccludesLaunchTarget:Z

    .line 882
    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object v5, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 883
    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v7, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v7}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v7

    iget-object v8, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskTransform:Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    const/4 v9, 0x0

    invoke-virtual {v5, v3, v7, v8, v9}, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui_ex/recents/model/Task;FLcom/android/systemui_ex/recents/views/TaskViewTransform;Lcom/android/systemui_ex/recents/views/TaskViewTransform;)Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    .line 884
    invoke-virtual {v4, p1}, Lcom/android/systemui_ex/recents/views/TaskView;->startEnterRecentsAnimation(Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 873
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 863
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 880
    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 888
    .end local v3    # "task":Lcom/android/systemui_ex/recents/model/Task;
    .end local v4    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_5
    iget-object v5, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;

    new-instance v6, Lcom/android/systemui_ex/recents/views/TaskStackView$5;

    invoke-direct {v6, p0}, Lcom/android/systemui_ex/recents/views/TaskStackView$5;-><init>(Lcom/android/systemui_ex/recents/views/TaskStackView;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public startExitToHomeAnimation(Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewExitContext;)V
    .locals 6
    .param p1, "ctx"    # Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewExitContext;

    .prologue
    .line 922
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 923
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 925
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v3, v3, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    iput v3, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewExitContext;->offscreenTranslationY:I

    .line 927
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 928
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 929
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 930
    .local v2, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    invoke-virtual {v2, p1}, Lcom/android/systemui_ex/recents/views/TaskView;->startExitToHomeAnimation(Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 928
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 932
    .end local v2    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_0
    return-void
.end method

.method public startLaunchTaskAnimation(Lcom/android/systemui_ex/recents/views/TaskView;Ljava/lang/Runnable;Z)V
    .locals 9
    .param p1, "tv"    # Lcom/android/systemui_ex/recents/views/TaskView;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "lockToTask"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 936
    invoke-virtual {p1}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v2

    .line 937
    .local v2, "launchTargetTask":Lcom/android/systemui_ex/recents/model/Task;
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 938
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 939
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 940
    .local v4, "t":Lcom/android/systemui_ex/recents/views/TaskView;
    if-ne v4, p1, :cond_0

    .line 941
    invoke-virtual {v4, v7}, Lcom/android/systemui_ex/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 942
    invoke-virtual {v4, p2, v8, v8, p3}, Lcom/android/systemui_ex/recents/views/TaskView;->startLaunchTaskAnimation(Ljava/lang/Runnable;ZZZ)V

    .line 938
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 944
    :cond_0
    iget-object v5, v2, Lcom/android/systemui_ex/recents/model/Task;->group:Lcom/android/systemui_ex/recents/model/TaskGrouping;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/android/systemui_ex/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui_ex/recents/model/Task;Lcom/android/systemui_ex/recents/model/Task;)Z

    move-result v3

    .line 946
    .local v3, "occludesLaunchTarget":Z
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v7, v3, p3}, Lcom/android/systemui_ex/recents/views/TaskView;->startLaunchTaskAnimation(Ljava/lang/Runnable;ZZZ)V

    goto :goto_1

    .line 949
    .end local v3    # "occludesLaunchTarget":Z
    .end local v4    # "t":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_1
    return-void
.end method

.method synchronizeStackViewsWithModel()Z
    .locals 21

    .prologue
    .line 302
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackViewsDirty:Z

    if-eqz v2, :cond_7

    .line 303
    invoke-static {}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    move-result-object v13

    .line 304
    .local v13, "loader":Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;
    invoke-virtual {v13}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    move-result-object v14

    .line 307
    .local v14, "ssp":Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 308
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    .line 309
    .local v5, "stackScroll":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpVisibleRange:[I

    .line 310
    .local v6, "visibleRange":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui_ex/recents/views/TaskStackView;->updateStackTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;F[IZ)Z

    move-result v12

    .line 312
    .local v12, "isValidVisibleRange":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mDebugOverlay:Lcom/android/systemui_ex/recents/views/DebugOverlayView;

    if-eqz v2, :cond_0

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mDebugOverlay:Lcom/android/systemui_ex/recents/views/DebugOverlayView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vis["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x1

    aget v7, v6, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x0

    aget v7, v6, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "]"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/recents/views/DebugOverlayView;->setText(Ljava/lang/String;)V

    .line 317
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpTaskViewMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v9

    .line 319
    .local v9, "childCount":I
    add-int/lit8 v10, v9, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_2

    .line 320
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 321
    .local v18, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v15

    .line 322
    .local v15, "task":Lcom/android/systemui_ex/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v2, v15}, Lcom/android/systemui_ex/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui_ex/recents/model/Task;)I

    move-result v16

    .line 323
    .local v16, "taskIndex":I
    const/4 v2, 0x1

    aget v2, v6, v2

    move/from16 v0, v16

    if-gt v2, v0, :cond_1

    const/4 v2, 0x0

    aget v2, v6, v2

    move/from16 v0, v16

    if-gt v0, v2, :cond_1

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpTaskViewMap:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v2, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :goto_1
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 326
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui_ex/recents/views/ViewPool;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/systemui_ex/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    goto :goto_1

    .line 331
    .end local v15    # "task":Lcom/android/systemui_ex/recents/model/Task;
    .end local v16    # "taskIndex":I
    .end local v18    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_2
    const/4 v2, 0x0

    aget v10, v6, v2

    :goto_2
    if-eqz v12, :cond_6

    const/4 v2, 0x1

    aget v2, v6, v2

    if-lt v10, v2, :cond_6

    .line 332
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui_ex/recents/model/Task;

    .line 333
    .restart local v15    # "task":Lcom/android/systemui_ex/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    .line 334
    .local v17, "transform":Lcom/android/systemui_ex/recents/views/TaskViewTransform;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpTaskViewMap:Ljava/util/HashMap;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 335
    .restart local v18    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v2, v15}, Lcom/android/systemui_ex/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui_ex/recents/model/Task;)I

    move-result v16

    .line 337
    .restart local v16    # "taskIndex":I
    if-nez v18, :cond_3

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui_ex/recents/views/ViewPool;

    invoke-virtual {v2, v15, v15}, Lcom/android/systemui_ex/recents/views/ViewPool;->pickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    check-cast v18, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 340
    .restart local v18    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    if-lez v2, :cond_3

    .line 343
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/systemui_ex/recents/views/TaskViewTransform;->p:F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gtz v2, :cond_5

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v3, v7, v0, v1}, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(FFLcom/android/systemui_ex/recents/views/TaskViewTransform;Lcom/android/systemui_ex/recents/views/TaskViewTransform;)Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    .line 348
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui_ex/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui_ex/recents/views/TaskViewTransform;I)V

    .line 353
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v7}, Lcom/android/systemui_ex/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui_ex/recents/views/TaskViewTransform;ILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v9

    .line 359
    if-lez v9, :cond_4

    invoke-virtual {v14}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 360
    add-int/lit8 v2, v9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 361
    .local v8, "atv":Lcom/android/systemui_ex/recents/views/TaskView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v8}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui_ex/recents/model/Task;)I

    move-result v11

    .line 362
    .local v11, "indexOfTask":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    if-eq v2, v11, :cond_4

    .line 363
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui_ex/recents/views/TaskView;->requestAccessibilityFocus()Z

    .line 364
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    .line 331
    .end local v8    # "atv":Lcom/android/systemui_ex/recents/views/TaskView;
    .end local v11    # "indexOfTask":I
    :cond_4
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_2

    .line 346
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v3, v7, v0, v1}, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(FFLcom/android/systemui_ex/recents/views/TaskViewTransform;Lcom/android/systemui_ex/recents/views/TaskViewTransform;)Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    goto :goto_3

    .line 370
    .end local v15    # "task":Lcom/android/systemui_ex/recents/model/Task;
    .end local v16    # "taskIndex":I
    .end local v17    # "transform":Lcom/android/systemui_ex/recents/views/TaskViewTransform;
    .end local v18    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    .line 371
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackViewsDirty:Z

    .line 372
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    .line 373
    const/4 v2, 0x1

    .line 375
    .end local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/recents/model/Task;>;"
    .end local v5    # "stackScroll":F
    .end local v6    # "visibleRange":[I
    .end local v9    # "childCount":I
    .end local v10    # "i":I
    .end local v12    # "isValidVisibleRange":Z
    .end local v13    # "loader":Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;
    .end local v14    # "ssp":Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;
    :goto_4
    return v2

    :cond_7
    const/4 v2, 0x0

    goto :goto_4
.end method

.method updateMinMaxScroll(ZZZ)V
    .locals 2
    .param p1, "boundScrollToNewMinMax"    # Z
    .param p2, "launchedWithAltTab"    # Z
    .param p3, "launchedFromHome"    # Z

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;->computeMinMaxScroll(Ljava/util/ArrayList;ZZ)V

    .line 435
    if-eqz p1, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/views/TaskStackViewScroller;->boundScroll()Z

    .line 438
    :cond_0
    return-void
.end method

.method public updateMinMaxScrollForStack(Lcom/android/systemui_ex/recents/model/TaskStack;ZZ)V
    .locals 1
    .param p1, "stack"    # Lcom/android/systemui_ex/recents/model/TaskStack;
    .param p2, "launchedWithAltTab"    # Z
    .param p3, "launchedFromHome"    # Z

    .prologue
    .line 716
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    .line 717
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/systemui_ex/recents/views/TaskStackView;->updateMinMaxScroll(ZZZ)V

    .line 718
    return-void
.end method
