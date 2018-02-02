.class Lcom/oneplus/camera/ui/ScaleImageView$15;
.super Ljava/lang/Object;
.source "ScaleImageView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ScaleImageView;->finishLandscape()V
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
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ScaleImageView;

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/oneplus/camera/ui/ScaleImageView$15;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$15;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ScaleImageView;->-get4(Lcom/oneplus/camera/ui/ScaleImageView;)Lcom/oneplus/camera/ui/PreviewGallery;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/PreviewGallery;->setSwipeable(Z)V

    .line 1219
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$15;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ScaleImageView;->-set0(Lcom/oneplus/camera/ui/ScaleImageView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 1215
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$15;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ScaleImageView;->-get4(Lcom/oneplus/camera/ui/ScaleImageView;)Lcom/oneplus/camera/ui/PreviewGallery;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/PreviewGallery;->setSwipeable(Z)V

    .line 1213
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1224
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/oneplus/camera/ui/ScaleImageView$15;->this$0:Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ScaleImageView;->-get4(Lcom/oneplus/camera/ui/ScaleImageView;)Lcom/oneplus/camera/ui/PreviewGallery;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/PreviewGallery;->setSwipeable(Z)V

    .line 1208
    return-void
.end method
