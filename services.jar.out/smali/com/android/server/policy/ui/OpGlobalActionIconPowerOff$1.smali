.class Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff$1;
.super Ljava/lang/Object;
.source "OpGlobalActionIconPowerOff.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;->startAnimateConfirmed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff$1;->this$0:Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff$1;->this$0:Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;->mIsAnimationStarted:Z

    .line 77
    iget-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff$1;->this$0:Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;->mLineAnimProgress:I
    invoke-static {v1, v0}, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;->access$002(Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;I)I

    .line 78
    return-void
.end method
