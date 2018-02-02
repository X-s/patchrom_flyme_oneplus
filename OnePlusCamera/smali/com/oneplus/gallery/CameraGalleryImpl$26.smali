.class Lcom/oneplus/gallery/CameraGalleryImpl$26;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

.field final synthetic val$newRotation:Lcom/oneplus/base/Rotation;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Rotation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p2, "val$newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 4129
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$26;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$26;->val$newRotation:Lcom/oneplus/base/Rotation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4134
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$26;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$26;->val$newRotation:Lcom/oneplus/base/Rotation;

    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap66(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Rotation;)V

    .line 4135
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$26;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get40(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/widget/RotateRelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$26$1;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$26$1;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl$26;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4132
    return-void
.end method
