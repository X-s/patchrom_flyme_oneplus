.class Lcom/android/server/policy/ui/OpGlobalActionIcon$1;
.super Ljava/lang/Object;
.source "OpGlobalActionIcon.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/ui/OpGlobalActionIcon;->startAnimateConfirmed()V
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
    .line 104
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$1;->this$0:Lcom/android/server/policy/ui/OpGlobalActionIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$1;->this$0:Lcom/android/server/policy/ui/OpGlobalActionIcon;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIsAnimationStarted:Z

    .line 108
    iget-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$1;->this$0:Lcom/android/server/policy/ui/OpGlobalActionIcon;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIconAnimProgress:I

    .line 109
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon$1;->this$0:Lcom/android/server/policy/ui/OpGlobalActionIcon;

    invoke-virtual {v0}, Lcom/android/server/policy/ui/OpGlobalActionIcon;->invalidateSelf()V

    .line 110
    return-void
.end method
