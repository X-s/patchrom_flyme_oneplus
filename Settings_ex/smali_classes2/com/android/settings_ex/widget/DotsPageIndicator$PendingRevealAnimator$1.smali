.class Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator$1;
.super Ljava/lang/Object;
.source "DotsPageIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator;-><init>(Lcom/android/settings_ex/widget/DotsPageIndicator;ILcom/android/settings_ex/widget/DotsPageIndicator$StartPredicate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator;

    .prologue
    .line 858
    iput-object p1, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator$1;->this$1:Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator$1;->this$1:Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator;

    iget-object v1, v0, Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator;->this$0:Lcom/android/settings_ex/widget/DotsPageIndicator;

    iget-object v0, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator$1;->this$1:Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator;

    invoke-static {v0}, Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator;->-get0(Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator;)I

    move-result v2

    .line 863
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 862
    invoke-static {v1, v2, v0}, Lcom/android/settings_ex/widget/DotsPageIndicator;->-wrap2(Lcom/android/settings_ex/widget/DotsPageIndicator;IF)V

    .line 860
    return-void
.end method
