.class Lcom/android/server/policy/ui/OpGlobalActionIcon$4;
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

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$4;->this$0:Lcom/android/server/policy/ui/OpGlobalActionIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$4;->this$0:Lcom/android/server/policy/ui/OpGlobalActionIcon;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIsAnimationStarted:Z

    .line 168
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$4;->this$0:Lcom/android/server/policy/ui/OpGlobalActionIcon;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mArcStartAnimValue:I

    .line 169
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$4;->this$0:Lcom/android/server/policy/ui/OpGlobalActionIcon;

    iget-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$4;->this$0:Lcom/android/server/policy/ui/OpGlobalActionIcon;

    iget v1, v1, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mArcStartValueTemp:I

    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$4;->this$0:Lcom/android/server/policy/ui/OpGlobalActionIcon;

    iget v2, v2, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mArcStartAnimValue:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mArcStartShiftValue:I

    .line 170
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$4;->this$0:Lcom/android/server/policy/ui/OpGlobalActionIcon;

    invoke-virtual {v0}, Lcom/android/server/policy/ui/OpGlobalActionIcon;->invalidateSelf()V

    .line 171
    return-void
.end method
