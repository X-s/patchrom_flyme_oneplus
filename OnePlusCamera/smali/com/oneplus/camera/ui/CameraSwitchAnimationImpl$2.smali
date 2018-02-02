.class Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2;
.super Ljava/lang/Object;
.source "CameraSwitchAnimationImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->startFlipperAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2;->this$0:Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3f19999a    # 0.6f

    const/4 v2, 0x1

    .line 199
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2;->this$0:Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->-get0(Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startFlipperAnimation() - On first image animation end"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2;->this$0:Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->-get1(Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v5

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2;->this$0:Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->-get1(Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2;->this$0:Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->-get1(Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v2

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotationY(F)V

    .line 203
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2;->this$0:Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->-get1(Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 204
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2;->this$0:Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->-get1(Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 205
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2;->this$0:Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;->-get1(Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2$1;-><init>(Lcom/oneplus/camera/ui/CameraSwitchAnimationImpl$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 197
    return-void
.end method
