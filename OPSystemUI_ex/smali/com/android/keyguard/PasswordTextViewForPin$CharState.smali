.class Lcom/android/keyguard/PasswordTextViewForPin$CharState;
.super Ljava/lang/Object;
.source "PasswordTextViewForPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextViewForPin;
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

.field dotAnimationIsGrowing:Z

.field dotAnimator:Landroid/animation/Animator;

.field dotFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private dotSizeUpdater2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private dotSizeUpdater3:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private dotSizeUpdater4:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private dotSwapperRunnable:Ljava/lang/Runnable;

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

.field final synthetic this$0:Lcom/android/keyguard/PasswordTextViewForPin;

.field whichChar:C


# direct methods
.method private constructor <init>(Lcom/android/keyguard/PasswordTextViewForPin;)V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 395
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    iput v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    .line 411
    iput v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextTranslationY:F

    .line 414
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$1;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->removeEndListener:Landroid/animation/Animator$AnimatorListener;

    .line 438
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$2;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 457
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$3;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->passwordErrorFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 464
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$4;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 471
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$5;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 478
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$6;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->emptyCircleFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 493
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$7;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 502
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$8;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSizeUpdater2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 511
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$9;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$9;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSizeUpdater3:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 520
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$10;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$10;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSizeUpdater4:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 529
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$11;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$11;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 538
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$12;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$12;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 547
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$13;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$13;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->emptyCircleSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 565
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$14;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$14;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/PasswordTextViewForPin;Lcom/android/keyguard/PasswordTextViewForPin$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;
    .param p2, "x1"    # Lcom/android/keyguard/PasswordTextViewForPin$1;

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;-><init>(Lcom/android/keyguard/PasswordTextViewForPin;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startPasswordErrorAnimation4()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/keyguard/PasswordTextViewForPin$CharState;Landroid/animation/Animator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->performSwap()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startPasswordErrorAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startPasswordErrorAnimation2()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startPasswordErrorAnimation3()V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 836
    if-eqz p1, :cond_0

    .line 837
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 838
    const/4 p1, 0x0

    .line 840
    :cond_0
    return-void
.end method

.method private performSwap()V
    .locals 2

    .prologue
    .line 666
    const-wide/16 v0, 0xfa

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startDotAppearAnimation(J)V

    .line 667
    return-void
.end method

.method private removeDotSwapCallbacks()V
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 650
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->isDotSwapPending:Z

    .line 651
    return-void
.end method

.method private startDotAppearAnimation(J)V
    .locals 7
    .param p1, "delay"    # J

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 805
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v1}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 806
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mShowPassword:Z
    invoke-static {v1}, Lcom/android/keyguard/PasswordTextViewForPin;->access$1600(Lcom/android/keyguard/PasswordTextViewForPin;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 808
    iput v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    .line 809
    new-array v1, v5, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 811
    .local v0, "overShootAnimator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 812
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/keyguard/PasswordTextViewForPin;->access$1800(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 813
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 814
    const-wide/16 v2, 0x190

    .line 815
    .local v2, "overShootDuration":J
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 816
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 817
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 818
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 832
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    .line 833
    return-void

    .line 820
    .end local v0    # "overShootAnimator":Landroid/animation/ValueAnimator;
    .end local v2    # "overShootDuration":J
    :cond_0
    iput v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    .line 821
    new-array v1, v5, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 823
    .restart local v0    # "overShootAnimator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 824
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/keyguard/PasswordTextViewForPin;->access$1800(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 825
    const-wide/16 v2, 0x190

    .line 826
    .restart local v2    # "overShootDuration":J
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 827
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 828
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 829
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 830
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    goto :goto_0

    .line 809
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 821
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startDotDisappearAnimation(J)V
    .locals 5
    .param p1, "startDelay"    # J

    .prologue
    .line 694
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v1}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 696
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 697
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 698
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 699
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/keyguard/PasswordTextViewForPin;->access$1800(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 701
    const-wide/16 v2, 0x190

    .line 702
    .local v2, "duration":J
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 703
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 704
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 705
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 706
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    .line 707
    return-void

    .line 696
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startEmptyCircleAppearAnimation(J)V
    .locals 7
    .param p1, "startDelay"    # J

    .prologue
    .line 750
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->emptyCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v1}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 751
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 752
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->emptyCircleSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 753
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->emptyCircleFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 754
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/keyguard/PasswordTextViewForPin;->access$1800(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 755
    const/high16 v1, 0x437a0000    # 250.0f

    iget v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v1, v4

    float-to-long v2, v1

    .line 757
    .local v2, "duration":J
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 758
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 759
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 760
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->emptyCircleAnimator:Landroid/animation/ValueAnimator;

    .line 761
    return-void

    .line 751
    :array_0
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startPasswordErrorAnimation()V
    .locals 4

    .prologue
    .line 710
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    .line 711
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 712
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 713
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;
    invoke-static {v1}, Lcom/android/keyguard/PasswordTextViewForPin;->access$1900(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 714
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 715
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 716
    return-void

    .line 711
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
    .line 719
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    .line 720
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 721
    .local v0, "animator2":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSizeUpdater2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 722
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;
    invoke-static {v1}, Lcom/android/keyguard/PasswordTextViewForPin;->access$1900(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 723
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 724
    const-wide/16 v2, 0x42

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 725
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 726
    return-void

    .line 720
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startPasswordErrorAnimation3()V
    .locals 4

    .prologue
    .line 729
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    .line 730
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 731
    .local v0, "animator3":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSizeUpdater3:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 732
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;
    invoke-static {v1}, Lcom/android/keyguard/PasswordTextViewForPin;->access$1900(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 733
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 734
    const-wide/16 v2, 0x84

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 735
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 736
    return-void

    .line 730
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startPasswordErrorAnimation4()V
    .locals 4

    .prologue
    .line 739
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    .line 740
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 741
    .local v0, "animator4":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSizeUpdater4:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 742
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;
    invoke-static {v1}, Lcom/android/keyguard/PasswordTextViewForPin;->access$1900(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 743
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->passwordErrorFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 744
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 745
    const-wide/16 v2, 0xc6

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 746
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 747
    return-void

    .line 740
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startTextAppearAnimation()V
    .locals 4

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 784
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 785
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 786
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 787
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/keyguard/PasswordTextViewForPin;->access$1800(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 789
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 790
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 791
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    .line 802
    return-void

    .line 784
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startTextDisappearAnimation(J)V
    .locals 5
    .param p1, "startDelay"    # J

    .prologue
    const/4 v4, 0x0

    .line 682
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 683
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    aput v1, v0, v4

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 684
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 685
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 686
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDisappearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/keyguard/PasswordTextViewForPin;->access$1700(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 687
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x43200000    # 160.0f

    iget v2, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 688
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 689
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 690
    iput-boolean v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    .line 691
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FIFF)F
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "currentDrawPosition"    # F
    .param p3, "charHeight"    # I
    .param p4, "yPosition"    # F
    .param p5, "charLength"    # F

    .prologue
    .line 849
    iget v10, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    const/4 v9, 0x1

    .line 850
    .local v9, "textVisible":Z
    :goto_0
    iget v10, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_4

    const/4 v7, 0x1

    .line 851
    .local v7, "dotVisible":Z
    :goto_1
    iget v10, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_5

    const/4 v4, 0x1

    .line 852
    .local v4, "dot2Visible":Z
    :goto_2
    iget v10, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_6

    const/4 v5, 0x1

    .line 853
    .local v5, "dot3Visible":Z
    :goto_3
    iget v10, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_7

    const/4 v6, 0x1

    .line 854
    .local v6, "dot4Visible":Z
    :goto_4
    iget v10, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_8

    const/4 v8, 0x1

    .line 856
    .local v8, "emptyCircleVisible":Z
    :goto_5
    move/from16 v2, p5

    .line 857
    .local v2, "charWidth":F
    if-eqz v9, :cond_0

    .line 858
    move/from16 v0, p3

    int-to-float v10, v0

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget v11, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    mul-float/2addr v10, v11

    add-float v3, p4, v10

    .line 861
    .local v3, "currYPosition":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 863
    move/from16 v1, p2

    .line 864
    .local v1, "centerX":F
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 865
    iget v10, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    iget v11, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 867
    iget-char v10, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->whichChar:C

    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2000(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 868
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 870
    .end local v1    # "centerX":F
    .end local v3    # "currYPosition":F
    :cond_0
    if-eqz v7, :cond_1

    .line 871
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 872
    move/from16 v1, p2

    .line 873
    .restart local v1    # "centerX":F
    move/from16 v0, p4

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 874
    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDotSize:I
    invoke-static {v12}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2100(Lcom/android/keyguard/PasswordTextViewForPin;)I

    move-result v12

    int-to-float v12, v12

    iget v13, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    mul-float/2addr v12, v13

    iget-object v13, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2000(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 875
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 877
    .end local v1    # "centerX":F
    :cond_1
    if-eqz v8, :cond_2

    .line 878
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 879
    move/from16 v1, p2

    .line 880
    .restart local v1    # "centerX":F
    move/from16 v0, p4

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 881
    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDotSize:I
    invoke-static {v12}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2100(Lcom/android/keyguard/PasswordTextViewForPin;)I

    move-result v12

    int-to-float v12, v12

    iget v13, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    mul-float/2addr v12, v13

    iget-object v13, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2200(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 882
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 884
    .end local v1    # "centerX":F
    :cond_2
    iget-object v10, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mCharPadding:I
    invoke-static {v10}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2300(Lcom/android/keyguard/PasswordTextViewForPin;)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v2

    return v10

    .line 849
    .end local v2    # "charWidth":F
    .end local v4    # "dot2Visible":Z
    .end local v5    # "dot3Visible":Z
    .end local v6    # "dot4Visible":Z
    .end local v7    # "dotVisible":Z
    .end local v8    # "emptyCircleVisible":Z
    .end local v9    # "textVisible":Z
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 850
    .restart local v9    # "textVisible":Z
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 851
    .restart local v7    # "dotVisible":Z
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 852
    .restart local v4    # "dot2Visible":Z
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 853
    .restart local v5    # "dot3Visible":Z
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 854
    .restart local v6    # "dot4Visible":Z
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_5
.end method

.method public drawErrorAnimation(Landroid/graphics/Canvas;FIFF)F
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "currentDrawPosition"    # F
    .param p3, "charHeight"    # I
    .param p4, "yPosition"    # F
    .param p5, "charLength"    # F

    .prologue
    .line 889
    iget v7, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    const/4 v6, 0x1

    .line 890
    .local v6, "emptyCircleVisible":Z
    :goto_0
    iget v7, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    const/4 v5, 0x1

    .line 891
    .local v5, "dotVisible":Z
    :goto_1
    iget v7, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    const/4 v2, 0x1

    .line 892
    .local v2, "dot2Visible":Z
    :goto_2
    iget v7, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    const/4 v3, 0x1

    .line 893
    .local v3, "dot3Visible":Z
    :goto_3
    iget v7, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    const/4 v4, 0x1

    .line 894
    .local v4, "dot4Visible":Z
    :goto_4
    move/from16 v1, p5

    .line 895
    .local v1, "charWidth":F
    if-eqz v5, :cond_5

    .line 896
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 897
    move v0, p2

    .line 898
    .local v0, "centerX":F
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 899
    iget-object v7, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;
    invoke-static {v7}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2400(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v7

    iget v8, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 900
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDotSize:I
    invoke-static {v9}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2100(Lcom/android/keyguard/PasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2400(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 901
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 910
    :goto_5
    if-eqz v2, :cond_6

    .line 911
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 912
    move v0, p2

    .line 913
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 914
    iget-object v7, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;
    invoke-static {v7}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2600(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v7

    iget v8, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 915
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDotSize:I
    invoke-static {v9}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2100(Lcom/android/keyguard/PasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2600(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 916
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 925
    :goto_6
    if-eqz v3, :cond_7

    .line 926
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 927
    move v0, p2

    .line 928
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 929
    iget-object v7, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;
    invoke-static {v7}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2700(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v7

    iget v8, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 930
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDotSize:I
    invoke-static {v9}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2100(Lcom/android/keyguard/PasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2700(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 931
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 940
    :goto_7
    if-eqz v4, :cond_8

    .line 941
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 942
    move v0, p2

    .line 943
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 944
    iget-object v7, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;
    invoke-static {v7}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2800(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v7

    iget v8, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 945
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDotSize:I
    invoke-static {v9}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2100(Lcom/android/keyguard/PasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2800(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 946
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 955
    :goto_8
    iget-object v7, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mCharPadding:I
    invoke-static {v7}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2300(Lcom/android/keyguard/PasswordTextViewForPin;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v1

    return v7

    .line 889
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

    .line 890
    .restart local v6    # "emptyCircleVisible":Z
    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 891
    .restart local v5    # "dotVisible":Z
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 892
    .restart local v2    # "dot2Visible":Z
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 893
    .restart local v3    # "dot3Visible":Z
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 903
    .restart local v1    # "charWidth":F
    .restart local v4    # "dot4Visible":Z
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 904
    move v0, p2

    .line 905
    .restart local v0    # "centerX":F
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 906
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDotSizeEmpty:I
    invoke-static {v9}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2500(Lcom/android/keyguard/PasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2200(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 907
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    .line 918
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 919
    move v0, p2

    .line 920
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 921
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDotSizeEmpty:I
    invoke-static {v9}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2500(Lcom/android/keyguard/PasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2200(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 922
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    .line 933
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 934
    move v0, p2

    .line 935
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 936
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDotSizeEmpty:I
    invoke-static {v9}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2500(Lcom/android/keyguard/PasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2200(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 937
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    .line 948
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 949
    move v0, p2

    .line 950
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 951
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDotSizeEmpty:I
    invoke-static {v9}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2500(Lcom/android/keyguard/PasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/android/keyguard/PasswordTextViewForPin;->access$2200(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 952
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_8
.end method

.method resetState()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 574
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->whichChar:C

    .line 575
    iput v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    .line 576
    iput v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    .line 577
    iput v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    .line 578
    iput v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    .line 579
    iput v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    .line 581
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 582
    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 583
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 584
    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 587
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->emptyCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 588
    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->emptyCircleAnimator:Landroid/animation/ValueAnimator;

    .line 589
    iput v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    .line 590
    iput v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextTranslationY:F

    .line 591
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    .line 592
    return-void
.end method

.method startAppearAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xfa

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 614
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v4}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 615
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v4}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 616
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mShowPassword:Z
    invoke-static {v4}, Lcom/android/keyguard/PasswordTextViewForPin;->access$1600(Lcom/android/keyguard/PasswordTextViewForPin;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    if-nez v4, :cond_5

    :cond_0
    move v0, v2

    .line 618
    .local v0, "dotNeedsAnimation":Z
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mShowPassword:Z
    invoke-static {v4}, Lcom/android/keyguard/PasswordTextViewForPin;->access$1600(Lcom/android/keyguard/PasswordTextViewForPin;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    if-nez v4, :cond_6

    :cond_1
    move v1, v2

    .line 621
    .local v1, "textNeedsAnimation":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 622
    invoke-direct {p0, v6, v7}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startDotAppearAnimation(J)V

    .line 625
    :cond_2
    if-eqz v1, :cond_3

    .line 626
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startTextAppearAnimation()V

    .line 631
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->mShowPassword:Z
    invoke-static {v2}, Lcom/android/keyguard/PasswordTextViewForPin;->access$1600(Lcom/android/keyguard/PasswordTextViewForPin;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 633
    invoke-direct {p0, v6, v7}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startDotAppearAnimation(J)V

    .line 636
    :cond_4
    return-void

    .end local v0    # "dotNeedsAnimation":Z
    .end local v1    # "textNeedsAnimation":Z
    :cond_5
    move v0, v3

    .line 616
    goto :goto_0

    .restart local v0    # "dotNeedsAnimation":Z
    :cond_6
    move v1, v3

    .line 618
    goto :goto_1
.end method

.method startRemoveAnimation(JJ)V
    .locals 7
    .param p1, "startDelay"    # J
    .param p3, "widthDelay"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 595
    iget v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    if-eqz v4, :cond_5

    :cond_1
    move v0, v3

    .line 597
    .local v0, "dotNeedsAnimation":Z
    :goto_0
    iget v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    if-eqz v4, :cond_6

    :cond_3
    move v1, v3

    .line 602
    .local v1, "textNeedsAnimation":Z
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startDotDisappearAnimation(J)V

    .line 604
    if-eqz v1, :cond_4

    .line 605
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startTextDisappearAnimation(J)V

    .line 607
    :cond_4
    const-wide/16 v2, 0x108

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startEmptyCircleAppearAnimation(J)V

    .line 611
    return-void

    .end local v0    # "dotNeedsAnimation":Z
    .end local v1    # "textNeedsAnimation":Z
    :cond_5
    move v0, v2

    .line 595
    goto :goto_0

    .restart local v0    # "dotNeedsAnimation":Z
    :cond_6
    move v1, v2

    .line 597
    goto :goto_1
.end method
