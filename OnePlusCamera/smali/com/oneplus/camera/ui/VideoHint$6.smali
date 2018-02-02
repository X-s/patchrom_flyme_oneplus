.class Lcom/oneplus/camera/ui/VideoHint$6;
.super Ljava/lang/Object;
.source "VideoHint.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/VideoHint;->updateVideoHint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/VideoHint;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/VideoHint;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/VideoHint;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/oneplus/camera/ui/VideoHint$6;->this$0:Lcom/oneplus/camera/ui/VideoHint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 189
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint$6;->this$0:Lcom/oneplus/camera/ui/VideoHint;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/camera/ui/VideoHint;->m_HideVideoHintImage:Z

    .line 160
    iget-object v0, p0, Lcom/oneplus/camera/ui/VideoHint$6;->this$0:Lcom/oneplus/camera/ui/VideoHint;

    invoke-static {v0}, Lcom/oneplus/camera/ui/VideoHint;->-get1(Lcom/oneplus/camera/ui/VideoHint;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f19999a    # 0.6f

    const v5, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v4, v2, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/ui/VideoHint$6$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/VideoHint$6$1;-><init>(Lcom/oneplus/camera/ui/VideoHint$6;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 158
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 193
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 154
    return-void
.end method
