.class Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DotsPageIndicator.java"


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
    .line 867
    iput-object p1, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator$2;->this$1:Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 870
    iget-object v0, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator$2;->this$1:Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator;

    iget-object v0, v0, Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator;->this$0:Lcom/android/settings_ex/widget/DotsPageIndicator;

    iget-object v1, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator$2;->this$1:Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator;

    invoke-static {v1}, Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator;->-get0(Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/widget/DotsPageIndicator;->-wrap2(Lcom/android/settings_ex/widget/DotsPageIndicator;IF)V

    .line 871
    iget-object v0, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator$2;->this$1:Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator;

    iget-object v0, v0, Lcom/android/settings_ex/widget/DotsPageIndicator$PendingRevealAnimator;->this$0:Lcom/android/settings_ex/widget/DotsPageIndicator;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    .line 869
    return-void
.end method
