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

.field final synthetic val$height:I

.field final synthetic val$image:Landroid/view/View;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/PreviewGallery$2;Landroid/view/View;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/PreviewGallery$2;
    .param p2, "val$image"    # Landroid/view/View;
    .param p3, "val$width"    # I
    .param p4, "val$height"    # I

    .prologue
    .line 394
    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewGallery$2$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$2;

    iput-object p2, p0, Lcom/oneplus/camera/ui/PreviewGallery$2$1;->val$image:Landroid/view/View;

    iput p3, p0, Lcom/oneplus/camera/ui/PreviewGallery$2$1;->val$width:I

    iput p4, p0, Lcom/oneplus/camera/ui/PreviewGallery$2$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 416
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 402
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$2$1;->val$image:Landroid/view/View;

    invoke-virtual {v1, v3, v3}, Landroid/view/View;->scrollTo(II)V

    .line 403
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$2$1;->val$image:Landroid/view/View;

    iget v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$2$1;->val$width:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 404
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$2$1;->val$image:Landroid/view/View;

    iget v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$2$1;->val$height:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 405
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$2$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$2;

    iget-object v1, v1, Lcom/oneplus/camera/ui/PreviewGallery$2;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oneplus/camera/ui/PreviewGallery;->-set0(Lcom/oneplus/camera/ui/PreviewGallery;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 407
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$2$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$2;

    iget-object v1, v1, Lcom/oneplus/camera/ui/PreviewGallery$2;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewGallery;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 408
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$2$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$2;

    iget-object v1, v1, Lcom/oneplus/camera/ui/PreviewGallery$2;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v1}, Lcom/oneplus/camera/ui/PreviewGallery;->-get0(Lcom/oneplus/camera/ui/PreviewGallery;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "burst , not to decode now"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$2$1;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$2;

    iget-object v1, v1, Lcom/oneplus/camera/ui/PreviewGallery$2;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    const/4 v2, 0x1

    invoke-static {v1, v2, v3}, Lcom/oneplus/camera/ui/PreviewGallery;->-wrap12(Lcom/oneplus/camera/ui/PreviewGallery;IZ)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 420
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 397
    return-void
.end method
