.class Lcom/android/server/policy/ui/OpGlobalActionIcon$6;
.super Ljava/lang/Object;
.source "OpGlobalActionIcon.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/ui/OpGlobalActionIcon;->startCircleAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ui/OpGlobalActionIcon;

.field final synthetic val$circleAnimStartAnimator_1:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ui/OpGlobalActionIcon;Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/ui/OpGlobalActionIcon;
    .param p2, "val$circleAnimStartAnimator_1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$6;->this$0:Lcom/android/server/policy/ui/OpGlobalActionIcon;

    iput-object p2, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$6;->val$circleAnimStartAnimator_1:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 204
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$6;->this$0:Lcom/android/server/policy/ui/OpGlobalActionIcon;

    iget-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$6;->this$0:Lcom/android/server/policy/ui/OpGlobalActionIcon;

    iget v1, v1, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mArcStartShiftValue:I

    rem-int/lit16 v1, v1, 0x168

    iput v1, v0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mArcStartValueTemp:I

    .line 218
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$6;->val$circleAnimStartAnimator_1:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 219
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$6;->val$circleAnimStartAnimator_1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 216
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 208
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 212
    return-void
.end method
