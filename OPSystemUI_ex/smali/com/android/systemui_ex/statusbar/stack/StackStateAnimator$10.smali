.class Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StackStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mWasCancelled:Z

.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$10;->this$0:Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 758
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$10;->mWasCancelled:Z

    .line 759
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$10;->this$0:Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;

    # getter for: Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->access$000(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 750
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$10;->this$0:Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;

    # getter for: Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->access$000(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$10;->mWasCancelled:Z

    if-nez v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$10;->this$0:Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;

    # invokes: Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->onAnimationFinished()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->access$100(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;)V

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$10;->this$0:Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;

    # getter for: Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->access$200(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$10;->mWasCancelled:Z

    .line 764
    return-void
.end method
