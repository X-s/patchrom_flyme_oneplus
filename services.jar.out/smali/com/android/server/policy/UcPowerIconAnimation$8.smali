.class Lcom/android/server/policy/UcPowerIconAnimation$8;
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
    .line 266
    iput-object p1, p0, Lcom/android/server/policy/UcPowerIconAnimation$8;->this$0:Lcom/android/server/policy/UcPowerIconAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 279
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation$8;->this$0:Lcom/android/server/policy/UcPowerIconAnimation;

    # getter for: Lcom/android/server/policy/UcPowerIconAnimation;->mShutingDown:Z
    invoke-static {v0}, Lcom/android/server/policy/UcPowerIconAnimation;->access$200(Lcom/android/server/policy/UcPowerIconAnimation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation$8;->this$0:Lcom/android/server/policy/UcPowerIconAnimation;

    iget-object v1, p0, Lcom/android/server/policy/UcPowerIconAnimation$8;->this$0:Lcom/android/server/policy/UcPowerIconAnimation;

    # getter for: Lcom/android/server/policy/UcPowerIconAnimation;->mArcAnimStartPos:I
    invoke-static {v1}, Lcom/android/server/policy/UcPowerIconAnimation;->access$600(Lcom/android/server/policy/UcPowerIconAnimation;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/policy/UcPowerIconAnimation$8;->this$0:Lcom/android/server/policy/UcPowerIconAnimation;

    # getter for: Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnimValue:I
    invoke-static {v2}, Lcom/android/server/policy/UcPowerIconAnimation;->access$500(Lcom/android/server/policy/UcPowerIconAnimation;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0x168

    # setter for: Lcom/android/server/policy/UcPowerIconAnimation;->mArcAnimStartPos:I
    invoke-static {v0, v1}, Lcom/android/server/policy/UcPowerIconAnimation;->access$602(Lcom/android/server/policy/UcPowerIconAnimation;I)I

    .line 275
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation$8;->this$0:Lcom/android/server/policy/UcPowerIconAnimation;

    # getter for: Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnim2:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/server/policy/UcPowerIconAnimation;->access$700(Lcom/android/server/policy/UcPowerIconAnimation;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 277
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 270
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 268
    return-void
.end method
