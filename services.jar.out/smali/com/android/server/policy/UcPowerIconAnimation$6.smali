.class Lcom/android/server/policy/UcPowerIconAnimation$6;
.super Ljava/lang/Object;
.source "UcPowerIconAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/UcPowerIconAnimation;->initAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/UcPowerIconAnimation;


# direct methods
.method constructor <init>(Lcom/android/server/policy/UcPowerIconAnimation;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/server/policy/UcPowerIconAnimation$6;->this$0:Lcom/android/server/policy/UcPowerIconAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 251
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation$6;->this$0:Lcom/android/server/policy/UcPowerIconAnimation;

    # getter for: Lcom/android/server/policy/UcPowerIconAnimation;->mShutingDown:Z
    invoke-static {v0}, Lcom/android/server/policy/UcPowerIconAnimation;->access$200(Lcom/android/server/policy/UcPowerIconAnimation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation$6;->this$0:Lcom/android/server/policy/UcPowerIconAnimation;

    # getter for: Lcom/android/server/policy/UcPowerIconAnimation;->mArcLengthAnim1:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/server/policy/UcPowerIconAnimation;->access$400(Lcom/android/server/policy/UcPowerIconAnimation;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 249
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 243
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 241
    return-void
.end method
