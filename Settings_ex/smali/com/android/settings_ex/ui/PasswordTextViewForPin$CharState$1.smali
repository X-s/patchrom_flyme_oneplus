.class Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PasswordTextViewForPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$1:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$1;->this$1:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$1;->mCancelled:Z

    .line 438
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$1;->mCancelled:Z

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$1;->this$1:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    iget-object v0, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$100(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$1;->this$1:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 444
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$1;->this$1:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    iget-object v0, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    # getter for: Lcom/android/settings_ex/ui/PasswordTextViewForPin;->mCharPool:Ljava/util/Stack;
    invoke-static {v0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->access$200(Lcom/android/settings_ex/ui/PasswordTextViewForPin;)Ljava/util/Stack;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$1;->this$1:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$1;->this$1:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    invoke-virtual {v0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->resetState()V

    .line 446
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$1;->this$1:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$1;->this$1:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    iget-object v1, v1, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    # invokes: Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->access$300(Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;Landroid/animation/Animator;)V

    .line 447
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$1;->this$1:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 449
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$1;->mCancelled:Z

    .line 454
    return-void
.end method
