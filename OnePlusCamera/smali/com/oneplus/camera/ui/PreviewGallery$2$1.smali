.class Lcom/oneplus/camera/ui/PreviewGallery$2$1;
.super Ljava/lang/Object;
.source "PreviewGallery.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/PreviewGallery$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/PreviewGallery$2;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/PreviewGallery$2;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewGallery$2$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 421
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 406
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$2$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$2;

    iget-object v1, v1, Lcom/oneplus/camera/ui/PreviewGallery$2;->val$image:Landroid/view/View;

    invoke-virtual {v1, v3, v3}, Landroid/view/View;->scrollTo(II)V

    .line 407
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$2$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$2;

    iget-object v1, v1, Lcom/oneplus/camera/ui/PreviewGallery$2;->val$image:Landroid/view/View;

    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$2$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$2;

    iget v2, v2, Lcom/oneplus/camera/ui/PreviewGallery$2;->val$width:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 408
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$2$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$2;

    iget-object v1, v1, Lcom/oneplus/camera/ui/PreviewGallery$2;->val$image:Landroid/view/View;

    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$2$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$2;

    iget v2, v2, Lcom/oneplus/camera/ui/PreviewGallery$2;->val$height:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 409
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$2$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$2;

    iget-object v1, v1, Lcom/oneplus/camera/ui/PreviewGallery$2;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    const/4 v2, 0x0

    # setter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_Animator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v1, v2}, Lcom/oneplus/camera/ui/PreviewGallery;->access$802(Lcom/oneplus/camera/ui/PreviewGallery;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 411
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$2$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$2;

    iget-object v1, v1, Lcom/oneplus/camera/ui/PreviewGallery$2;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewGallery;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 412
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$2$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$2;

    iget-object v1, v1, Lcom/oneplus/camera/ui/PreviewGallery$2;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/camera/ui/PreviewGallery;->access$900(Lcom/oneplus/camera/ui/PreviewGallery;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "burst , not to decode now"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$2$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$2;

    iget-object v1, v1, Lcom/oneplus/camera/ui/PreviewGallery$2;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    const/4 v2, 0x1

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery;->resetCache(IZ)V
    invoke-static {v1, v2, v3}, Lcom/oneplus/camera/ui/PreviewGallery;->access$1000(Lcom/oneplus/camera/ui/PreviewGallery;IZ)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 425
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 402
    return-void
.end method
