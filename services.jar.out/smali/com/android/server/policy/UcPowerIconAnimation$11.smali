.class Lcom/android/server/policy/UcPowerIconAnimation$11;
.super Ljava/lang/Object;
.source "UcPowerIconAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 311
    iput-object p1, p0, Lcom/android/server/policy/UcPowerIconAnimation$11;->this$0:Lcom/android/server/policy/UcPowerIconAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation$11;->this$0:Lcom/android/server/policy/UcPowerIconAnimation;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/android/server/policy/UcPowerIconAnimation;->mArcTurnAroundAnimPos:I
    invoke-static {v0, v1}, Lcom/android/server/policy/UcPowerIconAnimation;->access$902(Lcom/android/server/policy/UcPowerIconAnimation;I)I

    .line 316
    return-void
.end method
