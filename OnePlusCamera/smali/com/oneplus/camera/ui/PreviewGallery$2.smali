.class Lcom/oneplus/camera/ui/PreviewGallery$2;
.super Ljava/lang/Object;
.source "PreviewGallery.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/PreviewGallery;->animatePhotograph(Landroid/view/View;FJII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/PreviewGallery;

.field final synthetic val$duration:J

.field final synthetic val$height:I

.field final synthetic val$image:Landroid/view/View;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/PreviewGallery;Landroid/view/View;JII)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/PreviewGallery;
    .param p2, "val$image"    # Landroid/view/View;
    .param p3, "val$duration"    # J
    .param p5, "val$width"    # I
    .param p6, "val$height"    # I

    .prologue
    .line 386
    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewGallery$2;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    iput-object p2, p0, Lcom/oneplus/camera/ui/PreviewGallery$2;->val$image:Landroid/view/View;

    iput-wide p3, p0, Lcom/oneplus/camera/ui/PreviewGallery$2;->val$duration:J

    iput p5, p0, Lcom/oneplus/camera/ui/PreviewGallery$2;->val$width:I

    iput p6, p0, Lcom/oneplus/camera/ui/PreviewGallery$2;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 426
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$2;->val$image:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$2;->val$duration:J

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/ui/PreviewGallery$2$1;

    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$2;->val$image:Landroid/view/View;

    iget v3, p0, Lcom/oneplus/camera/ui/PreviewGallery$2;->val$width:I

    iget v4, p0, Lcom/oneplus/camera/ui/PreviewGallery$2;->val$height:I

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/oneplus/camera/ui/PreviewGallery$2$1;-><init>(Lcom/oneplus/camera/ui/PreviewGallery$2;Landroid/view/View;II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 393
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 430
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 389
    return-void
.end method
