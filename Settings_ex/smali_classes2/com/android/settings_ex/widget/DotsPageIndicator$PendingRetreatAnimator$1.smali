.class Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRetreatAnimator$1;
.super Ljava/lang/Object;
.source "DotsPageIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRetreatAnimator;-><init>(Lcom/android/settings_ex/widget/DotsPageIndicator;IIILcom/android/settings_ex/widget/DotsPageIndicator$StartPredicate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRetreatAnimator;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRetreatAnimator;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRetreatAnimator;

    .prologue
    .line 787
    iput-object p1, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRetreatAnimator$1;->this$1:Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRetreatAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 791
    iget-object v1, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRetreatAnimator$1;->this$1:Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object v2, v1, Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings_ex/widget/DotsPageIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/android/settings_ex/widget/DotsPageIndicator;->-set1(Lcom/android/settings_ex/widget/DotsPageIndicator;F)F

    .line 792
    iget-object v1, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRetreatAnimator$1;->this$1:Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object v1, v1, Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings_ex/widget/DotsPageIndicator;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    .line 794
    iget-object v1, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRetreatAnimator$1;->this$1:Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object v1, v1, Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings_ex/widget/DotsPageIndicator;

    invoke-static {v1}, Lcom/android/settings_ex/widget/DotsPageIndicator;->-get7(Lcom/android/settings_ex/widget/DotsPageIndicator;)[Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 795
    .local v0, "pendingReveal":Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator;
    iget-object v4, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRetreatAnimator$1;->this$1:Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRetreatAnimator;

    iget-object v4, v4, Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings_ex/widget/DotsPageIndicator;

    invoke-static {v4}, Lcom/android/settings_ex/widget/DotsPageIndicator;->-get5(Lcom/android/settings_ex/widget/DotsPageIndicator;)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator;->startIfNecessary(F)V

    .line 794
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 789
    .end local v0    # "pendingReveal":Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator;
    :cond_0
    return-void
.end method
