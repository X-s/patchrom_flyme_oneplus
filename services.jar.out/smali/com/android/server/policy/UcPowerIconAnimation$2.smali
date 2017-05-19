.class Lcom/android/server/policy/UcPowerIconAnimation$2;
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
    .line 193
    iput-object p1, p0, Lcom/android/server/policy/UcPowerIconAnimation$2;->this$0:Lcom/android/server/policy/UcPowerIconAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation$2;->this$0:Lcom/android/server/policy/UcPowerIconAnimation;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    # setter for: Lcom/android/server/policy/UcPowerIconAnimation;->mLineAnimProgress:F
    invoke-static {v0, v1}, Lcom/android/server/policy/UcPowerIconAnimation;->access$002(Lcom/android/server/policy/UcPowerIconAnimation;F)F

    .line 198
    return-void
.end method
