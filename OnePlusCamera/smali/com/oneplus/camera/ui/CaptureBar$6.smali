.class Lcom/oneplus/camera/ui/CaptureBar$6;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureBar;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureBar;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureBar;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 565
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap0(Lcom/oneplus/camera/ui/CaptureBar;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 566
    return-void

    .line 568
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap3(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/media/MediaType;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v2, :cond_1

    .line 569
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v1, v2, :cond_1

    .line 570
    return-void

    .line 572
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap3(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/media/MediaType;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v2, :cond_2

    .line 573
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    if-eq v1, v2, :cond_2

    .line 574
    return-void

    .line 577
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->switchCamera()Z

    move-result v1

    if-nez v1, :cond_3

    .line 578
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-get0(Lcom/oneplus/camera/ui/CaptureBar;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onSwitchCameraButtonClicked() - Fail to switch camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :goto_0
    return-void

    .line 581
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-get5(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-get5(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 583
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureBar;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CaptureBar;->-get13(Lcom/oneplus/camera/ui/CaptureBar;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 584
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-get5(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 587
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap2(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/Camera;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 588
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap2(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/Camera;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v1, v2, :cond_6

    .line 589
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-get14(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f020109

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 594
    :goto_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-get14(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {v2, v1}, Lcom/oneplus/camera/ui/CaptureBar;->-set2(Lcom/oneplus/camera/ui/CaptureBar;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;

    .line 595
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-get5(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 596
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-get5(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 599
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-get5(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CaptureBar;->-get5(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v2

    mul-int v0, v1, v2

    .line 600
    .local v0, "durationMillies":I
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CaptureBar;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CaptureBar;->-get13(Lcom/oneplus/camera/ui/CaptureBar;)Ljava/lang/Runnable;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 591
    .end local v0    # "durationMillies":I
    :cond_6
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$6;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-get14(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f02010a

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1
.end method
