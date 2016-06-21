.class public Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;
.super Ljava/lang/Object;
.source "KeyguardAffordanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;
    }
.end annotation


# instance fields
.field private mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mAnimationEndRunnable:Ljava/lang/Runnable;

.field private mAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mBackdropBack:Landroid/widget/ImageView;

.field private mCallback:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;

.field private mCameraIcon:Landroid/widget/ImageView;

.field private final mCameraImageId:[I

.field private mCenterIcon:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

.field private final mContext:Landroid/content/Context;

.field private mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mFlingAnimationUtils:Lcom/android/systemui_ex/statusbar/FlingAnimationUtils;

.field private mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mGauseShadow:Landroid/view/View;

.field private mHintGrowAmount:I

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mKeyguardStatusView:Landroid/view/View;

.field private final mLauchingTimeout:Ljava/lang/Runnable;

.field private mLaunchingInProgress:Z

.field private mLeftIcon:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

.field private mMinBackgroundRadius:I

.field private mMinFlingVelocity:I

.field private mMinTranslationAmount:I

.field private mMotionCancelled:Z

.field private mMotionPerformedByUser:Z

.field private mNotificationStackScrollAnimator:Landroid/view/ViewPropertyAnimator;

.field private mNotificationStackScrollLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

.field private mRightIcon:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

.field private mScreenWidth:I

.field private mSwipeAnimator:Landroid/animation/Animator;

.field private mSwipingInProgress:Z

.field private mTouchSlop:I

.field private mTranslation:F

.field private mTranslationOnDown:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWallpaperView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;I)V
    .locals 6
    .param p1, "callback"    # Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "screenWidth"    # I

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 82
    iput-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mLaunchingInProgress:Z

    .line 86
    const/16 v0, 0x2e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCameraImageId:[I

    .line 97
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$1;-><init>(Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 104
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$2;-><init>(Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    .line 432
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$7;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$7;-><init>(Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mLauchingTimeout:Ljava/lang/Runnable;

    .line 112
    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    .line 113
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;

    .line 114
    iput p3, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mScreenWidth:I

    .line 115
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    .line 116
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;FFZZ)V

    .line 117
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;FFZZ)V

    .line 118
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;FFZZ)V

    .line 119
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->initDimens()V

    .line 120
    return-void

    .line 86
    :array_0
    .array-data 4
        0x7f02001d
        0x7f02001e
        0x7f02001f
        0x7f020020
        0x7f020021
        0x7f020022
        0x7f020023
        0x7f020024
        0x7f020025
        0x7f020026
        0x7f020027
        0x7f020028
        0x7f020029
        0x7f02002a
        0x7f02002b
        0x7f02002c
        0x7f02002d
        0x7f02002e
        0x7f02002f
        0x7f020030
        0x7f020031
        0x7f020032
        0x7f020033
        0x7f020034
        0x7f020035
        0x7f020036
        0x7f020037
        0x7f020038
        0x7f020039
        0x7f02003a
        0x7f02003b
        0x7f02003c
        0x7f02003d
        0x7f02003e
        0x7f02003f
        0x7f020040
        0x7f020041
        0x7f020042
        0x7f020043
        0x7f020044
        0x7f020045
        0x7f020046
        0x7f020047
        0x7f020048
        0x7f020049
        0x7f02004a
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->setSwipingInProgress(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;)Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;
    .param p1, "x1"    # F

    .prologue
    .line 44
    iput p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    return p1
.end method

.method static synthetic access$702(Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mLaunchingInProgress:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;FZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;
    .param p1, "x1"    # F
    .param p2, "x2"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->fling(FZ)V

    return-void
.end method

.method private animateBeforeLaunch(F)V
    .locals 6
    .param p1, "vel"    # F

    .prologue
    const-wide/16 v4, 0x64

    .line 441
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mLaunchingInProgress:Z

    if-eqz v0, :cond_0

    .line 442
    const-string v0, "Affordance"

    const-string v1, "Camera Launching In Progress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :goto_0
    return-void

    .line 445
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mLaunchingInProgress:Z

    .line 447
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mLauchingTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 449
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mLauchingTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 452
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mNotificationStackScrollLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mScreenWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$8;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$8;-><init>(Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mNotificationStackScrollAnimator:Landroid/view/ViewPropertyAnimator;

    .line 463
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mNotificationStackScrollAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 465
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mScreenWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 471
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCameraIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCameraImageId:[I

    const/16 v2, 0x2d

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 472
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCameraIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x43e10000    # 450.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 477
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mGauseShadow:Landroid/view/View;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method private cancelAnimation()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 366
    :cond_0
    return-void
.end method

.method private endMotion(Landroid/view/MotionEvent;Z)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "forceSnapBack"    # Z

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v0, :cond_0

    .line 257
    invoke-direct {p0, p2}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->flingWithCurrentVelocity(Z)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 263
    :cond_1
    return-void
.end method

.method private fling(FZ)V
    .locals 7
    .param p1, "vel"    # F
    .param p2, "snapBack"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 400
    iget v5, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    cmpg-float v5, v5, v2

    if-gez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v5}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;->getPageWidth()F

    move-result v5

    neg-float v1, v5

    .line 401
    .local v1, "target":F
    :goto_0
    if-eqz p2, :cond_0

    move v1, v2

    .line 403
    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [F

    iget v6, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    aput v6, v5, v4

    aput v1, v5, v3

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 404
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mFlingAnimationUtils:Lcom/android/systemui_ex/statusbar/FlingAnimationUtils;

    iget v6, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-virtual {v5, v0, v6, v1, p1}, Lcom/android/systemui_ex/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 405
    new-instance v5, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$6;

    invoke-direct {v5, p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$6;-><init>(Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 411
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 412
    if-nez p2, :cond_3

    .line 413
    const/high16 v5, 0x3ec00000    # 0.375f

    mul-float/2addr v5, p1

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v5, v6}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->startFinishingCircleAnimation(FLjava/lang/Runnable;)V

    .line 414
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget v6, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    cmpg-float v2, v6, v2

    if-gez v2, :cond_2

    move v2, v3

    :goto_1
    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-interface {v5, v2, v3, p1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideStarted(ZFF)V

    .line 418
    :goto_2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 419
    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    .line 420
    return-void

    .line 400
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "target":F
    :cond_1
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v5}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;->getPageWidth()F

    move-result v1

    goto :goto_0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    .restart local v1    # "target":F
    :cond_2
    move v2, v4

    .line 414
    goto :goto_1

    .line 416
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->reset()V

    goto :goto_2
.end method

.method private flingWithCurrentVelocity(Z)V
    .locals 10
    .param p1, "forceSnapBack"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 369
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->getCurrentVelocity()F

    move-result v2

    .line 372
    .local v2, "vel":F
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->isBelowFalsingThreshold()Z

    move-result v0

    .line 375
    .local v0, "snapBack":Z
    iget v7, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    mul-float/2addr v7, v2

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    move v3, v5

    .line 376
    .local v3, "velIsInWrongDirection":Z
    :goto_0
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mMinFlingVelocity:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_2

    if-eqz v3, :cond_2

    move v7, v5

    :goto_1
    or-int/2addr v0, v7

    .line 378
    iget v7, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mMinFlingVelocity:I

    mul-int/lit8 v7, v7, 0x6

    int-to-float v4, v7

    .line 379
    .local v4, "velToLaunch":F
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->getMinTranslationAmount()I

    move-result v7

    div-int/lit8 v1, v7, 0x4

    .line 380
    .local v1, "translationToLaunch":I
    cmpg-float v7, v2, v8

    if-gez v7, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v4

    if-lez v7, :cond_3

    iget v7, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    int-to-float v9, v1

    cmpl-float v7, v7, v9

    if-lez v7, :cond_3

    .line 381
    const/4 v0, 0x0

    .line 382
    xor-int v5, v0, v3

    if-eqz v5, :cond_0

    move v2, v8

    .line 383
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->animateBeforeLaunch(F)V

    .line 388
    :goto_2
    return-void

    .end local v1    # "translationToLaunch":I
    .end local v3    # "velIsInWrongDirection":Z
    .end local v4    # "velToLaunch":F
    :cond_1
    move v3, v6

    .line 375
    goto :goto_0

    .restart local v3    # "velIsInWrongDirection":Z
    :cond_2
    move v7, v6

    .line 376
    goto :goto_1

    .line 385
    .restart local v1    # "translationToLaunch":I
    .restart local v4    # "velToLaunch":F
    :cond_3
    xor-int v7, v0, v3

    if-eqz v7, :cond_4

    move v2, v8

    .line 386
    :cond_4
    if-nez v0, :cond_5

    if-eqz p1, :cond_6

    :cond_5
    move v6, v5

    :cond_6
    invoke-direct {p0, v2, v6}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->fling(FZ)V

    goto :goto_2
.end method

.method private getCurrentVelocity()F
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 616
    const/4 v0, 0x0

    .line 619
    :goto_0
    return v0

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 619
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getMinTranslationAmount()I
    .locals 2

    .prologue
    .line 395
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;->getAffordanceFalsingFactor()F

    move-result v0

    .line 396
    .local v0, "factor":F
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mMinTranslationAmount:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private getScale(F)F
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 596
    const/high16 v1, 0x3f000000    # 0.5f

    div-float v1, p1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    const v2, 0x3f4ccccd    # 0.8f

    add-float v0, v1, v2

    .line 598
    .local v0, "scale":F
    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method private initDimens()V
    .locals 4

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 173
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    .line 174
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mMinFlingVelocity:I

    .line 175
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mMinTranslationAmount:I

    .line 177
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mMinBackgroundRadius:I

    .line 179
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mHintGrowAmount:I

    .line 181
    new-instance v1, Lcom/android/systemui_ex/statusbar/FlingAnimationUtils;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v2, v3}, Lcom/android/systemui_ex/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mFlingAnimationUtils:Lcom/android/systemui_ex/statusbar/FlingAnimationUtils;

    .line 182
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    const v2, 0x10c000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 184
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    const v2, 0x10c000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 186
    return-void
.end method

.method private initIcons()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;->getLeftIcon()Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    .line 190
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;->setIsLeft(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;->getCenterIcon()Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    .line 192
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;->getRightIcon()Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    .line 193
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;->setIsLeft(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;->getLeftPreview()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;->setPreviewView(Landroid/view/View;)V

    .line 198
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 611
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 612
    return-void
.end method

.method private isBelowFalsingThreshold()Z
    .locals 3

    .prologue
    .line 391
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->getMinTranslationAmount()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private leftSwipePossible()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rightSwipePossible()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private setSwipingInProgress(Z)V
    .locals 1
    .param p1, "inProgress"    # Z

    .prologue
    .line 266
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    .line 267
    if-eqz p1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingStarted()V

    .line 270
    :cond_0
    return-void
.end method

.method private setTranslation(FZZ)V
    .locals 12
    .param p1, "translation"    # F
    .param p2, "isReset"    # Z
    .param p3, "animateReset"    # Z

    .prologue
    const/4 v6, 0x0

    const-wide/16 v10, 0xc8

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 482
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->rightSwipePossible()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 483
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->leftSwipePossible()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 484
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 485
    .local v0, "absTranslation":F
    iget v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->getMinTranslationAmount()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mMotionPerformedByUser:Z

    if-eqz v4, :cond_1

    .line 487
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mMotionPerformedByUser:Z

    .line 489
    :cond_1
    iget v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    cmpl-float v4, p1, v4

    if-nez v4, :cond_2

    if-eqz p2, :cond_7

    :cond_2
    if-nez p3, :cond_7

    .line 511
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mNotificationStackScrollLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v4, :cond_3

    .line 514
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mNotificationStackScrollLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    mul-float v5, v8, p1

    invoke-virtual {v4, v5}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->setTranslationX(F)V

    .line 515
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mKeyguardStatusView:Landroid/view/View;

    mul-float v5, v8, p1

    invoke-virtual {v4, v5}, Landroid/view/View;->setX(F)V

    .line 516
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mGauseShadow:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 518
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCameraIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 519
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mGauseShadow:Landroid/view/View;

    neg-float v5, p1

    iget v6, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mScreenWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 521
    iget v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mMinTranslationAmount:I

    int-to-float v4, v4

    const/high16 v5, 0x42380000    # 46.0f

    div-float/2addr v4, v5

    div-float v4, v0, v4

    float-to-int v2, v4

    .line 522
    .local v2, "imageId":I
    const/16 v4, 0x2d

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 523
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCameraIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCameraImageId:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 524
    const/high16 v4, 0x43e10000    # 450.0f

    iget v5, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mScreenWidth:I

    int-to-float v5, v5

    add-float/2addr v5, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v3, v4

    .line 525
    .local v3, "position":I
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCameraIcon:Landroid/widget/ImageView;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setX(F)V

    .line 526
    iget v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mScreenWidth:I

    int-to-float v4, v4

    mul-float v5, v8, p1

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mScreenWidth:I

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 527
    .local v1, "fraction":F
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    .line 530
    .end local v1    # "fraction":F
    .end local v2    # "imageId":I
    .end local v3    # "position":I
    :cond_3
    iput p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    .line 548
    :cond_4
    :goto_2
    return-void

    .line 482
    .end local v0    # "absTranslation":F
    :cond_5
    invoke-static {v7, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto/16 :goto_0

    .line 483
    :cond_6
    invoke-static {v7, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto/16 :goto_1

    .line 531
    .restart local v0    # "absTranslation":F
    :cond_7
    if-eqz p3, :cond_4

    if-eqz p2, :cond_4

    .line 532
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mNotificationStackScrollLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 537
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 542
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mGauseShadow:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2
.end method

.method private startFinishingCircleAnimation(FLjava/lang/Runnable;)V
    .locals 3
    .param p1, "velocity"    # F
    .param p2, "mAnimationEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 423
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    .line 424
    .local v0, "targetView":Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;->finishAnimation(FLjava/lang/Runnable;)V

    .line 425
    return-void

    .line 423
    .end local v0    # "targetView":Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    goto :goto_0
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 605
    :cond_0
    return-void
.end method

.method private updateIcon(Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;FFZZ)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;
    .param p2, "circleRadius"    # F
    .param p3, "alpha"    # F
    .param p4, "animate"    # Z
    .param p5, "slowRadiusAnimation"    # Z

    .prologue
    .line 581
    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    :goto_0
    return-void

    .line 584
    :cond_0
    invoke-virtual {p1, p2, p5}, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;->setCircleRadius(FZ)V

    .line 585
    invoke-direct {p0, p1, p3, p4}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;FZ)V

    goto :goto_0
.end method

.method private updateIconAlpha(Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;FZ)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;
    .param p2, "alpha"    # F
    .param p3, "animate"    # Z

    .prologue
    .line 589
    invoke-direct {p0, p2}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->getScale(F)F

    move-result v0

    .line 590
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 591
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;->setImageAlpha(FZ)V

    .line 592
    invoke-virtual {p1, v0, p3}, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;->setImageScale(FZ)V

    .line 593
    return-void
.end method


# virtual methods
.method public animateHideLeftRightIcon()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 575
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;FFZZ)V

    .line 576
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;FFZZ)V

    .line 577
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->initDimens()V

    .line 624
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    .line 625
    return-void
.end method

.method public onRtlPropertiesChanged()V
    .locals 0

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    .line 629
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 202
    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mLaunchingInProgress:Z

    if-eqz v6, :cond_3

    :cond_1
    move v5, v4

    .line 252
    :cond_2
    :goto_0
    return v5

    .line 206
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 207
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 209
    .local v2, "x":F
    const/4 v0, 0x0

    .line 210
    .local v0, "isUp":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 212
    :pswitch_1
    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v6, :cond_4

    .line 213
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    .line 215
    :cond_4
    iput v3, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    .line 216
    iput v2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    .line 217
    iget v6, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    iput v6, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    .line 218
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->initVelocityTracker()V

    .line 219
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 220
    iput-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mMotionPerformedByUser:Z

    .line 221
    iput-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    goto :goto_0

    .line 224
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    .line 225
    invoke-direct {p0, p1, v5}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->endMotion(Landroid/view/MotionEvent;Z)V

    goto :goto_0

    .line 228
    :pswitch_3
    iget v6, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    sub-float v1, v2, v6

    .line 229
    .local v1, "w":F
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 230
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->leftSwipePossible()Z

    move-result v6

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-gtz v6, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->rightSwipePossible()Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    neg-int v6, v6

    int-to-float v6, v6

    cmpg-float v6, v1, v6

    if-gez v6, :cond_7

    :cond_6
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-nez v6, :cond_7

    .line 234
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    .line 235
    iput v3, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    .line 236
    iput v2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    .line 237
    iget v6, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    iput v6, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    .line 238
    invoke-direct {p0, v5}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->setSwipingInProgress(Z)V

    .line 240
    :cond_7
    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v6, :cond_2

    .line 241
    iget v6, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    add-float/2addr v6, v2

    iget v7, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    sub-float/2addr v6, v7

    invoke-direct {p0, v6, v4, v4}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->setTranslation(FZZ)V

    goto/16 :goto_0

    .line 246
    .end local v1    # "w":F
    :pswitch_4
    const/4 v0, 0x1

    .line 248
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 249
    if-nez v0, :cond_8

    move v4, v5

    :cond_8
    invoke-direct {p0, p1, v4}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->endMotion(Landroid/view/MotionEvent;Z)V

    goto/16 :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 647
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 650
    :cond_0
    invoke-direct {p0, v1, v2, v2}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->setTranslation(FZZ)V

    .line 651
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->setSwipingInProgress(Z)V

    .line 652
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCameraIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCameraIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mGauseShadow:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 656
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mGauseShadow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 659
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mBackdropBack:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 660
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 662
    :cond_3
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mWallpaperView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 663
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mWallpaperView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 665
    :cond_4
    return-void
.end method

.method public reset(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 633
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 636
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->setTranslation(FZZ)V

    .line 637
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->setSwipingInProgress(Z)V

    .line 638
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCameraIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCameraIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mGauseShadow:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 642
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mGauseShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 645
    :cond_2
    return-void
.end method

.method public setCameraIcon(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "cameraicon"    # Landroid/widget/ImageView;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCameraIcon:Landroid/widget/ImageView;

    if-eq v0, p1, :cond_0

    .line 142
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mCameraIcon:Landroid/widget/ImageView;

    .line 144
    :cond_0
    return-void
.end method

.method public setCameraLauchingInProgress(Z)V
    .locals 0
    .param p1, "inProgress"    # Z

    .prologue
    .line 429
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mLaunchingInProgress:Z

    .line 430
    return-void
.end method

.method public setGauseShadow(Landroid/view/View;)V
    .locals 1
    .param p1, "gauseshadow"    # Landroid/view/View;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mGauseShadow:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 147
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mGauseShadow:Landroid/view/View;

    .line 149
    :cond_0
    return-void
.end method

.method public setKeyguardMediaWallpaperView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "wallpaperView"    # Landroid/widget/ImageView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mBackdropBack:Landroid/widget/ImageView;

    if-eq v0, p1, :cond_0

    .line 153
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mBackdropBack:Landroid/widget/ImageView;

    .line 156
    :cond_0
    return-void
.end method

.method public setKeyguardStatusView(Landroid/view/View;)V
    .locals 1
    .param p1, "keyguardstatusView"    # Landroid/view/View;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mKeyguardStatusView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 167
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mKeyguardStatusView:Landroid/view/View;

    .line 169
    :cond_0
    return-void
.end method

.method public setKeyguardWallpaperView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "wallpaperView"    # Landroid/widget/ImageView;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mWallpaperView:Landroid/widget/ImageView;

    if-eq v0, p1, :cond_0

    .line 160
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mWallpaperView:Landroid/widget/ImageView;

    .line 163
    :cond_0
    return-void
.end method

.method public setNotificationStackScrollLayout(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 1
    .param p1, "notificationPanelView"    # Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mNotificationStackScrollLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    if-eq v0, p1, :cond_0

    .line 124
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardAffordanceHelper;->mNotificationStackScrollLayout:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    .line 126
    :cond_0
    return-void
.end method
