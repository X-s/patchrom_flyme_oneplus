.class Lcom/android/server/policy/ui/OpGlobalActionIcon$9;
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

.field final synthetic val$circleAnimLengthAnimator_2:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ui/OpGlobalActionIcon;Landroid/animation/ValueAnimator;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$9;->this$0:Lcom/android/server/policy/ui/OpGlobalActionIcon;

    iput-object p2, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$9;->val$circleAnimLengthAnimator_2:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 274
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$9;->val$circleAnimLengthAnimator_2:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 283
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$9;->val$circleAnimLengthAnimator_2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 284
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 278
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 270
    return-void
.end method
