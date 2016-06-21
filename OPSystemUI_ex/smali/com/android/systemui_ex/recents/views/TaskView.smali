.class public Lcom/android/systemui_ex/recents/views/TaskView;
.super Landroid/widget/FrameLayout;
.source "TaskView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/systemui_ex/recents/model/Task$TaskCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;
    }
.end annotation


# instance fields
.field mActionButtonTranslationZ:F

.field mActionButtonView:Landroid/view/View;

.field mCb:Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;

.field mClipViewInStack:Z

.field mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

.field mContent:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field mDimAlpha:I

.field mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field mDimInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field mDimLayerPaint:Landroid/graphics/Paint;

.field mFocusAnimationsEnabled:Z

.field mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

.field mIsFocused:Z

.field mLockedStateManager:Lcom/android/systemui_ex/recents/LockedStateManager;

.field mMaxDimScale:F

.field mTask:Lcom/android/systemui_ex/recents/model/Task;

.field mTaskDataLoaded:Z

.field mTaskProgress:F

.field mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

.field mThumbnailView:Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;

.field mUpdateDimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field mViewBounds:Lcom/android/systemui_ex/recents/views/AnimateableViewBounds;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui_ex/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui_ex/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui_ex/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mDimInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 64
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mDimLayerPaint:Landroid/graphics/Paint;

    .line 86
    new-instance v0, Lcom/android/systemui_ex/recents/views/TaskView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/recents/views/TaskView$1;-><init>(Lcom/android/systemui_ex/recents/views/TaskView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mUpdateDimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 109
    invoke-static {}, Lcom/android/systemui_ex/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui_ex/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    .line 110
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskStackMaxDim:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mMaxDimScale:F

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mClipViewInStack:Z

    .line 112
    new-instance v0, Lcom/android/systemui_ex/recents/views/AnimateableViewBounds;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/recents/views/AnimateableViewBounds;-><init>(Lcom/android/systemui_ex/recents/views/TaskView;I)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mViewBounds:Lcom/android/systemui_ex/recents/views/AnimateableViewBounds;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->getTaskProgress()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskView;->setTaskProgress(F)V

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->getDim()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskView;->setDim(I)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->fakeShadows:Z

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lcom/android/systemui_ex/recents/views/FakeShadowDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui_ex/recents/views/FakeShadowDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/systemui_ex/recents/RecentsConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mViewBounds:Lcom/android/systemui_ex/recents/views/AnimateableViewBounds;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 120
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mContext:Landroid/content/Context;

    .line 121
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui_ex/recents/LockedStateManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui_ex/recents/LockedStateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mLockedStateManager:Lcom/android/systemui_ex/recents/LockedStateManager;

    .line 123
    return-void
.end method

.method private checkLockedStateManager()V
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mLockedStateManager:Lcom/android/systemui_ex/recents/LockedStateManager;

    if-nez v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui_ex/recents/LockedStateManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui_ex/recents/LockedStateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mLockedStateManager:Lcom/android/systemui_ex/recents/LockedStateManager;

    .line 807
    :cond_0
    return-void
.end method

.method private getSavedLockedState(Lcom/android/systemui_ex/recents/model/Task;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/systemui_ex/recents/model/Task;

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->checkLockedStateManager()V

    .line 811
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mLockedStateManager:Lcom/android/systemui_ex/recents/LockedStateManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/recents/LockedStateManager;->getSavedLockedState(Lcom/android/systemui_ex/recents/model/Task;)Z

    move-result v0

    return v0
.end method

.method private setSavedLockedState(Lcom/android/systemui_ex/recents/model/Task;Z)V
    .locals 1
    .param p1, "task"    # Lcom/android/systemui_ex/recents/model/Task;
    .param p2, "isLocked"    # Z

    .prologue
    .line 815
    invoke-direct {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->checkLockedStateManager()V

    .line 816
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mLockedStateManager:Lcom/android/systemui_ex/recents/LockedStateManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui_ex/recents/LockedStateManager;->setSavedLockedState(Lcom/android/systemui_ex/recents/model/Task;Z)V

    .line 817
    return-void
.end method


# virtual methods
.method animateDimToProgress(IILandroid/animation/Animator$AnimatorListener;)V
    .locals 5
    .param p1, "delay"    # I
    .param p2, "duration"    # I
    .param p3, "postAnimRunnable"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->getDimFromTaskProgress()I

    move-result v1

    .line 582
    .local v1, "toDim":I
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->getDim()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 583
    const-string v2, "dim"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 584
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 585
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 586
    if-eqz p3, :cond_0

    .line 587
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 589
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 591
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void
.end method

.method dismissTask()V
    .locals 2

    .prologue
    .line 511
    move-object v0, p0

    .line 512
    .local v0, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    new-instance v1, Lcom/android/systemui_ex/recents/views/TaskView$8;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui_ex/recents/views/TaskView$8;-><init>(Lcom/android/systemui_ex/recents/views/TaskView;Lcom/android/systemui_ex/recents/views/TaskView;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskView;->startDeleteTaskAnimation(Ljava/lang/Runnable;)V

    .line 520
    return-void
.end method

.method enableFocusAnimations()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 671
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    .line 672
    .local v0, "wasFocusAnimationsEnabled":Z
    iput-boolean v2, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    .line 673
    iget-boolean v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mIsFocused:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 675
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    invoke-virtual {v1, v2, v2}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->onTaskViewFocusChanged(ZZ)V

    .line 677
    :cond_0
    return-void
.end method

.method public fadeInActionButton(II)V
    .locals 4
    .param p1, "delay"    # I
    .param p2, "duration"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 398
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 404
    return-void
.end method

.method public getDim()I
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mDimAlpha:I

    return v0
.end method

.method getDimFromTaskProgress()I
    .locals 5

    .prologue
    .line 595
    iget v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mMaxDimScale:F

    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mDimInterpolator:Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mTaskProgress:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 596
    .local v0, "dim":F
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method getTask()Lcom/android/systemui_ex/recents/model/Task;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mTask:Lcom/android/systemui_ex/recents/model/Task;

    return-object v0
.end method

.method public getTaskProgress()F
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mTaskProgress:F

    return v0
.end method

.method getViewBounds()Lcom/android/systemui_ex/recents/views/AnimateableViewBounds;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mViewBounds:Lcom/android/systemui_ex/recents/views/AnimateableViewBounds;

    return-object v0
.end method

.method public isFocusedTask()Z
    .locals 1

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mIsFocused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mTask:Lcom/android/systemui_ex/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui_ex/recents/model/Task;->taskIsLocked:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 757
    move-object v0, p0

    .line 759
    .local v0, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    iget-object v1, v1, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    if-ne p1, v1, :cond_1

    .line 762
    new-instance v1, Lcom/android/systemui_ex/recents/views/TaskView$9;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui_ex/recents/views/TaskView$9;-><init>(Lcom/android/systemui_ex/recents/views/TaskView;Landroid/view/View;Lcom/android/systemui_ex/recents/views/TaskView;)V

    const-wide/16 v2, 0x7d

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui_ex/recents/views/TaskView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne p1, v1, :cond_2

    .line 775
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationZ(F)V

    .line 777
    :cond_2
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mCb:Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v1, :cond_0

    .line 778
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mCb:Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/views/TaskView;->getTask()Lcom/android/systemui_ex/recents/model/Task;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne p1, v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v2, v0, v3, v1}, Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClicked(Lcom/android/systemui_ex/recents/views/TaskView;Lcom/android/systemui_ex/recents/model/Task;Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 169
    const v1, 0x7f0f0135

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mContent:Landroid/view/View;

    .line 170
    const v1, 0x7f0f0138

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    iput-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 172
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->setLockAnimationMaxCount(F)V

    .line 173
    const v1, 0x7f0f0136

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;

    iput-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;

    .line 174
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;

    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->updateClipToTaskBar(Landroid/view/View;)V

    .line 175
    const v1, 0x7f0f0137

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    .line 176
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    new-instance v2, Lcom/android/systemui_ex/recents/views/TaskView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui_ex/recents/views/TaskView$2;-><init>(Lcom/android/systemui_ex/recents/views/TaskView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 183
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mActionButtonTranslationZ:F

    .line 184
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 656
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 657
    if-nez p1, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->unsetFocusedTask()V

    .line 660
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;

    if-ne p1, v0, :cond_1

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mCb:Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;->onTaskViewLongClicked(Lcom/android/systemui_ex/recents/views/TaskView;)V

    .line 797
    const/4 v0, 0x1

    .line 799
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    .line 188
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 189
    .local v2, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 191
    .local v0, "height":I
    iget v4, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mPaddingLeft:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 192
    .local v3, "widthWithoutPadding":I
    iget v4, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mPaddingTop:I

    sub-int v4, v0, v4

    iget v5, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mPaddingBottom:I

    sub-int v1, v4, v5

    .line 195
    .local v1, "heightWithoutPadding":I
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mContent:Landroid/view/View;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 199
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskBarHeight:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->measure(II)V

    .line 201
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 205
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->measure(II)V

    .line 208
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui_ex/recents/views/TaskView;->setMeasuredDimension(II)V

    .line 209
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->invalidateOutline()V

    .line 210
    return-void
.end method

.method public onTaskBound(Lcom/android/systemui_ex/recents/model/Task;)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui_ex/recents/model/Task;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mTask:Lcom/android/systemui_ex/recents/model/Task;

    .line 684
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mTask:Lcom/android/systemui_ex/recents/model/Task;

    invoke-virtual {v1, p0}, Lcom/android/systemui_ex/recents/model/Task;->setCallbacks(Lcom/android/systemui_ex/recents/model/Task$TaskCallbacks;)V

    .line 687
    iget-boolean v1, p1, Lcom/android/systemui_ex/recents/model/Task;->lockToTaskEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui_ex/recents/model/Task;->lockToThisTask:Z

    if-nez v1, :cond_2

    :cond_0
    const/16 v0, 0x8

    .line 688
    .local v0, "lockButtonVisibility":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 689
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 690
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->requestLayout()V

    .line 692
    :cond_1
    return-void

    .line 687
    .end local v0    # "lockButtonVisibility":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTaskDataLoaded()V
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mTask:Lcom/android/systemui_ex/recents/model/Task;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mTask:Lcom/android/systemui_ex/recents/model/Task;

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskView;->getSavedLockedState(Lcom/android/systemui_ex/recents/model/Task;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui_ex/recents/model/Task;->taskIsLocked:Z

    .line 701
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mTask:Lcom/android/systemui_ex/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->rebindToTask(Lcom/android/systemui_ex/recents/model/Task;)V

    .line 702
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mTask:Lcom/android/systemui_ex/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->rebindToTask(Lcom/android/systemui_ex/recents/model/Task;)V

    .line 704
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 706
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 707
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 709
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 711
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 714
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 715
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 720
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mTaskDataLoaded:Z

    .line 721
    return-void
.end method

.method public onTaskDataUnloaded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 725
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mTask:Lcom/android/systemui_ex/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/model/Task;->setCallbacks(Lcom/android/systemui_ex/recents/model/Task$TaskCallbacks;)V

    .line 728
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->unbindFromTask()V

    .line 729
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->unbindFromTask()V

    .line 731
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 736
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 738
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mApplicationIcon:Lcom/android/systemui_ex/recents/views/LockAnimationView;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/views/LockAnimationView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 740
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 741
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 745
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mTaskDataLoaded:Z

    .line 746
    return-void
.end method

.method prepareEnterRecentsAnimation(ZZI)V
    .locals 4
    .param p1, "isTaskViewLaunchTargetTask"    # Z
    .param p2, "occludesLaunchTarget"    # Z
    .param p3, "offscreenY"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->getDim()I

    move-result v0

    .line 273
    .local v0, "initialDim":I
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    if-eqz v1, :cond_1

    .line 294
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskView;->setDim(I)V

    .line 296
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;

    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->prepareEnterRecentsAnimation(Z)V

    .line 297
    return-void

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    if-eqz v1, :cond_3

    .line 276
    if-eqz p1, :cond_2

    .line 278
    const/4 v0, 0x0

    .line 280
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 281
    :cond_2
    if-eqz p2, :cond_0

    .line 283
    int-to-float v1, p3

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskView;->setTranslationY(F)V

    goto :goto_0

    .line 286
    :cond_3
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedFromHome:Z

    if-eqz v1, :cond_0

    .line 288
    int-to-float v1, p3

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskView;->setTranslationY(F)V

    .line 289
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/recents/views/TaskView;->setTranslationZ(F)V

    .line 290
    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/recents/views/TaskView;->setScaleX(F)V

    .line 291
    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/recents/views/TaskView;->setScaleY(F)V

    goto :goto_0
.end method

.method public removeLockState(Lcom/android/systemui_ex/recents/model/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/android/systemui_ex/recents/model/Task;

    .prologue
    .line 820
    invoke-direct {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->checkLockedStateManager()V

    .line 821
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mLockedStateManager:Lcom/android/systemui_ex/recents/LockedStateManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/recents/LockedStateManager;->removeLockState(Lcom/android/systemui_ex/recents/model/Task;)V

    .line 822
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->resetViewProperties()V

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->resetNoUserInteractionState()V

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskView;->setCallbacks(Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;)V

    .line 154
    return-void
.end method

.method resetNoUserInteractionState()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->resetNoUserInteractionState()V

    .line 506
    return-void
.end method

.method resetViewProperties()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 237
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/recents/views/TaskView;->setDim(I)V

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui_ex/recents/views/TaskView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 239
    invoke-static {p0}, Lcom/android/systemui_ex/recents/views/TaskViewTransform;->reset(Landroid/view/View;)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 242
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 243
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mActionButtonTranslationZ:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 246
    :cond_0
    return-void
.end method

.method setCallbacks(Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mCb:Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;

    .line 146
    return-void
.end method

.method setClipViewInStack(Z)V
    .locals 1
    .param p1, "clip"    # Z

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mClipViewInStack:Z

    if-eq p1, v0, :cond_0

    .line 533
    iput-boolean p1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mClipViewInStack:Z

    .line 534
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mCb:Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mCb:Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClipStateChanged(Lcom/android/systemui_ex/recents/views/TaskView;)V

    .line 538
    :cond_0
    return-void
.end method

.method public setDim(I)V
    .locals 4
    .param p1, "dim"    # I

    .prologue
    const/4 v3, 0x0

    .line 554
    iput p1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mDimAlpha:I

    .line 555
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->useHardwareLayers:Z

    if-eqz v1, :cond_1

    .line 557
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->getMeasuredWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->getMeasuredHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mDimAlpha:I

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    .line 559
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mDimLayerPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 560
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mContent:Landroid/view/View;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mDimLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    iget v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mDimAlpha:I

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float v0, v1, v2

    .line 564
    .local v0, "dimAlpha":F
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;

    if-eqz v1, :cond_2

    .line 565
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->setDimAlpha(F)V

    .line 567
    :cond_2
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->setDimAlpha(I)V

    goto :goto_0
.end method

.method public setFocusedTask(Z)V
    .locals 2
    .param p1, "animateFocusedState"    # Z

    .prologue
    const/4 v1, 0x1

    .line 612
    iput-boolean v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mIsFocused:Z

    .line 613
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->onTaskViewFocusChanged(ZZ)V

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->onFocusChanged(Z)V

    .line 620
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mCb:Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mCb:Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0, v1}, Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;->onTaskViewFocusChanged(Lcom/android/systemui_ex/recents/views/TaskView;Z)V

    .line 626
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/views/TaskView;->setFocusableInTouchMode(Z)V

    .line 627
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->requestFocus()Z

    .line 628
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskView;->setFocusableInTouchMode(Z)V

    .line 629
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->invalidate()V

    .line 630
    return-void
.end method

.method public setLockAnimationCurrentCount(F)V
    .locals 1
    .param p1, "current"    # F

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->setLockAnimationCurrentCount(F)V

    .line 831
    return-void
.end method

.method public setLockState(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->setLockState(Z)V

    .line 835
    return-void
.end method

.method public setLocked(Z)V
    .locals 1
    .param p1, "isTaskViewLocked"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mTask:Lcom/android/systemui_ex/recents/model/Task;

    iput-boolean p1, v0, Lcom/android/systemui_ex/recents/model/Task;->taskIsLocked:Z

    .line 129
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mTask:Lcom/android/systemui_ex/recents/model/Task;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui_ex/recents/views/TaskView;->setSavedLockedState(Lcom/android/systemui_ex/recents/model/Task;Z)V

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/recents/views/TaskView;->setLockState(Z)V

    .line 132
    return-void
.end method

.method setNoUserInteractionState()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->setNoUserInteractionState()V

    .line 501
    return-void
.end method

.method public setTaskProgress(F)V
    .locals 1
    .param p1, "p"    # F

    .prologue
    .line 542
    iput p1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mTaskProgress:F

    .line 543
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mViewBounds:Lcom/android/systemui_ex/recents/views/AnimateableViewBounds;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/recents/views/AnimateableViewBounds;->setAlpha(F)V

    .line 544
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->updateDimFromTaskProgress()V

    .line 545
    return-void
.end method

.method setTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 750
    if-eqz p1, :cond_0

    move-object v0, p0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    return-void

    .line 750
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldClipViewInStack()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mClipViewInStack:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method startDeleteTaskAnimation(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 468
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 470
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewRemoveAnimTranslationXPx:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewRemoveAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui_ex/recents/views/TaskView$7;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui_ex/recents/views/TaskView$7;-><init>(Lcom/android/systemui_ex/recents/views/TaskView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 491
    return-void
.end method

.method startEnterRecentsAnimation(Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;)V
    .locals 8
    .param p1, "ctx"    # Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;

    .prologue
    .line 301
    iget-object v3, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskTransform:Lcom/android/systemui_ex/recents/views/TaskViewTransform;

    .line 302
    .local v3, "transform":Lcom/android/systemui_ex/recents/views/TaskViewTransform;
    const/4 v2, 0x0

    .line 304
    .local v2, "startDelay":I
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    if-eqz v4, :cond_3

    .line 305
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mTask:Lcom/android/systemui_ex/recents/model/Task;

    iget-boolean v4, v4, Lcom/android/systemui_ex/recents/model/Task;->isLaunchTarget:Z

    if-eqz v4, :cond_2

    .line 320
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v4, v4, Lcom/android/systemui_ex/recents/RecentsConfiguration;->transitionEnterFromAppDelay:I

    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewEnterFromAppDuration:I

    iget-object v6, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v6}, Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/systemui_ex/recents/views/TaskView;->animateDimToProgress(IILandroid/animation/Animator$AnimatorListener;)V

    .line 324
    iget-object v4, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 327
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v4, v4, Lcom/android/systemui_ex/recents/RecentsConfiguration;->transitionEnterFromAppDelay:I

    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewEnterFromAppDuration:I

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui_ex/recents/views/TaskView;->fadeInActionButton(II)V

    .line 351
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v2, v4, Lcom/android/systemui_ex/recents/RecentsConfiguration;->transitionEnterFromAppDelay:I

    .line 385
    :cond_1
    :goto_1
    new-instance v4, Lcom/android/systemui_ex/recents/views/TaskView$6;

    invoke-direct {v4, p0}, Lcom/android/systemui_ex/recents/views/TaskView$6;-><init>(Lcom/android/systemui_ex/recents/views/TaskView;)V

    int-to-long v6, v2

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/systemui_ex/recents/views/TaskView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 391
    return-void

    .line 331
    :cond_2
    iget-boolean v4, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskOccludesLaunchTarget:Z

    if-eqz v4, :cond_0

    .line 332
    iget v4, v3, Lcom/android/systemui_ex/recents/views/TaskViewTransform;->translationY:I

    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewAffiliateGroupEnterOffsetPx:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/recents/views/TaskView;->setTranslationY(F)V

    .line 333
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/recents/views/TaskView;->setAlpha(F)V

    .line 334
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, v3, Lcom/android/systemui_ex/recents/views/TaskViewTransform;->translationY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui_ex/recents/RecentsConfiguration;->transitionEnterFromAppDelay:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-object v5, v5, Lcom/android/systemui_ex/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/systemui_ex/recents/views/TaskView$4;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui_ex/recents/views/TaskView$4;-><init>(Lcom/android/systemui_ex/recents/views/TaskView;Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 348
    iget-object v4, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;->increment()V

    goto :goto_0

    .line 353
    :cond_3
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui_ex/recents/RecentsConfiguration;->launchedFromHome:Z

    if-eqz v4, :cond_1

    .line 355
    iget v4, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;->currentStackViewCount:I

    iget v5, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;->currentStackViewIndex:I

    sub-int/2addr v4, v5

    add-int/lit8 v1, v4, -0x1

    .line 356
    .local v1, "frontIndex":I
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v4, v4, Lcom/android/systemui_ex/recents/RecentsConfiguration;->transitionEnterFromHomeDelay:I

    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewEnterFromHomeStaggerDelay:I

    mul-int/2addr v5, v1

    add-int v0, v4, v5

    .line 359
    .local v0, "delay":I
    iget v4, v3, Lcom/android/systemui_ex/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/recents/views/TaskView;->setScaleX(F)V

    .line 360
    iget v4, v3, Lcom/android/systemui_ex/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/recents/views/TaskView;->setScaleY(F)V

    .line 361
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui_ex/recents/RecentsConfiguration;->fakeShadows:Z

    if-nez v4, :cond_4

    .line 362
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, v3, Lcom/android/systemui_ex/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    .line 364
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, v3, Lcom/android/systemui_ex/recents/views/TaskViewTransform;->translationY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-object v5, v5, Lcom/android/systemui_ex/recents/RecentsConfiguration;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    iget-object v6, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewEnterFromHomeStaggerDelay:I

    mul-int/2addr v6, v1

    add-int/2addr v5, v6

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/systemui_ex/recents/views/TaskView$5;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui_ex/recents/views/TaskView$5;-><init>(Lcom/android/systemui_ex/recents/views/TaskView;Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 379
    iget-object v4, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 380
    move v2, v0

    goto/16 :goto_1
.end method

.method startExitToHomeAnimation(Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewExitContext;)V
    .locals 4
    .param p1, "ctx"    # Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewExitContext;

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewExitContext;->offscreenTranslationY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewExitToHomeDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;->decrementAsRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 416
    iget-object v0, p1, Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 417
    return-void
.end method

.method startLaunchTaskAnimation(Ljava/lang/Runnable;ZZZ)V
    .locals 8
    .param p1, "postAnimRunnable"    # Ljava/lang/Runnable;
    .param p2, "isLaunchingTask"    # Z
    .param p3, "occludesLaunchTarget"    # Z
    .param p4, "lockToTask"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 422
    if-eqz p2, :cond_3

    .line 424
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;

    invoke-virtual {v2, p1}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->startLaunchTaskAnimation(Ljava/lang/Runnable;)V

    .line 427
    iget v2, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mDimAlpha:I

    if-lez v2, :cond_0

    .line 428
    const-string v2, "dim"

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v5, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 429
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 430
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-object v2, v2, Lcom/android/systemui_ex/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 431
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 435
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    if-nez p4, :cond_1

    .line 436
    const v1, 0x3f666666    # 0.9f

    .line 437
    .local v1, "toScale":F
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 441
    .end local v1    # "toScale":F
    :cond_1
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui_ex/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 463
    :cond_2
    :goto_0
    return-void

    .line 450
    :cond_3
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->startLaunchTaskDismissAnimation()V

    .line 453
    if-eqz p3, :cond_2

    .line 454
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->getTranslationY()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v4, v4, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewAffiliateGroupEnterOffsetPx:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui_ex/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method startNoUserInteractionAnimation()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->startNoUserInteractionAnimation()V

    .line 496
    return-void
.end method

.method unsetFocusedTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 636
    iput-boolean v2, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mIsFocused:Z

    .line 637
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->onTaskViewFocusChanged(ZZ)V

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/recents/views/TaskViewThumbnail;->onFocusChanged(Z)V

    .line 645
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mCb:Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_1

    .line 646
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mCb:Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0, v2}, Lcom/android/systemui_ex/recents/views/TaskView$TaskViewCallbacks;->onTaskViewFocusChanged(Lcom/android/systemui_ex/recents/views/TaskView;Z)V

    .line 648
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->invalidate()V

    .line 649
    return-void
.end method

.method updateDimFromTaskProgress()V
    .locals 1

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/views/TaskView;->getDimFromTaskProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskView;->setDim(I)V

    .line 602
    return-void
.end method

.method public updateLockedDrawable()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mHeaderView:Lcom/android/systemui_ex/recents/views/TaskViewHeader;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mTask:Lcom/android/systemui_ex/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui_ex/recents/model/Task;->taskIsLocked:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/views/TaskViewHeader;->updateLockedDrawable(Z)V

    .line 140
    return-void
.end method

.method updateViewPropertiesToTaskTransform(Lcom/android/systemui_ex/recents/views/TaskViewTransform;I)V
    .locals 1
    .param p1, "toTransform"    # Lcom/android/systemui_ex/recents/views/TaskViewTransform;
    .param p2, "duration"    # I

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui_ex/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui_ex/recents/views/TaskViewTransform;ILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 215
    return-void
.end method

.method updateViewPropertiesToTaskTransform(Lcom/android/systemui_ex/recents/views/TaskViewTransform;ILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 8
    .param p1, "toTransform"    # Lcom/android/systemui_ex/recents/views/TaskViewTransform;
    .param p2, "duration"    # I
    .param p3, "updateCallback"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 220
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-object v3, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mConfig:Lcom/android/systemui_ex/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->fakeShadows:Z

    if-nez v0, :cond_0

    move v5, v7

    :goto_0
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui_ex/recents/views/TaskViewTransform;->applyToTaskView(Landroid/view/View;ILandroid/view/animation/Interpolator;ZZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/systemui_ex/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 225
    if-gtz p2, :cond_1

    .line 226
    iget v0, p1, Lcom/android/systemui_ex/recents/views/TaskViewTransform;->p:F

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/views/TaskView;->setTaskProgress(F)V

    .line 233
    :goto_1
    return-void

    :cond_0
    move v5, v4

    .line 220
    goto :goto_0

    .line 228
    :cond_1
    const-string v0, "taskProgress"

    new-array v1, v7, [F

    iget v2, p1, Lcom/android/systemui_ex/recents/views/TaskViewTransform;->p:F

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    .line 229
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 230
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mUpdateDimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1
.end method
