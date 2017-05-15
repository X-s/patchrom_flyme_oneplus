.class Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OPPasswordTextViewForPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$1;->this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$1;->mCancelled:Z

    .line 388
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$1;->mCancelled:Z

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$1;->this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    iget-object v0, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$100(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$1;->this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 394
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$1;->this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    iget-object v0, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    # getter for: Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->mCharPool:Ljava/util/Stack;
    invoke-static {v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->access$200(Lcom/oneplus/settings/password/OPPasswordTextViewForPin;)Ljava/util/Stack;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$1;->this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$1;->this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    invoke-virtual {v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->resetState()V

    .line 396
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$1;->this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$1;->this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    iget-object v1, v1, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    # invokes: Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V
    invoke-static {v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->access$300(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;Landroid/animation/Animator;)V

    .line 397
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$1;->this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 399
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$1;->mCancelled:Z

    .line 404
    return-void
.end method
