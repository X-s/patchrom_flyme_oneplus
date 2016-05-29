.class Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;
.super Ljava/lang/Object;
.source "PasswordTextViewForPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ui/PasswordTextViewForPin;
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

.field final synthetic this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

.field whichChar:C


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 414
    iput-object p1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    iput v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    .line 430
    iput v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentTextTranslationY:F

    .line 433
    new-instance v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$1;-><init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->removeEndListener:Landroid/animation/Animator$AnimatorListener;

    .line 457
    new-instance v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$2;-><init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 476
    new-instance v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$3;-><init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->passwordErrorFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 483
    new-instance v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$4;-><init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 490
    new-instance v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$5;-><init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 497
    new-instance v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$6;-><init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->emptyCircleFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 512
    new-instance v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$7;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$7;-><init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 521
    new-instance v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$8;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$8;-><init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotSizeUpdater2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 530
    new-instance v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$9;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$9;-><init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotSizeUpdater3:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 539
    new-instance v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$10;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$10;-><init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotSizeUpdater4:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 548
    new-instance v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$11;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$11;-><init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 557
    new-instance v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$12;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$12;-><init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 566
    new-instance v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$13;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$13;-><init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->emptyCircleSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 584
    new-instance v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$14;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$14;-><init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin;Lcom/android/settings_ex/ui/PasswordTextViewForPin$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/ui/PasswordTextViewForPin;
    .param p2, "x1"    # Lcom/android/settings_ex/ui/PasswordTextViewForPin$1;

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;-><init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;Landroid/animation/Animator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->performSwap()V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 855
    if-eqz p1, :cond_0

    .line 856
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 857
    const/4 p1, 0x0

    .line 859
    :cond_0
    return-void
.end method

.method private performSwap()V
    .locals 2

    .prologue
    .line 685
    const-wide/16 v0, 0xfa

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->startDotAppearAnimation(J)V

    .line 686
    return-void
.end method

.method private postDotSwap(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    .line 663
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->isDotSwapPending:Z

    .line 665
    return-void
.end method

.method private removeDotSwapCallbacks()V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 669
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->isDotSwapPending:Z

    .line 670
    return-void
.end method

.method private startDotAppearAnimation(J)V
    .locals 7
    .param p1, "delay"    # J

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 824
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 825
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mShowPassword:Z
    invoke-static {v1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$600(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 827
    iput v4, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    .line 828
    new-array v1, v5, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 830
    .local v0, "overShootAnimator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 831
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$800(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 832
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 833
    const-wide/16 v2, 0x190

    .line 834
    .local v2, "overShootDuration":J
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 835
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 836
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 837
    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 851
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    .line 852
    return-void

    .line 839
    .end local v0    # "overShootAnimator":Landroid/animation/ValueAnimator;
    .end local v2    # "overShootDuration":J
    :cond_0
    iput v4, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    .line 840
    new-array v1, v5, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 842
    .restart local v0    # "overShootAnimator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 843
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$800(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 844
    const-wide/16 v2, 0x190

    .line 845
    .restart local v2    # "overShootDuration":J
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 846
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 847
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 848
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 849
    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    goto :goto_0

    .line 828
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 840
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
    .line 713
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 715
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 716
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 717
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 718
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$800(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 720
    const-wide/16 v2, 0x190

    .line 721
    .local v2, "duration":J
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 722
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 723
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 724
    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 725
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    .line 726
    return-void

    .line 715
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
    .line 769
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->emptyCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 770
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 771
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->emptyCircleSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 772
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->emptyCircleFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 773
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$800(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 774
    const/high16 v1, 0x437a0000    # 250.0f

    iget v4, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v1, v4

    float-to-long v2, v1

    .line 776
    .local v2, "duration":J
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 777
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 778
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 779
    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->emptyCircleAnimator:Landroid/animation/ValueAnimator;

    .line 780
    return-void

    .line 770
    :array_0
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startPasswordErrorAnimation()V
    .locals 4

    .prologue
    .line 729
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    .line 730
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 731
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 732
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;
    invoke-static {v1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$900(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 733
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 734
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 735
    return-void

    .line 730
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
    .line 738
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    .line 739
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 740
    .local v0, "animator2":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotSizeUpdater2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 741
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;
    invoke-static {v1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$900(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 742
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 743
    const-wide/16 v2, 0x42

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 744
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 745
    return-void

    .line 739
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startPasswordErrorAnimation3()V
    .locals 4

    .prologue
    .line 748
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    .line 749
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 750
    .local v0, "animator3":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotSizeUpdater3:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 751
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;
    invoke-static {v1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$900(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 752
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 753
    const-wide/16 v2, 0x84

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 754
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 755
    return-void

    .line 749
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startPasswordErrorAnimation4()V
    .locals 4

    .prologue
    .line 758
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    .line 759
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 760
    .local v0, "animator4":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotSizeUpdater4:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 761
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;
    invoke-static {v1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$900(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 762
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->passwordErrorFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 763
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 764
    const-wide/16 v2, 0xc6

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 765
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 766
    return-void

    .line 759
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
    .line 802
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 803
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 804
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 805
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 806
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$800(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 808
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 809
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 810
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    .line 821
    return-void

    .line 803
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

    .line 701
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 702
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    aput v1, v0, v4

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 703
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 704
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 705
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDisappearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$700(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 706
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x43200000    # 160.0f

    iget v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 707
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 708
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 709
    iput-boolean v4, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    .line 710
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
    .line 868
    iget v10, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    const/4 v9, 0x1

    .line 869
    .local v9, "textVisible":Z
    :goto_0
    iget v10, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_4

    const/4 v7, 0x1

    .line 870
    .local v7, "dotVisible":Z
    :goto_1
    iget v10, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_5

    const/4 v4, 0x1

    .line 871
    .local v4, "dot2Visible":Z
    :goto_2
    iget v10, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_6

    const/4 v5, 0x1

    .line 872
    .local v5, "dot3Visible":Z
    :goto_3
    iget v10, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_7

    const/4 v6, 0x1

    .line 873
    .local v6, "dot4Visible":Z
    :goto_4
    iget v10, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_8

    const/4 v8, 0x1

    .line 875
    .local v8, "emptyCircleVisible":Z
    :goto_5
    move/from16 v2, p5

    .line 876
    .local v2, "charWidth":F
    if-eqz v9, :cond_0

    .line 877
    move/from16 v0, p3

    int-to-float v10, v0

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget v11, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    mul-float/2addr v10, v11

    add-float v3, p4, v10

    .line 880
    .local v3, "currYPosition":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 882
    move/from16 v1, p2

    .line 883
    .local v1, "centerX":F
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 884
    iget v10, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    iget v11, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 886
    iget-char v10, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->whichChar:C

    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1000(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 887
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 889
    .end local v1    # "centerX":F
    .end local v3    # "currYPosition":F
    :cond_0
    if-eqz v7, :cond_1

    .line 890
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 891
    move/from16 v1, p2

    .line 892
    .restart local v1    # "centerX":F
    move/from16 v0, p4

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 893
    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDotSize:I
    invoke-static {v12}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1100(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)I

    move-result v12

    int-to-float v12, v12

    iget v13, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    mul-float/2addr v12, v13

    iget-object v13, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1000(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 894
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 896
    .end local v1    # "centerX":F
    :cond_1
    if-eqz v8, :cond_2

    .line 897
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 898
    move/from16 v1, p2

    .line 899
    .restart local v1    # "centerX":F
    move/from16 v0, p4

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 900
    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDotSize:I
    invoke-static {v12}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1100(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)I

    move-result v12

    int-to-float v12, v12

    iget v13, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    mul-float/2addr v12, v13

    iget-object v13, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1200(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 901
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 903
    .end local v1    # "centerX":F
    :cond_2
    iget-object v10, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mCharPadding:I
    invoke-static {v10}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1300(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v2

    return v10

    .line 868
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

    .line 869
    .restart local v9    # "textVisible":Z
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 870
    .restart local v7    # "dotVisible":Z
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 871
    .restart local v4    # "dot2Visible":Z
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 872
    .restart local v5    # "dot3Visible":Z
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 873
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
    .line 908
    iget v7, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    const/4 v6, 0x1

    .line 909
    .local v6, "emptyCircleVisible":Z
    :goto_0
    iget v7, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    const/4 v5, 0x1

    .line 910
    .local v5, "dotVisible":Z
    :goto_1
    iget v7, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    const/4 v2, 0x1

    .line 911
    .local v2, "dot2Visible":Z
    :goto_2
    iget v7, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    const/4 v3, 0x1

    .line 912
    .local v3, "dot3Visible":Z
    :goto_3
    iget v7, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    const/4 v4, 0x1

    .line 913
    .local v4, "dot4Visible":Z
    :goto_4
    move/from16 v1, p5

    .line 914
    .local v1, "charWidth":F
    if-eqz v5, :cond_5

    .line 915
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 916
    move v0, p2

    .line 917
    .local v0, "centerX":F
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 918
    iget-object v7, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;
    invoke-static {v7}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1400(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v7

    iget v8, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 919
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDotSize:I
    invoke-static {v9}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1100(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1400(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 920
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 929
    :goto_5
    if-eqz v2, :cond_6

    .line 930
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 931
    move v0, p2

    .line 932
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 933
    iget-object v7, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;
    invoke-static {v7}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1600(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v7

    iget v8, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 934
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDotSize:I
    invoke-static {v9}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1100(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1600(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 935
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 944
    :goto_6
    if-eqz v3, :cond_7

    .line 945
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 946
    move v0, p2

    .line 947
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 948
    iget-object v7, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;
    invoke-static {v7}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1700(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v7

    iget v8, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 949
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDotSize:I
    invoke-static {v9}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1100(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1700(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 950
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 959
    :goto_7
    if-eqz v4, :cond_8

    .line 960
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 961
    move v0, p2

    .line 962
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 963
    iget-object v7, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;
    invoke-static {v7}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1800(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v7

    iget v8, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 964
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDotSize:I
    invoke-static {v9}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1100(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1800(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 965
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 974
    :goto_8
    iget-object v7, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mCharPadding:I
    invoke-static {v7}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1300(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v1

    return v7

    .line 908
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

    .line 909
    .restart local v6    # "emptyCircleVisible":Z
    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 910
    .restart local v5    # "dotVisible":Z
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 911
    .restart local v2    # "dot2Visible":Z
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 912
    .restart local v3    # "dot3Visible":Z
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 922
    .restart local v1    # "charWidth":F
    .restart local v4    # "dot4Visible":Z
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 923
    move v0, p2

    .line 924
    .restart local v0    # "centerX":F
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 925
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDotSizeEmpty:I
    invoke-static {v9}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1500(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1200(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 926
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    .line 937
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 938
    move v0, p2

    .line 939
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 940
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDotSizeEmpty:I
    invoke-static {v9}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1500(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1200(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 941
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    .line 952
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 953
    move v0, p2

    .line 954
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 955
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDotSizeEmpty:I
    invoke-static {v9}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1500(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1200(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 956
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    .line 967
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 968
    move v0, p2

    .line 969
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 970
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDotSizeEmpty:I
    invoke-static {v9}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1500(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$1200(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 971
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_8
.end method

.method resetState()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 593
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->whichChar:C

    .line 594
    iput v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    .line 595
    iput v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    .line 596
    iput v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    .line 597
    iput v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    .line 598
    iput v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    .line 600
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 601
    iput-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 602
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 603
    iput-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 606
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->emptyCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 607
    iput-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->emptyCircleAnimator:Landroid/animation/ValueAnimator;

    .line 608
    iput v3, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    .line 609
    iput v3, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentTextTranslationY:F

    .line 610
    invoke-direct {p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    .line 611
    return-void
.end method

.method startAppearAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xfa

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 633
    iget-object v4, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v4}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 634
    iget-object v4, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v4}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 635
    iget-object v4, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mShowPassword:Z
    invoke-static {v4}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$600(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    if-nez v4, :cond_5

    :cond_0
    move v0, v2

    .line 637
    .local v0, "dotNeedsAnimation":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mShowPassword:Z
    invoke-static {v4}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$600(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    if-nez v4, :cond_6

    :cond_1
    move v1, v2

    .line 640
    .local v1, "textNeedsAnimation":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 641
    invoke-direct {p0, v6, v7}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->startDotAppearAnimation(J)V

    .line 644
    :cond_2
    if-eqz v1, :cond_3

    .line 645
    invoke-direct {p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->startTextAppearAnimation()V

    .line 650
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mShowPassword:Z
    invoke-static {v2}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$600(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 652
    invoke-direct {p0, v6, v7}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->startDotAppearAnimation(J)V

    .line 655
    :cond_4
    return-void

    .end local v0    # "dotNeedsAnimation":Z
    .end local v1    # "textNeedsAnimation":Z
    :cond_5
    move v0, v3

    .line 635
    goto :goto_0

    .restart local v0    # "dotNeedsAnimation":Z
    :cond_6
    move v1, v3

    .line 637
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

    .line 614
    iget v4, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    if-eqz v4, :cond_5

    :cond_1
    move v0, v3

    .line 616
    .local v0, "dotNeedsAnimation":Z
    :goto_0
    iget v4, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    if-eqz v4, :cond_6

    :cond_3
    move v1, v3

    .line 621
    .local v1, "textNeedsAnimation":Z
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->startDotDisappearAnimation(J)V

    .line 623
    if-eqz v1, :cond_4

    .line 624
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->startTextDisappearAnimation(J)V

    .line 626
    :cond_4
    const-wide/16 v2, 0x108

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->startEmptyCircleAppearAnimation(J)V

    .line 630
    return-void

    .end local v0    # "dotNeedsAnimation":Z
    .end local v1    # "textNeedsAnimation":Z
    :cond_5
    move v0, v2

    .line 614
    goto :goto_0

    .restart local v0    # "dotNeedsAnimation":Z
    :cond_6
    move v1, v2

    .line 616
    goto :goto_1
.end method

.method swapToDotWhenAppearFinished()V
    .locals 6

    .prologue
    .line 673
    invoke-direct {p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    .line 674
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    .line 675
    iget-object v2, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 677
    .local v0, "remainingDuration":J
    const-wide/16 v2, 0x64

    add-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->postDotSwap(J)V

    .line 681
    .end local v0    # "remainingDuration":J
    :goto_0
    return-void

    .line 679
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->performSwap()V

    goto :goto_0
.end method
