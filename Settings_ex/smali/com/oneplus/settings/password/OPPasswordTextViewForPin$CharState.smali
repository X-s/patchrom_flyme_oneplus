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


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 409
    iput-object p1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    .line 425
    iput v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextTranslationY:F

    .line 428
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$1;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->removeEndListener:Landroid/animation/Animator$AnimatorListener;

    .line 452
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$2;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 471
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$3;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->passwordErrorFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 478
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$4;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$4;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 485
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$5;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$5;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 492
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$6;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$6;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->emptyCircleFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 507
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$7;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$7;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 516
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$8;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$8;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 525
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$9;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$9;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater3:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 534
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$10;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$10;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater4:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 543
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$11;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$11;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 552
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$12;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$12;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 561
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$13;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$13;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->emptyCircleSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 579
    new-instance v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$14;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$14;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;Lcom/oneplus/settings/password/OPPasswordTextViewForPin$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin;
    .param p2, "x1"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin$1;

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;-><init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;Landroid/animation/Animator;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->performSwap()V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 850
    if-eqz p1, :cond_0

    .line 851
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 852
    const/4 p1, 0x0

    .line 854
    :cond_0
    return-void
.end method

.method private performSwap()V
    .locals 2

    .prologue
    .line 680
    const-wide/16 v0, 0xfa

    invoke-direct {p0, v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startDotAppearAnimation(J)V

    .line 681
    return-void
.end method

.method private postDotSwap(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    .line 658
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->isDotSwapPending:Z

    .line 660
    return-void
.end method

.method private removeDotSwapCallbacks()V
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->isDotSwapPending:Z

    .line 665
    return-void
.end method

.method private startDotAppearAnimation(J)V
    .locals 7
    .param p1, "delay"    # J

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 819
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 820
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mShowPassword:Z
    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$600(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 822
    iput v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    .line 823
    new-array v1, v5, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 825
    .local v0, "overShootAnimator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 826
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$800(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 827
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 828
    const-wide/16 v2, 0x190

    .line 829
    .local v2, "overShootDuration":J
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 830
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 831
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 832
    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 846
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    .line 847
    return-void

    .line 834
    .end local v0    # "overShootAnimator":Landroid/animation/ValueAnimator;
    .end local v2    # "overShootDuration":J
    :cond_0
    iput v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    .line 835
    new-array v1, v5, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 837
    .restart local v0    # "overShootAnimator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 838
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$800(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 839
    const-wide/16 v2, 0x190

    .line 840
    .restart local v2    # "overShootDuration":J
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 841
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 842
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 843
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 844
    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    goto :goto_0

    .line 823
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 835
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
    .line 708
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 710
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 711
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 712
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 713
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$800(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 715
    const-wide/16 v2, 0x190

    .line 716
    .local v2, "duration":J
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 717
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 718
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 719
    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 720
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    .line 721
    return-void

    .line 710
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
    .line 764
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->emptyCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 765
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 766
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->emptyCircleSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 767
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->emptyCircleFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 768
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$800(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 769
    const/high16 v1, 0x437a0000    # 250.0f

    iget v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v1, v4

    float-to-long v2, v1

    .line 771
    .local v2, "duration":J
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 772
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 773
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 774
    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->emptyCircleAnimator:Landroid/animation/ValueAnimator;

    .line 775
    return-void

    .line 765
    :array_0
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startPasswordErrorAnimation()V
    .locals 4

    .prologue
    .line 724
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    .line 725
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 726
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 727
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;
    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$900(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 728
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 729
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 730
    return-void

    .line 725
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
    .line 733
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    .line 734
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 735
    .local v0, "animator2":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 736
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;
    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$900(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 737
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 738
    const-wide/16 v2, 0x42

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 739
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 740
    return-void

    .line 734
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startPasswordErrorAnimation3()V
    .locals 4

    .prologue
    .line 743
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    .line 744
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 745
    .local v0, "animator3":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater3:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 746
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;
    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$900(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 747
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 748
    const-wide/16 v2, 0x84

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 749
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 750
    return-void

    .line 744
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startPasswordErrorAnimation4()V
    .locals 4

    .prologue
    .line 753
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    .line 754
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 755
    .local v0, "animator4":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotSizeUpdater4:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 756
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;
    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$900(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/AccelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 757
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->passwordErrorFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 758
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 759
    const-wide/16 v2, 0xc6

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 760
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 761
    return-void

    .line 754
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
    .line 797
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 798
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 799
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 800
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 801
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$800(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 803
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 804
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 805
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    .line 816
    return-void

    .line 798
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

    .line 696
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 697
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

    .line 698
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 699
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 700
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDisappearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$700(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 701
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x43200000    # 160.0f

    iget v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 702
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 703
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 704
    iput-boolean v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    .line 705
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
    .line 863
    iget v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    const/4 v9, 0x1

    .line 864
    .local v9, "textVisible":Z
    :goto_0
    iget v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_4

    const/4 v7, 0x1

    .line 865
    .local v7, "dotVisible":Z
    :goto_1
    iget v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_5

    const/4 v4, 0x1

    .line 866
    .local v4, "dot2Visible":Z
    :goto_2
    iget v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_6

    const/4 v5, 0x1

    .line 867
    .local v5, "dot3Visible":Z
    :goto_3
    iget v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_7

    const/4 v6, 0x1

    .line 868
    .local v6, "dot4Visible":Z
    :goto_4
    iget v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_8

    const/4 v8, 0x1

    .line 870
    .local v8, "emptyCircleVisible":Z
    :goto_5
    move/from16 v2, p5

    .line 871
    .local v2, "charWidth":F
    if-eqz v9, :cond_0

    .line 872
    move/from16 v0, p3

    int-to-float v10, v0

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget v11, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    mul-float/2addr v10, v11

    add-float v3, p4, v10

    .line 875
    .local v3, "currYPosition":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 877
    move/from16 v1, p2

    .line 878
    .local v1, "centerX":F
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 879
    iget v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    iget v11, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 881
    iget-char v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->whichChar:C

    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1000(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 882
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 884
    .end local v1    # "centerX":F
    .end local v3    # "currYPosition":F
    :cond_0
    if-eqz v7, :cond_1

    .line 885
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 886
    move/from16 v1, p2

    .line 887
    .restart local v1    # "centerX":F
    move/from16 v0, p4

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 888
    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSize:I
    invoke-static {v12}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1100(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v12

    int-to-float v12, v12

    iget v13, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    mul-float/2addr v12, v13

    iget-object v13, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1000(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 889
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 891
    .end local v1    # "centerX":F
    :cond_1
    if-eqz v8, :cond_2

    .line 892
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 893
    move/from16 v1, p2

    .line 894
    .restart local v1    # "centerX":F
    move/from16 v0, p4

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 895
    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSize:I
    invoke-static {v12}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1100(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v12

    int-to-float v12, v12

    iget v13, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    mul-float/2addr v12, v13

    iget-object v13, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1200(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 896
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 898
    .end local v1    # "centerX":F
    :cond_2
    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCharPadding:I
    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1300(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v2

    return v10

    .line 863
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

    .line 864
    .restart local v9    # "textVisible":Z
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 865
    .restart local v7    # "dotVisible":Z
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 866
    .restart local v4    # "dot2Visible":Z
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 867
    .restart local v5    # "dot3Visible":Z
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 868
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
    .line 903
    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    const/4 v6, 0x1

    .line 904
    .local v6, "emptyCircleVisible":Z
    :goto_0
    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    const/4 v5, 0x1

    .line 905
    .local v5, "dotVisible":Z
    :goto_1
    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    const/4 v2, 0x1

    .line 906
    .local v2, "dot2Visible":Z
    :goto_2
    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    const/4 v3, 0x1

    .line 907
    .local v3, "dot3Visible":Z
    :goto_3
    iget v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    const/4 v4, 0x1

    .line 908
    .local v4, "dot4Visible":Z
    :goto_4
    move/from16 v1, p5

    .line 909
    .local v1, "charWidth":F
    if-eqz v5, :cond_5

    .line 910
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 911
    move v0, p2

    .line 912
    .local v0, "centerX":F
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 913
    iget-object v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;
    invoke-static {v7}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1400(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v7

    iget v8, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 914
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSize:I
    invoke-static {v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1100(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1400(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 915
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 924
    :goto_5
    if-eqz v2, :cond_6

    .line 925
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 926
    move v0, p2

    .line 927
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 928
    iget-object v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;
    invoke-static {v7}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1600(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v7

    iget v8, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 929
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSize:I
    invoke-static {v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1100(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1600(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 930
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 939
    :goto_6
    if-eqz v3, :cond_7

    .line 940
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 941
    move v0, p2

    .line 942
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 943
    iget-object v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;
    invoke-static {v7}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1700(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v7

    iget v8, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 944
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSize:I
    invoke-static {v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1100(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1700(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 945
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 954
    :goto_7
    if-eqz v4, :cond_8

    .line 955
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 956
    move v0, p2

    .line 957
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 958
    iget-object v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;
    invoke-static {v7}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1800(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v7

    iget v8, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 959
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSize:I
    invoke-static {v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1100(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1800(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 960
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 969
    :goto_8
    iget-object v7, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCharPadding:I
    invoke-static {v7}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1300(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v1

    return v7

    .line 903
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

    .line 904
    .restart local v6    # "emptyCircleVisible":Z
    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 905
    .restart local v5    # "dotVisible":Z
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 906
    .restart local v2    # "dot2Visible":Z
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 907
    .restart local v3    # "dot3Visible":Z
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 917
    .restart local v1    # "charWidth":F
    .restart local v4    # "dot4Visible":Z
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 918
    move v0, p2

    .line 919
    .restart local v0    # "centerX":F
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 920
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSizeEmpty:I
    invoke-static {v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1500(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1200(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 921
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    .line 932
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 933
    move v0, p2

    .line 934
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 935
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSizeEmpty:I
    invoke-static {v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1500(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1200(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 936
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    .line 947
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 948
    move v0, p2

    .line 949
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 950
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSizeEmpty:I
    invoke-static {v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1500(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1200(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 951
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    .line 962
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 963
    move v0, p2

    .line 964
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 965
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDotSizeEmpty:I
    invoke-static {v9}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1500(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$1200(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 966
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_8
.end method

.method resetState()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 588
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->whichChar:C

    .line 589
    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    .line 590
    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    .line 591
    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor2:F

    .line 592
    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor3:F

    .line 593
    iput v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    .line 595
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 596
    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 597
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 598
    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 601
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->emptyCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 602
    iput-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->emptyCircleAnimator:Landroid/animation/ValueAnimator;

    .line 603
    iput v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    .line 604
    iput v3, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextTranslationY:F

    .line 605
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    .line 606
    return-void
.end method

.method startAppearAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xfa

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 628
    iget-object v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v4}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 629
    iget-object v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v4}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 630
    iget-object v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mShowPassword:Z
    invoke-static {v4}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$600(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    if-nez v4, :cond_5

    :cond_0
    move v0, v2

    .line 632
    .local v0, "dotNeedsAnimation":Z
    :goto_0
    iget-object v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mShowPassword:Z
    invoke-static {v4}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$600(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    if-nez v4, :cond_6

    :cond_1
    move v1, v2

    .line 635
    .local v1, "textNeedsAnimation":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 636
    invoke-direct {p0, v6, v7}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startDotAppearAnimation(J)V

    .line 639
    :cond_2
    if-eqz v1, :cond_3

    .line 640
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startTextAppearAnimation()V

    .line 645
    :cond_3
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mShowPassword:Z
    invoke-static {v2}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$600(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 647
    invoke-direct {p0, v6, v7}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startDotAppearAnimation(J)V

    .line 650
    :cond_4
    return-void

    .end local v0    # "dotNeedsAnimation":Z
    .end local v1    # "textNeedsAnimation":Z
    :cond_5
    move v0, v3

    .line 630
    goto :goto_0

    .restart local v0    # "dotNeedsAnimation":Z
    :cond_6
    move v1, v3

    .line 632
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

    .line 609
    iget v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    if-eqz v4, :cond_5

    :cond_1
    move v0, v3

    .line 611
    .local v0, "dotNeedsAnimation":Z
    :goto_0
    iget v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    if-eqz v4, :cond_6

    :cond_3
    move v1, v3

    .line 616
    .local v1, "textNeedsAnimation":Z
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startDotDisappearAnimation(J)V

    .line 618
    if-eqz v1, :cond_4

    .line 619
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startTextDisappearAnimation(J)V

    .line 621
    :cond_4
    const-wide/16 v2, 0x108

    invoke-direct {p0, v2, v3}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->startEmptyCircleAppearAnimation(J)V

    .line 625
    return-void

    .end local v0    # "dotNeedsAnimation":Z
    .end local v1    # "textNeedsAnimation":Z
    :cond_5
    move v0, v2

    .line 609
    goto :goto_0

    .restart local v0    # "dotNeedsAnimation":Z
    :cond_6
    move v1, v2

    .line 611
    goto :goto_1
.end method

.method swapToDotWhenAppearFinished()V
    .locals 6

    .prologue
    .line 668
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    .line 669
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    .line 670
    iget-object v2, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    iget-object v4, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 672
    .local v0, "remainingDuration":J
    const-wide/16 v2, 0x64

    add-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->postDotSwap(J)V

    .line 676
    .end local v0    # "remainingDuration":J
    :goto_0
    return-void

    .line 674
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->performSwap()V

    goto :goto_0
.end method
