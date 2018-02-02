.class Lcom/oneplus/camera/ui/VideoHint$6$1;
.super Ljava/lang/Object;
.source "VideoHint.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/VideoHint$6;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/VideoHint$6;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/VideoHint$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/VideoHint$6;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/oneplus/camera/ui/VideoHint$6$1;->this$1:Lcom/oneplus/camera/ui/VideoHint$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 179
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint$6$1;->this$1:Lcom/oneplus/camera/ui/VideoHint$6;

    iget-object v0, v0, Lcom/oneplus/camera/ui/VideoHint$6;->this$0:Lcom/oneplus/camera/ui/VideoHint;

    iget-boolean v0, v0, Lcom/oneplus/camera/ui/VideoHint;->m_HideVideoHintImage:Z

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint$6$1;->this$1:Lcom/oneplus/camera/ui/VideoHint$6;

    iget-object v0, v0, Lcom/oneplus/camera/ui/VideoHint$6;->this$0:Lcom/oneplus/camera/ui/VideoHint;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/camera/ui/VideoHint;->m_HideVideoHintImage:Z

    .line 171
    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint$6$1;->this$1:Lcom/oneplus/camera/ui/VideoHint$6;

    iget-object v0, v0, Lcom/oneplus/camera/ui/VideoHint$6;->this$0:Lcom/oneplus/camera/ui/VideoHint;

    invoke-static {v0}, Lcom/oneplus/camera/ui/VideoHint;->-get1(Lcom/oneplus/camera/ui/VideoHint;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 167
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint$6$1;->this$1:Lcom/oneplus/camera/ui/VideoHint$6;

    iget-object v0, v0, Lcom/oneplus/camera/ui/VideoHint$6;->this$0:Lcom/oneplus/camera/ui/VideoHint;

    invoke-static {v0}, Lcom/oneplus/camera/ui/VideoHint;->-get1(Lcom/oneplus/camera/ui/VideoHint;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 183
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 163
    return-void
.end method
