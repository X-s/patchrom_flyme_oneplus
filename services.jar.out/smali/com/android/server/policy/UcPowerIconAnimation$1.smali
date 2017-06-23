.class Lcom/android/server/policy/UcPowerIconAnimation$1;
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
    .line 181
    iput-object p1, p0, Lcom/android/server/policy/UcPowerIconAnimation$1;->this$0:Lcom/android/server/policy/UcPowerIconAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v0, v1, v2

    .line 186
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/android/server/policy/UcPowerIconAnimation$1;->this$0:Lcom/android/server/policy/UcPowerIconAnimation;

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Lcom/android/server/policy/UcPowerIconAnimation;->setAlpha(I)V

    .line 187
    return-void
.end method
