.class public Lcom/android/systemui_ex/recents/views/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;
    }
.end annotation


# static fields
.field public static ALPHA_FADE_START:F

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field public mAllowSwipeTowardsEnd:Z

.field public mAllowSwipeTowardsStart:Z

.field mCallback:Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDragging:Z

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mInitialTouchPos:F

.field private mMinAlpha:F

.field private mPagingTouchSlop:F

.field private mRtl:Z

.field private mSwipeDirection:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 64
    const v0, 0x3dcccccd    # 0.1f

    sput v0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui_ex/recents/views/SwipeHelper$Callback;FFLandroid/content/Context;)V
    .locals 2
    .param p1, "swipeDirection"    # I
    .param p2, "callback"    # Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;
    .param p3, "densityScale"    # F
    .param p4, "pagingTouchSlop"    # F
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    .line 59
    const/16 v0, 0x4b

    iput v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 60
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mMinAlpha:F

    .line 83
    iput-boolean v1, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mAllowSwipeTowardsStart:Z

    .line 84
    iput-boolean v1, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mAllowSwipeTowardsEnd:Z

    .line 90
    iput-object p2, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;

    .line 91
    iput p1, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mSwipeDirection:I

    .line 92
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 93
    iput p3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mDensityScale:F

    .line 94
    iput p4, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mPagingTouchSlop:F

    .line 95
    const v0, 0x10c000f

    invoke-static {p5, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/recents/views/SwipeHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/recents/views/SwipeHelper;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method private createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "newPos"    # F

    .prologue
    .line 138
    iget v1, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 140
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0

    .line 138
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    goto :goto_0
.end method

.method private dismissChild(Landroid/view/View;F)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const/4 v6, 0x0

    .line 305
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;

    invoke-interface {v4, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    .line 307
    .local v1, "canAnimViewBeDismissed":Z
    cmpg-float v4, p2, v6

    if-ltz v4, :cond_1

    cmpl-float v4, p2, v6

    if-nez v4, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_1

    :cond_0
    cmpl-float v4, p2, v6

    if-nez v4, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mSwipeDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 311
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v4

    neg-float v3, v4

    .line 315
    .local v3, "newPos":F
    :goto_0
    iget v2, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 316
    .local v2, "duration":I
    cmpl-float v4, p2, v6

    if-eqz v4, :cond_3

    .line 317
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 324
    :goto_1
    invoke-direct {p0, p1, v3}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 325
    .local v0, "anim":Landroid/animation/ValueAnimator;
    sget-object v4, Lcom/android/systemui_ex/recents/views/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 326
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 327
    new-instance v4, Lcom/android/systemui_ex/recents/views/SwipeHelper$3;

    invoke-direct {v4, p0, p1, v1}, Lcom/android/systemui_ex/recents/views/SwipeHelper$3;-><init>(Lcom/android/systemui_ex/recents/views/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 336
    new-instance v4, Lcom/android/systemui_ex/recents/views/SwipeHelper$4;

    invoke-direct {v4, p0, v1, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper$4;-><init>(Lcom/android/systemui_ex/recents/views/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 344
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 345
    return-void

    .line 313
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    .end local v2    # "duration":I
    .end local v3    # "newPos":F
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .restart local v3    # "newPos":F
    goto :goto_0

    .line 321
    .restart local v2    # "duration":I
    :cond_3
    iget v2, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    goto :goto_1
.end method

.method private endSwipe(Landroid/view/VelocityTracker;)V
    .locals 20
    .param p1, "velocityTracker"    # Landroid/view/VelocityTracker;

    .prologue
    .line 457
    const/16 v14, 0x3e8

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 458
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v13

    .line 459
    .local v13, "velocity":F
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v10

    .line 460
    .local v10, "perpendicularVelocity":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mDensityScale:F

    mul-float v7, v14, v15

    .line 461
    .local v7, "escapeVelocity":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v11

    .line 463
    .local v11, "translation":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    const-wide v16, 0x3fe3333333333333L    # 0.6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    cmpl-double v14, v14, v16

    if-lez v14, :cond_2

    const/4 v3, 0x1

    .line 465
    .local v3, "childSwipedFarEnough":Z
    :goto_0
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpl-float v14, v14, v7

    if-lez v14, :cond_5

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v14

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpl-float v14, v14, v15

    if-lez v14, :cond_5

    const/4 v14, 0x0

    cmpl-float v14, v13, v14

    if-lez v14, :cond_3

    const/4 v14, 0x1

    move v15, v14

    :goto_1
    const/4 v14, 0x0

    cmpl-float v14, v11, v14

    if-lez v14, :cond_4

    const/4 v14, 0x1

    :goto_2
    if-ne v15, v14, :cond_5

    const/4 v5, 0x1

    .line 470
    .local v5, "childSwipedFastEnough":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v14, v15}, Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->isValidSwipeDirection(F)Z

    move-result v14

    if-eqz v14, :cond_6

    if-nez v5, :cond_0

    if-eqz v3, :cond_6

    :cond_0
    const/4 v14, 0x0

    cmpg-float v14, v11, v14

    if-gez v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    check-cast v14, Lcom/android/systemui_ex/recents/views/TaskView;

    invoke-virtual {v14}, Lcom/android/systemui_ex/recents/views/TaskView;->isLocked()Z

    move-result v14

    if-nez v14, :cond_6

    const/4 v6, 0x1

    .line 476
    .local v6, "dismissChild":Z
    :goto_4
    if-eqz v6, :cond_8

    .line 478
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v5, :cond_7

    .end local v13    # "velocity":F
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    .line 496
    :cond_1
    :goto_6
    return-void

    .line 463
    .end local v3    # "childSwipedFarEnough":Z
    .end local v5    # "childSwipedFastEnough":Z
    .end local v6    # "dismissChild":Z
    .restart local v13    # "velocity":F
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 465
    .restart local v3    # "childSwipedFarEnough":Z
    :cond_3
    const/4 v14, 0x0

    move v15, v14

    goto :goto_1

    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 470
    .restart local v5    # "childSwipedFastEnough":Z
    :cond_6
    const/4 v6, 0x0

    goto :goto_4

    .line 478
    .restart local v6    # "dismissChild":Z
    :cond_7
    const/4 v13, 0x0

    goto :goto_5

    .line 481
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v14, v15}, Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 483
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    const-wide v16, 0x3fd3333333333333L    # 0.3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    cmpl-double v14, v14, v16

    if-lez v14, :cond_9

    const/4 v4, 0x1

    .line 485
    .local v4, "childSwipedFarEnoughToLock":Z
    :goto_7
    if-eqz v4, :cond_a

    const/4 v14, 0x0

    cmpl-float v14, v11, v14

    if-lez v14, :cond_a

    const/4 v2, 0x1

    .line 486
    .local v2, "changeLockedState":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13, v2}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->snapChild(Landroid/view/View;FZ)V

    .line 487
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    check-cast v12, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 488
    .local v12, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    iget-object v14, v12, Lcom/android/systemui_ex/recents/views/TaskView;->mTask:Lcom/android/systemui_ex/recents/model/Task;

    iget-object v14, v14, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    invoke-virtual {v14}, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->getComponentNameKey()Lcom/android/systemui_ex/recents/model/Task$ComponentNameKey;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/systemui_ex/recents/model/Task$ComponentNameKey;->getComponentPackageName()Ljava/lang/String;

    move-result-object v9

    .line 489
    .local v9, "packagename":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/systemui_ex/recents/views/TaskView;->isLocked()Z

    move-result v14

    if-nez v14, :cond_b

    const/4 v8, 0x1

    .line 490
    .local v8, "isLocked":Z
    :goto_9
    if-eqz v2, :cond_1

    .line 491
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->setTaskViewLocked(ZLjava/lang/String;)V

    goto :goto_6

    .line 483
    .end local v2    # "changeLockedState":Z
    .end local v4    # "childSwipedFarEnoughToLock":Z
    .end local v8    # "isLocked":Z
    .end local v9    # "packagename":Ljava/lang/String;
    .end local v12    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_9
    const/4 v4, 0x0

    goto :goto_7

    .line 485
    .restart local v4    # "childSwipedFarEnoughToLock":Z
    :cond_a
    const/4 v2, 0x0

    goto :goto_8

    .line 489
    .restart local v2    # "changeLockedState":Z
    .restart local v9    # "packagename":Ljava/lang/String;
    .restart local v12    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_b
    const/4 v8, 0x0

    goto :goto_9
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 144
    iget v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method private getSize(Landroid/view/View;)F
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 158
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    goto :goto_0
.end method

.method private getTranslation(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    iget v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 133
    iget v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 186
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 189
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 187
    goto :goto_0

    :cond_1
    move v0, v1

    .line 189
    goto :goto_0
.end method

.method private isValidSwipeDirection(F)Z
    .locals 2
    .param p1, "amount"    # F

    .prologue
    const/4 v1, 0x0

    .line 444
    iget v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_3

    .line 445
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mRtl:Z

    if-eqz v0, :cond_1

    .line 446
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mAllowSwipeTowardsEnd:Z

    .line 453
    :goto_0
    return v0

    .line 446
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mAllowSwipeTowardsStart:Z

    goto :goto_0

    .line 448
    :cond_1
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mAllowSwipeTowardsStart:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mAllowSwipeTowardsEnd:Z

    goto :goto_0

    .line 453
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setSwipeAmount(F)V
    .locals 12
    .param p1, "amount"    # F

    .prologue
    const v11, 0x3e19999a    # 0.15f

    const/4 v10, 0x0

    .line 414
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->isValidSwipeDirection(F)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;

    iget-object v6, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v5, v6}, Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 416
    :cond_0
    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .line 417
    .local v3, "size":F
    mul-float v2, v11, v3

    .line 418
    .local v2, "maxScrollDistance":F
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v3

    if-ltz v5, :cond_6

    .line 419
    cmpl-float v5, p1, v10

    if-lez v5, :cond_5

    move p1, v2

    .line 425
    .end local v2    # "maxScrollDistance":F
    .end local v3    # "size":F
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 426
    .local v4, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    invoke-virtual {v4}, Lcom/android/systemui_ex/recents/views/TaskView;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    cmpg-float v5, p1, v10

    if-ltz v5, :cond_7

    :cond_2
    const/4 v1, 0x1

    .line 427
    .local v1, "changeAlpha":Z
    :goto_1
    if-nez v1, :cond_3

    .line 428
    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v5

    mul-float v2, v11, v5

    .line 429
    .restart local v2    # "maxScrollDistance":F
    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr p1, v5

    .line 431
    .end local v2    # "maxScrollDistance":F
    :cond_3
    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v5, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 432
    iget-boolean v5, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCanCurrViewBeDimissed:Z

    if-eqz v5, :cond_4

    .line 435
    if-eqz v1, :cond_4

    .line 436
    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v0

    .line 437
    .local v0, "alpha":F
    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setAlpha(F)V

    .line 441
    .end local v0    # "alpha":F
    :cond_4
    return-void

    .line 419
    .end local v1    # "changeAlpha":Z
    .end local v4    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    .restart local v2    # "maxScrollDistance":F
    .restart local v3    # "size":F
    :cond_5
    neg-float p1, v2

    goto :goto_0

    .line 421
    :cond_6
    div-float v5, p1, v3

    float-to-double v6, v5

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float p1, v2, v5

    goto :goto_0

    .line 426
    .end local v2    # "maxScrollDistance":F
    .end local v3    # "size":F
    .restart local v4    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_7
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setTaskViewLocked(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isLocked"    # Z
    .param p2, "packagename"    # Ljava/lang/String;

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 502
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;

    invoke-interface {v2, v0}, Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;->getChildAtPosition(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 503
    .local v1, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    if-nez v1, :cond_0

    .line 512
    return-void

    .line 506
    :cond_0
    iget-object v2, v1, Lcom/android/systemui_ex/recents/views/TaskView;->mTask:Lcom/android/systemui_ex/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->getComponentNameKey()Lcom/android/systemui_ex/recents/model/Task$ComponentNameKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/model/Task$ComponentNameKey;->getComponentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 507
    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/recents/views/TaskView;->setLocked(Z)V

    .line 508
    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/views/TaskView;->updateLockedDrawable()V

    .line 509
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/recents/views/TaskView;->setLockAnimationCurrentCount(F)V

    .line 501
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "translate"    # F

    .prologue
    .line 149
    iget v0, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private snapChild(Landroid/view/View;FZ)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F
    .param p3, "changeLockedState"    # Z

    .prologue
    .line 348
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;

    invoke-interface {v3, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    .line 349
    .local v1, "canAnimViewBeDismissed":Z
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 350
    .local v0, "anim":Landroid/animation/ValueAnimator;
    const/16 v2, 0xfa

    .line 351
    .local v2, "duration":I
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 352
    invoke-static {}, Lcom/android/systemui_ex/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui_ex/recents/RecentsConfiguration;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui_ex/recents/RecentsConfiguration;->linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 353
    new-instance v3, Lcom/android/systemui_ex/recents/views/SwipeHelper$5;

    invoke-direct {v3, p0, v1, p1, p3}, Lcom/android/systemui_ex/recents/views/SwipeHelper$5;-><init>(Lcom/android/systemui_ex/recents/views/SwipeHelper;ZLandroid/view/View;Z)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 371
    new-instance v3, Lcom/android/systemui_ex/recents/views/SwipeHelper$6;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper$6;-><init>(Lcom/android/systemui_ex/recents/views/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 380
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 381
    return-void
.end method


# virtual methods
.method public dismissChildAnimated(Landroid/view/View;FLjava/lang/Runnable;JZJ)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F
    .param p3, "endAction"    # Ljava/lang/Runnable;
    .param p4, "delay"    # J
    .param p6, "useAccelerateInterpolator"    # Z
    .param p7, "fixedDuration"    # J

    .prologue
    .line 234
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 235
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 297
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;

    invoke-interface {v5, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    .line 241
    .local v1, "canAnimViewBeDismissed":Z
    const/4 v5, 0x0

    cmpg-float v5, p2, v5

    if-ltz v5, :cond_2

    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-nez v5, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_2

    :cond_1
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-nez v5, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_4

    iget v5, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mSwipeDirection:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 245
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v5

    neg-float v4, v5

    .line 250
    .local v4, "newPos":F
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v5, p7, v6

    if-nez v5, :cond_6

    .line 251
    iget v5, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    int-to-long v2, v5

    .line 252
    .local v2, "duration":J
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-eqz v5, :cond_5

    .line 253
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    int-to-long v6, v5

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 264
    :goto_2
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 265
    invoke-direct {p0, p1, v4}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 266
    .local v0, "anim":Landroid/animation/ValueAnimator;
    if-eqz p6, :cond_7

    .line 267
    iget-object v5, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 271
    :goto_3
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 272
    const-wide/16 v6, 0x0

    cmp-long v5, p4, v6

    if-lez v5, :cond_3

    .line 273
    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 275
    :cond_3
    new-instance v5, Lcom/android/systemui_ex/recents/views/SwipeHelper$1;

    invoke-direct {v5, p0, p1, v1, p3}, Lcom/android/systemui_ex/recents/views/SwipeHelper$1;-><init>(Lcom/android/systemui_ex/recents/views/SwipeHelper;Landroid/view/View;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 288
    new-instance v5, Lcom/android/systemui_ex/recents/views/SwipeHelper$2;

    invoke-direct {v5, p0, v1, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper$2;-><init>(Lcom/android/systemui_ex/recents/views/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 296
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 247
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    .end local v2    # "duration":J
    .end local v4    # "newPos":F
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v5

    neg-float v4, v5

    .restart local v4    # "newPos":F
    goto :goto_1

    .line 258
    .restart local v2    # "duration":J
    :cond_5
    iget v5, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    int-to-long v2, v5

    goto :goto_2

    .line 261
    .end local v2    # "duration":J
    :cond_6
    move-wide v2, p7

    .restart local v2    # "duration":J
    goto :goto_2

    .line 269
    .restart local v0    # "anim":Landroid/animation/ValueAnimator;
    :cond_7
    sget-object v5, Lcom/android/systemui_ex/recents/views/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3
.end method

.method getAlphaForOffset(Landroid/view/View;)F
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 166
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .line 167
    .local v3, "viewSize":F
    const v4, 0x3f266666    # 0.65f

    mul-float v0, v4, v3

    .line 168
    .local v0, "fadeSize":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 169
    .local v2, "result":F
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    .line 171
    .local v1, "pos":F
    cmpg-float v4, v1, v6

    if-gez v4, :cond_1

    sget v4, Lcom/android/systemui_ex/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    .line 172
    sget v4, Lcom/android/systemui_ex/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    sub-float v4, v1, v4

    div-float/2addr v4, v0

    sub-float v2, v5, v4

    .line 176
    :cond_0
    :goto_0
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 177
    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 178
    iget v4, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mMinAlpha:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4

    .line 173
    :cond_1
    cmpg-float v4, v1, v6

    if-gez v4, :cond_0

    sget v4, Lcom/android/systemui_ex/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    sub-float v4, v5, v4

    mul-float/2addr v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    .line 174
    sget v4, Lcom/android/systemui_ex/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    div-float/2addr v4, v0

    add-float v2, v5, v4

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 196
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 228
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mDragging:Z

    return v3

    .line 198
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mDragging:Z

    .line 199
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;

    invoke-interface {v3, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 200
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 201
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 202
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-static {v3}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mRtl:Z

    .line 203
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 204
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 205
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mInitialTouchPos:F

    goto :goto_0

    .line 207
    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCanCurrViewBeDimissed:Z

    goto :goto_0

    .line 211
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 213
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v2

    .line 214
    .local v2, "pos":F
    iget v3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mInitialTouchPos:F

    sub-float v1, v2, v3

    .line 215
    .local v1, "delta":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 216
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 217
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mDragging:Z

    .line 218
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v3

    sub-float v3, v2, v3

    iput v3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mInitialTouchPos:F

    goto :goto_0

    .line 224
    .end local v1    # "delta":F
    .end local v2    # "pos":F
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mDragging:Z

    .line 225
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 384
    iget-boolean v2, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mDragging:Z

    if-nez v2, :cond_0

    .line 385
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    iget-boolean v2, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 408
    :goto_0
    return v2

    .line 390
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 392
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 408
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 395
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 396
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v2

    iget v3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mInitialTouchPos:F

    sub-float v1, v2, v3

    .line 397
    .local v1, "delta":F
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->setSwipeAmount(F)V

    .line 398
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;

    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v2, v3, v1}, Lcom/android/systemui_ex/recents/views/SwipeHelper$Callback;->onSwipeChanged(Landroid/view/View;F)V

    goto :goto_1

    .line 403
    .end local v1    # "delta":F
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 404
    iget-object v2, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v2}, Lcom/android/systemui_ex/recents/views/SwipeHelper;->endSwipe(Landroid/view/VelocityTracker;)V

    goto :goto_1

    .line 392
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMinAlpha(F)V
    .locals 0
    .param p1, "minAlpha"    # F

    .prologue
    .line 162
    iput p1, p0, Lcom/android/systemui_ex/recents/views/SwipeHelper;->mMinAlpha:F

    .line 163
    return-void
.end method
