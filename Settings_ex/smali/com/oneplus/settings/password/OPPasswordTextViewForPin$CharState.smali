.class Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;
.super Ljava/lang/Object;
.source "OPPasswordTextViewForPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/password/OPPasswordTextViewForPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CharState"
.end annotation


# instance fields
.field currentDotSizeFactor:F

.field currentDotSizeFactor2:F

.field currentDotSizeFactor3:F

.field currentDotSizeFactor4:F

.field currentEmptyCircleSizeFactor:F

.field currentTextSizeFactor:F

.field currentTextTranslationY:F

.field currentWidthFactor:F

.field dotAnimationIsGrowing:Z

.field dotAnimator:Landroid/animation/Animator;

.field dotFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private dotSizeUpdater2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private dotSizeUpdater3:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private dotSizeUpdater4:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private dotSwapperRunnable:Ljava/lang/Runnable;

.field emptyCircleAnimationIsGrowing:Z

.field emptyCircleAnimator:Landroid/animation/ValueAnimator;

.field emptyCircleFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private emptyCircleSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field isDotSwapPending:Z

.field passwordErrorFinishListener:Landroid/animation/Animator$AnimatorListener;

.field removeEndListener:Landroid/animation/Animator$AnimatorListener;

.field textAnimationIsGrowing:Z

.field textAnimator:Landroid/animation/ValueAnimator;

.field textFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field textTranslateAnimator:Landroid/animation/ValueAnimator;

.field textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field final synthetic this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

.field whichChar:C

.field widthAnimationIsGrowing:Z

.field widthAnimator:Landroid/animation/ValueAnimator;

.field widthFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 362
    iput-object p1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    .line 380
    iput v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextTranslationY:F

    .line 383
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$1;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->removeEndListener:Landroid/animation/Animator$AnimatorListener;

    .line 407
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$2;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 414
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$3;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->passwordErrorFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 421
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$4;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$4;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 428
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$5;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$5;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 435
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$6;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$6;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->emptyCircleFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 443
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$7;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$7;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 450
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$8;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$8;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 459
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$9;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$9;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 468
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$10;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$10;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater3:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 477
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$11;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$11;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater4:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 486
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$12;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$12;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 495
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$13;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$13;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 504
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$14;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$14;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->emptyCircleSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 513
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$15;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$15;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 522
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$16;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$16;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;Lcom/oneplus/settings/password/OPPasswordTextViewForPin$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;
    .param p2, "x1"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin$1;

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;Landroid/animation/Animator;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->performSwap()V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 787
    if-eqz p1, :cond_0

    .line 788
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 790
    :cond_0
    return-void
.end method

.method private performSwap()V
    .locals 2

    .prologue
    .line 623
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startTextDisappearAnimation(J)V

    .line 624
    const-wide/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startDotAppearAnimation(J)V

    .line 626
    return-void
.end method

.method private postDotSwap(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    .line 602
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 603
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->isDotSwapPending:Z

    .line 604
    return-void
.end method

.method private removeDotSwapCallbacks()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->isDotSwapPending:Z

    .line 609
    return-void
.end method

.method private startDotAppearAnimation(J)V
    .locals 13
    .param p1, "delay"    # J

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 754
    iget-object v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v6}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 755
    iget-object v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mShowPassword:Z
    invoke-static {v6}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$500(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 757
    new-array v6, v9, [F

    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    aput v7, v6, v10

    const/high16 v7, 0x3fc00000    # 1.5f

    aput v7, v6, v8

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 759
    .local v2, "overShootAnimator":Landroid/animation/ValueAnimator;
    iget-object v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 760
    iget-object v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v6}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$800(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 761
    const-wide/16 v4, 0xa0

    .line 763
    .local v4, "overShootDuration":J
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 764
    new-array v6, v9, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 766
    .local v3, "settleBackAnimator":Landroid/animation/ValueAnimator;
    iget-object v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 767
    const-wide/16 v6, 0x140

    sub-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 768
    iget-object v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 769
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 770
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v6, v9, [Landroid/animation/Animator;

    aput-object v2, v6, v10

    aput-object v3, v6, v8

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 771
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 772
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 773
    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 783
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v2    # "overShootAnimator":Landroid/animation/ValueAnimator;
    .end local v3    # "settleBackAnimator":Landroid/animation/ValueAnimator;
    .end local v4    # "overShootDuration":J
    :goto_0
    iput-boolean v8, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    .line 784
    return-void

    .line 775
    :cond_0
    new-array v6, v9, [F

    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    aput v7, v6, v10

    aput v11, v6, v8

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 776
    .local v1, "growAnimator":Landroid/animation/ValueAnimator;
    iget-object v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 777
    const/high16 v6, 0x43200000    # 160.0f

    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    sub-float v7, v11, v7

    mul-float/2addr v6, v7

    float-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 778
    iget-object v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 779
    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 780
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 781
    iput-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    goto :goto_0

    .line 764
    nop

    :array_0
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startDotDisappearAnimation(J)V
    .locals 7
    .param p1, "startDelay"    # J

    .prologue
    const/4 v6, 0x0

    .line 653
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 654
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    aput v4, v1, v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 655
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 656
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 657
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDisappearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$600(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 658
    const/high16 v1, 0x43200000    # 160.0f

    iget v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v1, v4

    float-to-long v2, v1

    .line 659
    .local v2, "duration":J
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 660
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 661
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 662
    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 663
    iput-boolean v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    .line 664
    return-void
.end method

.method private startEmptyCircleAppearAnimation(J)V
    .locals 7
    .param p1, "startDelay"    # J

    .prologue
    .line 707
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->emptyCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 708
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 709
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->emptyCircleSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 710
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->emptyCircleFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 711
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$800(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 712
    const/high16 v1, 0x437a0000    # 250.0f

    iget v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v1, v4

    float-to-long v2, v1

    .line 714
    .local v2, "duration":J
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 715
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 716
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 717
    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->emptyCircleAnimator:Landroid/animation/ValueAnimator;

    .line 718
    return-void

    .line 708
    :array_0
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startPasswordErrorAnimation()V
    .locals 4

    .prologue
    .line 667
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    .line 668
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 669
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 670
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;
    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$700(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 671
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 672
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 673
    return-void

    .line 668
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startPasswordErrorAnimation2()V
    .locals 4

    .prologue
    .line 676
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    .line 677
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 678
    .local v0, "animator2":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 679
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;
    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$700(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 680
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 681
    const-wide/16 v2, 0x42

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 682
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 683
    return-void

    .line 677
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startPasswordErrorAnimation3()V
    .locals 4

    .prologue
    .line 686
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    .line 687
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 688
    .local v0, "animator3":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater3:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 689
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;
    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$700(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 690
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 691
    const-wide/16 v2, 0x84

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 692
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 693
    return-void

    .line 687
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startPasswordErrorAnimation4()V
    .locals 4

    .prologue
    .line 696
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    .line 697
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 698
    .local v0, "animator4":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater4:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 699
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;
    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$700(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 700
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->passwordErrorFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 701
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 702
    const-wide/16 v2, 0xc6

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 703
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 704
    return-void

    .line 697
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startTextAppearAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 731
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 732
    new-array v0, v5, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    aput v2, v0, v1

    aput v3, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 733
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 734
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 735
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$800(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 736
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x43200000    # 160.0f

    iget v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 737
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 738
    iput-boolean v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    .line 742
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 743
    new-array v0, v5, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 744
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 745
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 746
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$800(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 747
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 748
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 751
    :cond_0
    return-void

    .line 743
    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x0
    .end array-data
.end method

.method private startTextDisappearAnimation(J)V
    .locals 5
    .param p1, "startDelay"    # J

    .prologue
    const/4 v4, 0x0

    .line 641
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 642
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    aput v1, v0, v4

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 643
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 644
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 645
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDisappearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$600(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 646
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x43200000    # 160.0f

    iget v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 647
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 648
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 649
    iput-boolean v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    .line 650
    return-void
.end method

.method private startWidthAppearAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 721
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 722
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentWidthFactor:F

    aput v2, v0, v1

    aput v3, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 723
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 724
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 725
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x43200000    # 160.0f

    iget v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentWidthFactor:F

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 726
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 727
    iput-boolean v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimationIsGrowing:Z

    .line 728
    return-void
.end method

.method private startWidthDisappearAnimation(J)V
    .locals 5
    .param p1, "widthDelay"    # J

    .prologue
    const/4 v4, 0x0

    .line 629
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 630
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentWidthFactor:F

    aput v1, v0, v4

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 631
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 632
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 633
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->removeEndListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 634
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x43200000    # 160.0f

    iget v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentWidthFactor:F

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 635
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 636
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 637
    iput-boolean v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimationIsGrowing:Z

    .line 638
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FIFF)F
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "currentDrawPosition"    # F
    .param p3, "charHeight"    # I
    .param p4, "yPosition"    # F
    .param p5, "charLength"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 799
    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    move v4, v5

    .line 800
    .local v4, "textVisible":Z
    :goto_0
    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    move v3, v5

    .line 801
    .local v3, "dotVisible":Z
    :goto_1
    iget v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentWidthFactor:F

    mul-float v1, p5, v5

    .line 802
    .local v1, "charWidth":F
    if-eqz v4, :cond_0

    .line 803
    int-to-float v5, p3

    div-float/2addr v5, v9

    iget v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    mul-float/2addr v5, v6

    add-float/2addr v5, p4

    int-to-float v6, p3

    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextTranslationY:F

    mul-float/2addr v6, v7

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v7

    add-float v2, v5, v6

    .line 805
    .local v2, "currYPosition":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 806
    div-float v5, v1, v9

    add-float v0, p2, v5

    .line 807
    .local v0, "centerX":F
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 808
    iget v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    iget v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 809
    iget-char v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->whichChar:C

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;
    invoke-static {v6}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$900(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v5, v8, v8, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 810
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 812
    .end local v0    # "centerX":F
    .end local v2    # "currYPosition":F
    :cond_0
    if-eqz v3, :cond_1

    .line 813
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 814
    div-float v5, v1, v9

    add-float v0, p2, v5

    .line 815
    .restart local v0    # "centerX":F
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 816
    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSize:I
    invoke-static {v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1000(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;
    invoke-static {v6}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$900(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v8, v8, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 817
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 819
    .end local v0    # "centerX":F
    :cond_1
    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCharPadding:I
    invoke-static {v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1100(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentWidthFactor:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    return v5

    .end local v1    # "charWidth":F
    .end local v3    # "dotVisible":Z
    .end local v4    # "textVisible":Z
    :cond_2
    move v4, v6

    .line 799
    goto :goto_0

    .restart local v4    # "textVisible":Z
    :cond_3
    move v3, v6

    .line 800
    goto :goto_1
.end method

.method public drawErrorAnimation(Landroid/graphics/Canvas;FIFF)F
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "currentDrawPosition"    # F
    .param p3, "charHeight"    # I
    .param p4, "yPosition"    # F
    .param p5, "charLength"    # F

    .prologue
    .line 824
    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    const/4 v6, 0x1

    .line 825
    .local v6, "emptyCircleVisible":Z
    :goto_0
    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    const/4 v5, 0x1

    .line 826
    .local v5, "dotVisible":Z
    :goto_1
    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    const/4 v2, 0x1

    .line 827
    .local v2, "dot2Visible":Z
    :goto_2
    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    const/4 v3, 0x1

    .line 828
    .local v3, "dot3Visible":Z
    :goto_3
    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    const/4 v4, 0x1

    .line 829
    .local v4, "dot4Visible":Z
    :goto_4
    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentWidthFactor:F

    mul-float v1, p5, v7

    .line 830
    .local v1, "charWidth":F
    if-eqz v5, :cond_5

    .line 831
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 832
    move v0, p2

    .line 833
    .local v0, "centerX":F
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 834
    iget-object v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;
    invoke-static {v7}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1200(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v7

    iget v8, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 835
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSize:I
    invoke-static {v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1000(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1200(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 836
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 845
    :goto_5
    if-eqz v2, :cond_6

    .line 846
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 847
    move v0, p2

    .line 848
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 849
    iget-object v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;
    invoke-static {v7}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1500(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v7

    iget v8, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 850
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSize:I
    invoke-static {v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1000(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1500(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 851
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 860
    :goto_6
    if-eqz v3, :cond_7

    .line 861
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 862
    move v0, p2

    .line 863
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 864
    iget-object v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;
    invoke-static {v7}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1600(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v7

    iget v8, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 865
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSize:I
    invoke-static {v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1000(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1600(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 866
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 875
    :goto_7
    if-eqz v4, :cond_8

    .line 876
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 877
    move v0, p2

    .line 878
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 879
    iget-object v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;
    invoke-static {v7}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1700(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v7

    iget v8, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 880
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSize:I
    invoke-static {v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1000(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1700(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 881
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 889
    :goto_8
    iget-object v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCharPadding:I
    invoke-static {v7}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1100(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentWidthFactor:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    return v7

    .line 824
    .end local v0    # "centerX":F
    .end local v1    # "charWidth":F
    .end local v2    # "dot2Visible":Z
    .end local v3    # "dot3Visible":Z
    .end local v4    # "dot4Visible":Z
    .end local v5    # "dotVisible":Z
    .end local v6    # "emptyCircleVisible":Z
    :cond_0
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 825
    .restart local v6    # "emptyCircleVisible":Z
    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 826
    .restart local v5    # "dotVisible":Z
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 827
    .restart local v2    # "dot2Visible":Z
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 828
    .restart local v3    # "dot3Visible":Z
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 838
    .restart local v1    # "charWidth":F
    .restart local v4    # "dot4Visible":Z
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 839
    move v0, p2

    .line 840
    .restart local v0    # "centerX":F
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 841
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSizeEmpty:I
    invoke-static {v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1300(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1400(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 842
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    .line 853
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 854
    move v0, p2

    .line 855
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 856
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSizeEmpty:I
    invoke-static {v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1300(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1400(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 857
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    .line 868
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 869
    move v0, p2

    .line 870
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 871
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSizeEmpty:I
    invoke-static {v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1300(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1400(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 872
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    .line 883
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 884
    move v0, p2

    .line 885
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 886
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSizeEmpty:I
    invoke-static {v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1300(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1400(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 887
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_8
.end method

.method resetState()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 531
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->whichChar:C

    .line 532
    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    .line 533
    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    .line 534
    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    .line 535
    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    .line 536
    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    .line 537
    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentWidthFactor:F

    .line 538
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 539
    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 540
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 541
    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 542
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 543
    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 544
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->emptyCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 545
    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->emptyCircleAnimator:Landroid/animation/ValueAnimator;

    .line 546
    iput v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    .line 547
    iput v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextTranslationY:F

    .line 548
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    .line 549
    return-void
.end method

.method startAppearAnimation()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 571
    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 572
    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 573
    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mShowPassword:Z
    invoke-static {v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$500(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    if-nez v5, :cond_7

    :cond_0
    move v0, v3

    .line 575
    .local v0, "dotNeedsAnimation":Z
    :goto_0
    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mShowPassword:Z
    invoke-static {v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$500(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    if-nez v5, :cond_8

    :cond_1
    move v1, v3

    .line 577
    .local v1, "textNeedsAnimation":Z
    :goto_1
    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimationIsGrowing:Z

    if-nez v5, :cond_9

    :cond_2
    move v2, v3

    .line 579
    .local v2, "widthNeedsAnimation":Z
    :goto_2
    if-eqz v0, :cond_3

    .line 580
    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startDotAppearAnimation(J)V

    .line 583
    :cond_3
    if-eqz v1, :cond_4

    .line 584
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startTextAppearAnimation()V

    .line 586
    :cond_4
    if-eqz v2, :cond_5

    .line 587
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startWidthAppearAnimation()V

    .line 589
    :cond_5
    iget-object v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mShowPassword:Z
    invoke-static {v3}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$500(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 590
    const-wide/16 v4, 0xfa

    invoke-direct {p0, v4, v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->postDotSwap(J)V

    .line 594
    :cond_6
    return-void

    .end local v0    # "dotNeedsAnimation":Z
    .end local v1    # "textNeedsAnimation":Z
    .end local v2    # "widthNeedsAnimation":Z
    :cond_7
    move v0, v4

    .line 573
    goto :goto_0

    .restart local v0    # "dotNeedsAnimation":Z
    :cond_8
    move v1, v4

    .line 575
    goto :goto_1

    .restart local v1    # "textNeedsAnimation":Z
    :cond_9
    move v2, v4

    .line 577
    goto :goto_2
.end method

.method startRemoveAnimation(JJ)V
    .locals 7
    .param p1, "startDelay"    # J
    .param p3, "widthDelay"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 552
    iget v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    if-eqz v5, :cond_9

    :cond_1
    move v0, v4

    .line 554
    .local v0, "dotNeedsAnimation":Z
    :goto_0
    iget v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    if-eqz v5, :cond_a

    :cond_3
    move v1, v4

    .line 556
    .local v1, "textNeedsAnimation":Z
    :goto_1
    iget v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentWidthFactor:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_5

    :cond_4
    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimationIsGrowing:Z

    if-eqz v5, :cond_b

    :cond_5
    move v2, v4

    .line 558
    .local v2, "widthNeedsAnimation":Z
    :goto_2
    if-eqz v0, :cond_6

    .line 559
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startDotDisappearAnimation(J)V

    .line 561
    :cond_6
    if-eqz v1, :cond_7

    .line 562
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startTextDisappearAnimation(J)V

    .line 564
    :cond_7
    const-wide/16 v4, 0x108

    invoke-direct {p0, v4, v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startEmptyCircleAppearAnimation(J)V

    .line 565
    if-eqz v2, :cond_8

    .line 566
    invoke-direct {p0, p3, p4}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startWidthDisappearAnimation(J)V

    .line 568
    :cond_8
    return-void

    .end local v0    # "dotNeedsAnimation":Z
    .end local v1    # "textNeedsAnimation":Z
    .end local v2    # "widthNeedsAnimation":Z
    :cond_9
    move v0, v3

    .line 552
    goto :goto_0

    .restart local v0    # "dotNeedsAnimation":Z
    :cond_a
    move v1, v3

    .line 554
    goto :goto_1

    .restart local v1    # "textNeedsAnimation":Z
    :cond_b
    move v2, v3

    .line 556
    goto :goto_2
.end method

.method swapToDotWhenAppearFinished()V
    .locals 6

    .prologue
    .line 612
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    .line 613
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    .line 614
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    iget-object v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 616
    .local v0, "remainingDuration":J
    const-wide/16 v2, 0x64

    add-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->postDotSwap(J)V

    .line 620
    .end local v0    # "remainingDuration":J
    :goto_0
    return-void

    .line 618
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->performSwap()V

    goto :goto_0
.end method
