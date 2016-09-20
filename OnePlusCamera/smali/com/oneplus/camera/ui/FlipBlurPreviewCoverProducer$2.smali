.class Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer$2;
.super Ljava/lang/Object;
.source "FlipBlurPreviewCoverProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer;->startInAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer;

.field final synthetic val$baseImageView:Landroid/widget/ImageView;

.field final synthetic val$blurImageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer$2;->this$0:Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer;

    iput-object p2, p0, Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer$2;->val$baseImageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer$2;->val$blurImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v3, 0x3f19999a    # 0.6f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 74
    iget-object v0, p0, Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer$2;->this$0:Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer;

    # getter for: Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer;->access$100(Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "startInAnimation() - On first image animation end"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer$2;->val$baseImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer$2;->val$blurImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer$2;->val$blurImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 78
    iget-object v0, p0, Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer$2;->val$blurImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotationY(F)V

    .line 79
    iget-object v0, p0, Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer$2;->val$blurImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 80
    iget-object v0, p0, Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer$2;->val$blurImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 81
    iget-object v0, p0, Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer$2;->val$blurImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer$2;->this$0:Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer;

    # getter for: Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer;->m_OnFlipAnimationEndRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer;->access$200(Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 83
    return-void
.end method
