.class Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/SwipeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationClickHintAnimationHelper"
.end annotation


# instance fields
.field private anim:Landroid/animation/ObjectAnimator;

.field private animView:Landroid/view/View;

.field private isHintAnimationRunningInterrupted:Z

.field private mNotificationClickHintOnKeyguard:Landroid/animation/AnimatorSet;

.field private resumeAnim:Landroid/animation/ObjectAnimator;

.field private scaleAnimX:Landroid/animation/ObjectAnimator;

.field private scaleAnimY:Landroid/animation/ObjectAnimator;

.field private scaledView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui_ex/SwipeHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/View;)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 351
    iput-object p1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-object p2, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->animView:Landroid/view/View;

    .line 353
    # getter for: Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;
    invoke-static {p1}, Lcom/android/systemui_ex/SwipeHelper;->access$400(Lcom/android/systemui_ex/SwipeHelper;)Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->getSwipeOpenNotificationIcon()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->scaledView:Landroid/view/View;

    .line 354
    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->animView:Landroid/view/View;

    const/high16 v2, 0x428c0000    # 70.0f

    # invokes: Lcom/android/systemui_ex/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    invoke-static {p1, v1, v2}, Lcom/android/systemui_ex/SwipeHelper;->access$500(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->anim:Landroid/animation/ObjectAnimator;

    .line 355
    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->animView:Landroid/view/View;

    const/4 v2, 0x0

    # invokes: Lcom/android/systemui_ex/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    invoke-static {p1, v1, v2}, Lcom/android/systemui_ex/SwipeHelper;->access$500(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->resumeAnim:Landroid/animation/ObjectAnimator;

    .line 356
    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->resumeAnim:Landroid/animation/ObjectAnimator;

    # getter for: Lcom/android/systemui_ex/SwipeHelper;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {p1}, Lcom/android/systemui_ex/SwipeHelper;->access$600(Lcom/android/systemui_ex/SwipeHelper;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 357
    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->resumeAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 358
    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->resumeAnim:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper$1;-><init>(Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;Lcom/android/systemui_ex/SwipeHelper;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 369
    # getter for: Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;
    invoke-static {p1}, Lcom/android/systemui_ex/SwipeHelper;->access$400(Lcom/android/systemui_ex/SwipeHelper;)Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->getSwipeOpenNotificationIcon()Landroid/view/View;

    move-result-object v0

    .line 370
    .local v0, "scaledView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->setUpSwipeIndicationInitialScale(Landroid/view/View;)V

    .line 371
    const-string v1, "scaleX"

    new-array v2, v5, [F

    aput v6, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->scaleAnimX:Landroid/animation/ObjectAnimator;

    .line 373
    const-string v1, "scaleY"

    new-array v2, v5, [F

    aput v6, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->scaleAnimY:Landroid/animation/ObjectAnimator;

    .line 375
    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->mNotificationClickHintOnKeyguard:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->mNotificationClickHintOnKeyguard:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    iput-boolean v5, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->isHintAnimationRunningInterrupted:Z

    .line 378
    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->mNotificationClickHintOnKeyguard:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    .line 379
    iput-boolean v4, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->isHintAnimationRunningInterrupted:Z

    .line 382
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->mNotificationClickHintOnKeyguard:Landroid/animation/AnimatorSet;

    .line 383
    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->mNotificationClickHintOnKeyguard:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper$2;-><init>(Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;Lcom/android/systemui_ex/SwipeHelper;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 388
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->clearHostedFields()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->setUpNotificationSwipeHelperWhenStartingKeyguardHint(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->isHintAnimationRunningInterrupted:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->isHintAnimationRunningInterrupted:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->animView:Landroid/view/View;

    return-object v0
.end method

.method private clearHostedFields()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 391
    iput-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->animView:Landroid/view/View;

    .line 392
    iput-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->anim:Landroid/animation/ObjectAnimator;

    .line 393
    iput-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->scaledView:Landroid/view/View;

    .line 394
    iput-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->resumeAnim:Landroid/animation/ObjectAnimator;

    .line 395
    iput-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->scaleAnimX:Landroid/animation/ObjectAnimator;

    .line 396
    iput-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->scaleAnimY:Landroid/animation/ObjectAnimator;

    .line 397
    iput-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->mNotificationClickHintOnKeyguard:Landroid/animation/AnimatorSet;

    .line 398
    return-void
.end method

.method private setUpNotificationSwipeHelperWhenStartingKeyguardHint(Landroid/view/View;)V
    .locals 6
    .param p1, "animView"    # Landroid/view/View;

    .prologue
    .line 421
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    .line 422
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    move-result v3

    .line 423
    .local v3, "z":F
    iget-object v4, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    # invokes: Lcom/android/systemui_ex/SwipeHelper;->getSize(Landroid/view/View;)F
    invoke-static {v4, p1}, Lcom/android/systemui_ex/SwipeHelper;->access$1200(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/View;)F

    move-result v1

    .local v1, "width":F
    move-object v4, p1

    .line 424
    check-cast v4, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v0

    .line 425
    .local v0, "height":I
    iget-object v4, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    # getter for: Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;
    invoke-static {v4}, Lcom/android/systemui_ex/SwipeHelper;->access$400(Lcom/android/systemui_ex/SwipeHelper;)Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->setSwipeIndicationY(F)V

    .line 426
    iget-object v4, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    # getter for: Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;
    invoke-static {v4}, Lcom/android/systemui_ex/SwipeHelper;->access$400(Lcom/android/systemui_ex/SwipeHelper;)Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-result-object v4

    const v5, 0x3dcccccd    # 0.1f

    sub-float v5, v3, v5

    invoke-interface {v4, v5}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->setSwipeIndicationZ(F)V

    .line 427
    iget-object v4, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    # getter for: Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;
    invoke-static {v4}, Lcom/android/systemui_ex/SwipeHelper;->access$400(Lcom/android/systemui_ex/SwipeHelper;)Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-result-object v4

    invoke-interface {v4, v1, v0}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->setSwipeIndicationWidthAndHeight(FI)V

    .line 428
    iget-object v4, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    # getter for: Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;
    invoke-static {v4}, Lcom/android/systemui_ex/SwipeHelper;->access$400(Lcom/android/systemui_ex/SwipeHelper;)Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->setDismissNotificationIconVisibility(Z)V

    .line 429
    iget-object v4, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    # getter for: Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;
    invoke-static {v4}, Lcom/android/systemui_ex/SwipeHelper;->access$400(Lcom/android/systemui_ex/SwipeHelper;)Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->showOpenNotificationBackground()V

    .line 430
    iget-object v4, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    # getter for: Lcom/android/systemui_ex/SwipeHelper;->mNotificationSwipeHelper:Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;
    invoke-static {v4}, Lcom/android/systemui_ex/SwipeHelper;->access$400(Lcom/android/systemui_ex/SwipeHelper;)Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/android/systemui_ex/statusbar/NotificationSwipeHelper;->setOpenNotificationIconVisibility(Z)V

    .line 431
    iget-object v4, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    # invokes: Lcom/android/systemui_ex/SwipeHelper;->showNotificationSwipeBackground(Landroid/view/View;)V
    invoke-static {v4, p1}, Lcom/android/systemui_ex/SwipeHelper;->access$1300(Lcom/android/systemui_ex/SwipeHelper;Landroid/view/View;)V

    .line 432
    return-void
.end method

.method private setUpSwipeIndicationInitialScale(Landroid/view/View;)V
    .locals 1
    .param p1, "scaledView"    # Landroid/view/View;

    .prologue
    const v0, 0x3ecccccd    # 0.4f

    .line 416
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 417
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 418
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->mNotificationClickHintOnKeyguard:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->mNotificationClickHintOnKeyguard:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->isHintAnimationRunningInterrupted:Z

    .line 413
    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->mNotificationClickHintOnKeyguard:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->scaleAnimX:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 402
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->mNotificationClickHintOnKeyguard:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->scaleAnimY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 403
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->mNotificationClickHintOnKeyguard:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->resumeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->scaleAnimY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 404
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->mNotificationClickHintOnKeyguard:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->this$0:Lcom/android/systemui_ex/SwipeHelper;

    # getter for: Lcom/android/systemui_ex/SwipeHelper;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/systemui_ex/SwipeHelper;->access$600(Lcom/android/systemui_ex/SwipeHelper;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 405
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->mNotificationClickHintOnKeyguard:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 406
    iget-object v0, p0, Lcom/android/systemui_ex/SwipeHelper$NotificationClickHintAnimationHelper;->mNotificationClickHintOnKeyguard:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 407
    return-void
.end method
