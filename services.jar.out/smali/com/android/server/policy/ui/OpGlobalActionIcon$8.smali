.class Lcom/android/server/policy/ui/OpGlobalActionIcon$8;
.super Ljava/lang/Object;
.source "OpGlobalActionIcon.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Lcom/android/server/policy/ui/OpGlobalActionIcon;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/ui/OpGlobalActionIcon;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$8;->this$0:Lcom/android/server/policy/ui/OpGlobalActionIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$8;->this$0:Lcom/android/server/policy/ui/OpGlobalActionIcon;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIsAnimationStarted:Z

    .line 251
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$8;->this$0:Lcom/android/server/policy/ui/OpGlobalActionIcon;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mArcLengthAnimValue:I

    .line 253
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$8;->this$0:Lcom/android/server/policy/ui/OpGlobalActionIcon;

    invoke-virtual {v0}, Lcom/android/server/policy/ui/OpGlobalActionIcon;->invalidateSelf()V

    .line 249
    return-void
.end method
