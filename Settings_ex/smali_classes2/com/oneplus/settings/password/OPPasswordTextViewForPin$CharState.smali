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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$10;,
        Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$11;,
        Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$12;,
        Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$13;,
        Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$14;,
        Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$15;,
        Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$16;,
        Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$1;,
        Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$2;,
        Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$3;,
        Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$4;,
        Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$5;,
        Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$6;,
        Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$7;,
        Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$8;,
        Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$9;
    }
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
.method static synthetic -wrap0(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->performSwap()V

    return-void
.end method

.method private constructor <init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 363
    iput-object p1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    .line 381
    iput v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextTranslationY:F

    .line 384
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$1;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->removeEndListener:Landroid/animation/Animator$AnimatorListener;

    .line 408
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$2;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 415
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$3;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->passwordErrorFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 422
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$4;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$4;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 429
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$5;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$5;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 436
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$6;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$6;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->emptyCircleFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 444
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$7;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$7;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 452
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$8;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$8;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    .line 451
    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 461
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$9;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$9;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    .line 460
    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 470
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$10;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$10;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    .line 469
    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater3:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 479
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$11;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$11;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    .line 478
    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater4:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 488
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$12;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$12;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    .line 487
    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 497
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$13;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$13;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    .line 496
    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 506
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$14;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$14;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    .line 505
    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->emptyCircleSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 515
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$15;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$15;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    .line 514
    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 523
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$16;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$16;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    .line 363
    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 788
    if-eqz p1, :cond_0

    .line 789
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 787
    :cond_0
    return-void
.end method

.method private performSwap()V
    .locals 2

    .prologue
    .line 624
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startTextDisappearAnimation(J)V

    .line 625
    const-wide/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startDotAppearAnimation(J)V

    .line 623
    return-void
.end method

.method private postDotSwap(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    .line 603
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->isDotSwapPending:Z

    .line 601
    return-void
.end method

.method private removeDotSwapCallbacks()V
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->isDotSwapPending:Z

    .line 607
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

    .line 755
    iget-object v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v6}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 756
    iget-object v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v6}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get13(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 758
    new-array v6, v9, [F

    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    aput v7, v6, v10

    .line 759
    const/high16 v7, 0x3fc00000    # 1.5f

    aput v7, v6, v8

    .line 758
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 760
    .local v2, "overShootAnimator":Landroid/animation/ValueAnimator;
    iget-object v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 761
    iget-object v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v6}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get1(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 762
    const-wide/16 v4, 0xa0

    .line 764
    .local v4, "overShootDuration":J
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 765
    new-array v6, v9, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 767
    .local v3, "settleBackAnimator":Landroid/animation/ValueAnimator;
    iget-object v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 768
    const-wide/16 v6, 0xa0

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 769
    iget-object v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 770
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 771
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v6, v9, [Landroid/animation/Animator;

    aput-object v2, v6, v10

    aput-object v3, v6, v8

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 772
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 773
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 774
    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 784
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v2    # "overShootAnimator":Landroid/animation/ValueAnimator;
    .end local v3    # "settleBackAnimator":Landroid/animation/ValueAnimator;
    .end local v4    # "overShootDuration":J
    :goto_0
    iput-boolean v8, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    .line 754
    return-void

    .line 776
    :cond_0
    new-array v6, v9, [F

    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    aput v7, v6, v10

    aput v11, v6, v8

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 777
    .local v1, "growAnimator":Landroid/animation/ValueAnimator;
    iget-object v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 778
    iget v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    sub-float v6, v11, v6

    const/high16 v7, 0x43200000    # 160.0f

    mul-float/2addr v6, v7

    float-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 779
    iget-object v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 780
    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 781
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 782
    iput-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    goto :goto_0

    .line 765
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

    .line 654
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 655
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    aput v4, v1, v6

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 656
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 657
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 658
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get4(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 659
    iget v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v4, 0x43200000    # 160.0f

    mul-float/2addr v1, v4

    float-to-long v2, v1

    .line 660
    .local v2, "duration":J
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 661
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 662
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 663
    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 664
    iput-boolean v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    .line 653
    return-void
.end method

.method private startEmptyCircleAppearAnimation(J)V
    .locals 5
    .param p1, "startDelay"    # J

    .prologue
    .line 708
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->emptyCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 709
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 710
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->emptyCircleSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 711
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->emptyCircleFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 712
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get1(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 713
    iget v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v4, 0x437a0000    # 250.0f

    mul-float/2addr v1, v4

    float-to-long v2, v1

    .line 715
    .local v2, "duration":J
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 716
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 717
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 718
    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->emptyCircleAnimator:Landroid/animation/ValueAnimator;

    .line 707
    return-void

    .line 709
    :array_0
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startPasswordErrorAnimation()V
    .locals 4

    .prologue
    .line 668
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    .line 669
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 670
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 671
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get0(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 672
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 673
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 667
    return-void

    .line 669
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
    .line 677
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    .line 678
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 679
    .local v0, "animator2":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 680
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get0(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 681
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 682
    const-wide/16 v2, 0x42

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 683
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 676
    return-void

    .line 678
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startPasswordErrorAnimation3()V
    .locals 4

    .prologue
    .line 687
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    .line 688
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 689
    .local v0, "animator3":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater3:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 690
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get0(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 691
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 692
    const-wide/16 v2, 0x84

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 693
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 686
    return-void

    .line 688
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startPasswordErrorAnimation4()V
    .locals 4

    .prologue
    .line 697
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    .line 698
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 699
    .local v0, "animator4":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater4:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 700
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get0(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 701
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->passwordErrorFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 702
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 703
    const-wide/16 v2, 0xc6

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 704
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 696
    return-void

    .line 698
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

    .line 732
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 733
    new-array v0, v5, [F

    iget v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    const/4 v2, 0x0

    aput v1, v0, v2

    aput v3, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 734
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 735
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 736
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get1(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 737
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    sub-float v1, v3, v1

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 738
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 739
    iput-boolean v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    .line 743
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 744
    new-array v0, v5, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 745
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 746
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 747
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get1(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 748
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 749
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 731
    :cond_0
    return-void

    .line 744
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

    .line 642
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 643
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    aput v1, v0, v4

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 644
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 645
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 646
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get4(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 647
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 648
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 649
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 650
    iput-boolean v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    .line 641
    return-void
.end method

.method private startWidthAppearAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 722
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 723
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentWidthFactor:F

    const/4 v2, 0x0

    aput v1, v0, v2

    aput v3, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 724
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 725
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 726
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentWidthFactor:F

    sub-float v1, v3, v1

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 727
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 728
    iput-boolean v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimationIsGrowing:Z

    .line 721
    return-void
.end method

.method private startWidthDisappearAnimation(J)V
    .locals 5
    .param p1, "widthDelay"    # J

    .prologue
    const/4 v4, 0x0

    .line 630
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 631
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentWidthFactor:F

    aput v1, v0, v4

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 632
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 633
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 634
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->removeEndListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 635
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentWidthFactor:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 636
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 637
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 638
    iput-boolean v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimationIsGrowing:Z

    .line 629
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
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 800
    iget v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_2

    const/4 v4, 0x1

    .line 801
    .local v4, "textVisible":Z
    :goto_0
    iget v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_3

    const/4 v3, 0x1

    .line 802
    .local v3, "dotVisible":Z
    :goto_1
    iget v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentWidthFactor:F

    mul-float v1, p5, v5

    .line 803
    .local v1, "charWidth":F
    if-eqz v4, :cond_0

    .line 804
    int-to-float v5, p3

    div-float/2addr v5, v9

    iget v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    mul-float/2addr v5, v6

    add-float/2addr v5, p4

    .line 805
    int-to-float v6, p3

    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextTranslationY:F

    mul-float/2addr v6, v7

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v7

    .line 804
    add-float v2, v5, v6

    .line 806
    .local v2, "currYPosition":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 807
    div-float v5, v1, v9

    add-float v0, p2, v5

    .line 808
    .local v0, "centerX":F
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 809
    iget v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    iget v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 810
    iget-char v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->whichChar:C

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v6}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get12(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v5, v8, v8, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 811
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 813
    .end local v0    # "centerX":F
    .end local v2    # "currYPosition":F
    :cond_0
    if-eqz v3, :cond_1

    .line 814
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 815
    div-float v5, v1, v9

    add-float v0, p2, v5

    .line 816
    .restart local v0    # "centerX":F
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 817
    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get5(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v6}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get12(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v8, v8, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 818
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 820
    .end local v0    # "centerX":F
    :cond_1
    iget-object v5, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get2(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentWidthFactor:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    return v5

    .line 800
    .end local v1    # "charWidth":F
    .end local v3    # "dotVisible":Z
    .end local v4    # "textVisible":Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "textVisible":Z
    goto :goto_0

    .line 801
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "dotVisible":Z
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
    .line 825
    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    const/4 v6, 0x1

    .line 826
    .local v6, "emptyCircleVisible":Z
    :goto_0
    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    const/4 v5, 0x1

    .line 827
    .local v5, "dotVisible":Z
    :goto_1
    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    const/4 v2, 0x1

    .line 828
    .local v2, "dot2Visible":Z
    :goto_2
    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    const/4 v3, 0x1

    .line 829
    .local v3, "dot3Visible":Z
    :goto_3
    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    const/4 v4, 0x1

    .line 830
    .local v4, "dot4Visible":Z
    :goto_4
    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentWidthFactor:F

    mul-float v1, p5, v7

    .line 831
    .local v1, "charWidth":F
    if-eqz v5, :cond_5

    .line 832
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 833
    move v0, p2

    .line 834
    .local v0, "centerX":F
    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 835
    iget-object v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v7}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get7(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v7

    iget v8, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 836
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get5(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get7(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 837
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 846
    :goto_5
    if-eqz v2, :cond_6

    .line 847
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 848
    move v0, p2

    .line 849
    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 850
    iget-object v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v7}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get8(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v7

    iget v8, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 851
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get5(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get8(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 852
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 861
    :goto_6
    if-eqz v3, :cond_7

    .line 862
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 863
    move v0, p2

    .line 864
    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 865
    iget-object v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v7}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get9(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v7

    iget v8, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 866
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get5(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get9(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 867
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 876
    :goto_7
    if-eqz v4, :cond_8

    .line 877
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 878
    move v0, p2

    .line 879
    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 880
    iget-object v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v7}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get10(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v7

    iget v8, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 881
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get5(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get10(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 882
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 890
    :goto_8
    iget-object v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v7}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get2(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentWidthFactor:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    return v7

    .line 825
    .end local v0    # "centerX":F
    .end local v1    # "charWidth":F
    .end local v2    # "dot2Visible":Z
    .end local v3    # "dot3Visible":Z
    .end local v4    # "dot4Visible":Z
    .end local v5    # "dotVisible":Z
    .end local v6    # "emptyCircleVisible":Z
    :cond_0
    const/4 v6, 0x0

    .restart local v6    # "emptyCircleVisible":Z
    goto/16 :goto_0

    .line 826
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "dotVisible":Z
    goto/16 :goto_1

    .line 827
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "dot2Visible":Z
    goto/16 :goto_2

    .line 828
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "dot3Visible":Z
    goto/16 :goto_3

    .line 829
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "dot4Visible":Z
    goto/16 :goto_4

    .line 839
    .restart local v1    # "charWidth":F
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 840
    move v0, p2

    .line 841
    .restart local v0    # "centerX":F
    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 842
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get6(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get11(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 843
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    .line 854
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 855
    move v0, p2

    .line 856
    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 857
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get6(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get11(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 858
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    .line 869
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 870
    move v0, p2

    .line 871
    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 872
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get6(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get11(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 873
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    .line 884
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 885
    move v0, p2

    .line 886
    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 887
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get6(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get11(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 888
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_8
.end method

.method resetState()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 532
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->whichChar:C

    .line 533
    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    .line 534
    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    .line 535
    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    .line 536
    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    .line 537
    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    .line 538
    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentWidthFactor:F

    .line 539
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 540
    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 541
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 542
    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 543
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 544
    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 545
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->emptyCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 546
    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->emptyCircleAnimator:Landroid/animation/ValueAnimator;

    .line 547
    iput v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    .line 548
    iput v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextTranslationY:F

    .line 549
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    .line 531
    return-void
.end method

.method startAppearAnimation()V
    .locals 6

    .prologue
    .line 572
    iget-object v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v3}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 573
    iget-object v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v3}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 574
    iget-object v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v3}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get13(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 575
    iget-object v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    if-eqz v3, :cond_4

    const/4 v0, 0x0

    .line 576
    .local v0, "dotNeedsAnimation":Z
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v3}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get13(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 577
    iget-object v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    if-eqz v3, :cond_6

    const/4 v1, 0x0

    .line 578
    .local v1, "textNeedsAnimation":Z
    :goto_1
    iget-object v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimationIsGrowing:Z

    if-eqz v3, :cond_8

    const/4 v2, 0x0

    .line 580
    .local v2, "widthNeedsAnimation":Z
    :goto_2
    if-eqz v0, :cond_0

    .line 581
    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startDotAppearAnimation(J)V

    .line 584
    :cond_0
    if-eqz v1, :cond_1

    .line 585
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startTextAppearAnimation()V

    .line 587
    :cond_1
    if-eqz v2, :cond_2

    .line 588
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startWidthAppearAnimation()V

    .line 590
    :cond_2
    iget-object v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-static {v3}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->-get13(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 591
    const-wide/16 v4, 0xfa

    invoke-direct {p0, v4, v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->postDotSwap(J)V

    .line 571
    :cond_3
    return-void

    .line 575
    .end local v0    # "dotNeedsAnimation":Z
    .end local v1    # "textNeedsAnimation":Z
    .end local v2    # "widthNeedsAnimation":Z
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "dotNeedsAnimation":Z
    goto :goto_0

    .line 574
    .end local v0    # "dotNeedsAnimation":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "dotNeedsAnimation":Z
    goto :goto_0

    .line 577
    :cond_6
    const/4 v1, 0x1

    .restart local v1    # "textNeedsAnimation":Z
    goto :goto_1

    .line 576
    .end local v1    # "textNeedsAnimation":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "textNeedsAnimation":Z
    goto :goto_1

    .line 578
    :cond_8
    const/4 v2, 0x1

    .restart local v2    # "widthNeedsAnimation":Z
    goto :goto_2
.end method

.method startRemoveAnimation(JJ)V
    .locals 7
    .param p1, "startDelay"    # J
    .param p3, "widthDelay"    # J

    .prologue
    const/4 v4, 0x0

    .line 553
    iget v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    if-nez v3, :cond_3

    const/4 v0, 0x1

    .line 555
    :goto_0
    iget v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_5

    const/4 v1, 0x1

    .line 557
    :goto_1
    iget v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentWidthFactor:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_7

    const/4 v2, 0x1

    .line 559
    :goto_2
    if-eqz v0, :cond_0

    .line 560
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startDotDisappearAnimation(J)V

    .line 562
    :cond_0
    if-eqz v1, :cond_1

    .line 563
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startTextDisappearAnimation(J)V

    .line 565
    :cond_1
    const-wide/16 v4, 0x108

    invoke-direct {p0, v4, v5}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startEmptyCircleAppearAnimation(J)V

    .line 566
    if-eqz v2, :cond_2

    .line 567
    invoke-direct {p0, p3, p4}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startWidthDisappearAnimation(J)V

    .line 552
    :cond_2
    return-void

    .line 554
    :cond_3
    iget-object v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    .local v0, "dotNeedsAnimation":Z
    goto :goto_0

    .end local v0    # "dotNeedsAnimation":Z
    :cond_4
    const/4 v0, 0x0

    .local v0, "dotNeedsAnimation":Z
    goto :goto_0

    .line 556
    .end local v0    # "dotNeedsAnimation":Z
    :cond_5
    iget-object v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_6

    iget-boolean v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    .local v1, "textNeedsAnimation":Z
    goto :goto_1

    .end local v1    # "textNeedsAnimation":Z
    :cond_6
    const/4 v1, 0x0

    .local v1, "textNeedsAnimation":Z
    goto :goto_1

    .line 558
    .end local v1    # "textNeedsAnimation":Z
    :cond_7
    iget-object v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_8

    iget-boolean v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->widthAnimationIsGrowing:Z

    .local v2, "widthNeedsAnimation":Z
    goto :goto_2

    .end local v2    # "widthNeedsAnimation":Z
    :cond_8
    const/4 v2, 0x0

    .local v2, "widthNeedsAnimation":Z
    goto :goto_2
.end method

.method swapToDotWhenAppearFinished()V
    .locals 6

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    .line 614
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    .line 615
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    .line 616
    iget-object v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    .line 615
    sub-long v0, v2, v4

    .line 617
    .local v0, "remainingDuration":J
    const-wide/16 v2, 0x64

    add-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->postDotSwap(J)V

    .line 612
    .end local v0    # "remainingDuration":J
    :goto_0
    return-void

    .line 619
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->performSwap()V

    goto :goto_0
.end method
