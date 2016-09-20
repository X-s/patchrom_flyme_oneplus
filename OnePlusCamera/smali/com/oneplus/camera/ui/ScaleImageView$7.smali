.class Lcom/oneplus/camera/ui/ScaleImageView$7;
.super Ljava/lang/Object;
.source "ScaleImageView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ScaleImageView;->animateCenterToSlider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ScaleImageView;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ScaleImageView;)V
    .locals 0

    .prologue
    .line 951
    iput-object p1, p0, Lcom/oneplus/camera/ui/ScaleImageView$7;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 967
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$7;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_Gallery:Lcom/oneplus/camera/ui/PreviewGallery;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1900(Lcom/oneplus/camera/ui/ScaleImageView;)Lcom/oneplus/camera/ui/PreviewGallery;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/PreviewGallery;->setSwipeable(Z)V

    .line 968
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 960
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$7;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/camera/ui/ScaleImageView;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ScaleImageView;->access$2002(Lcom/oneplus/camera/ui/ScaleImageView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 961
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$7;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_SavedMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ScaleImageView;->access$500(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ScaleImageView$7;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_Matrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Lcom/oneplus/camera/ui/ScaleImageView;->access$600(Lcom/oneplus/camera/ui/ScaleImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 962
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$7;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # invokes: Lcom/oneplus/camera/ui/ScaleImageView;->animateToSliderInternal()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/ScaleImageView;->access$2300(Lcom/oneplus/camera/ui/ScaleImageView;)V

    .line 963
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 972
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 955
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$7;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    # getter for: Lcom/oneplus/camera/ui/ScaleImageView;->m_Gallery:Lcom/oneplus/camera/ui/PreviewGallery;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ScaleImageView;->access$1900(Lcom/oneplus/camera/ui/ScaleImageView;)Lcom/oneplus/camera/ui/PreviewGallery;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/PreviewGallery;->setSwipeable(Z)V

    .line 956
    return-void
.end method
