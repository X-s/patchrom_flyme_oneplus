.class Lcom/android/settings_ex/widget/DotsPageIndicator$3;
.super Ljava/lang/Object;
.source "DotsPageIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/widget/DotsPageIndicator;->createMoveSelectedAnimator(FIII)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/widget/DotsPageIndicator;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/widget/DotsPageIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/widget/DotsPageIndicator;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$3;->this$0:Lcom/android/settings_ex/widget/DotsPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 605
    iget-object v1, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$3;->this$0:Lcom/android/settings_ex/widget/DotsPageIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/settings_ex/widget/DotsPageIndicator;->-set5(Lcom/android/settings_ex/widget/DotsPageIndicator;F)F

    .line 606
    iget-object v0, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$3;->this$0:Lcom/android/settings_ex/widget/DotsPageIndicator;

    invoke-static {v0}, Lcom/android/settings_ex/widget/DotsPageIndicator;->-get4(Lcom/android/settings_ex/widget/DotsPageIndicator;)Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRetreatAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$3;->this$0:Lcom/android/settings_ex/widget/DotsPageIndicator;

    invoke-static {v1}, Lcom/android/settings_ex/widget/DotsPageIndicator;->-get8(Lcom/android/settings_ex/widget/DotsPageIndicator;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRetreatAnimator;->startIfNecessary(F)V

    .line 607
    iget-object v0, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$3;->this$0:Lcom/android/settings_ex/widget/DotsPageIndicator;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    .line 603
    return-void
.end method
