.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ThumbnailBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    const/4 v1, 0x1

    # setter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CancelHideAnimation:Z
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$1002(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)Z

    .line 263
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 268
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$700(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 269
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$700(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 270
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_ThumbnailBarContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$700(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 271
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # setter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_HideAnimationStarted:Z
    invoke-static {v0, v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$1102(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)Z

    .line 272
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # getter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CancelHideAnimation:Z
    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$1000(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # setter for: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->m_CancelHideAnimation:Z
    invoke-static {v0, v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$1002(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)Z

    .line 278
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # invokes: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->hideThumbnailBar(Z)V
    invoke-static {v0, v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$500(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)V

    goto :goto_0
.end method
