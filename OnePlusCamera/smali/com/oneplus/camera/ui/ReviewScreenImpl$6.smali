.class Lcom/oneplus/camera/ui/ReviewScreenImpl$6;
.super Ljava/lang/Object;
.source "ReviewScreenImpl.java"

# interfaces
.implements Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ReviewScreenImpl;->onPostviewReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

.field final synthetic val$handle:Lcom/oneplus/camera/CaptureHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;Lcom/oneplus/camera/CaptureHandle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ReviewScreenImpl;
    .param p2, "val$handle"    # Lcom/oneplus/camera/CaptureHandle;

    .prologue
    .line 680
    iput-object p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    iput-object p2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->val$handle:Lcom/oneplus/camera/CaptureHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapAvailable(Lcom/oneplus/camera/media/YuvToBitmapWorker;)V
    .locals 19
    .param p1, "worker"    # Lcom/oneplus/camera/media/YuvToBitmapWorker;

    .prologue
    .line 685
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get0(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onPostviewReceived() - Bitmap available, handle: "

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->val$handle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 688
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->acquireLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v18

    .line 689
    .local v18, "workerBitmap":Landroid/graphics/Bitmap;
    if-nez v18, :cond_0

    .line 691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get0(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onPostviewReceived() - Worker bitmap is null"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    return-void

    .line 694
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 695
    .local v2, "reviewImage":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 698
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-virtual {v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/camera/Camera;

    .line 699
    .local v15, "camera":Lcom/oneplus/camera/Camera;
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 700
    .local v7, "matrix":Landroid/graphics/Matrix;
    if-eqz v2, :cond_8

    .line 702
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v15, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v3, v4, :cond_7

    .line 704
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->val$handle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {v3}, Lcom/oneplus/camera/CaptureHandle;->getCaptureRotation()Lcom/oneplus/base/Rotation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->val$handle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {v3}, Lcom/oneplus/camera/CaptureHandle;->isMirrored()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 707
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 708
    :cond_1
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v15, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 720
    :cond_2
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 723
    const/16 v17, 0x0

    .line 724
    .local v17, "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get4(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    move-result-object v3

    if-nez v3, :cond_3

    .line 725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-wrap12(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V

    .line 726
    :cond_3
    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get4(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->PHOTO_THUMBNAIL:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    if-ne v3, v4, :cond_4

    .line 728
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 729
    .local v13, "thumbMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/16 v5, 0x104

    const/16 v6, 0x104

    const/4 v8, 0x1

    invoke-static {v3, v4, v5, v6, v8}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v16

    .line 730
    .local v16, "thumbSize":Landroid/util/Size;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get0(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "handleAsyncMessage() - Thumb size: "

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 731
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v13, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 732
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x1

    move-object v8, v2

    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 735
    .end local v13    # "thumbMatrix":Landroid/graphics/Matrix;
    .end local v16    # "thumbSize":Landroid/util/Size;
    .end local v17    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get3(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 736
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-wrap11(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V

    .line 738
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    move-object/from16 v0, v17

    invoke-static {v3, v2, v0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-wrap6(Lcom/oneplus/camera/ui/ReviewScreenImpl;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 683
    :goto_1
    return-void

    .line 712
    :cond_6
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v15, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 713
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->val$handle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {v3}, Lcom/oneplus/camera/CaptureHandle;->isMirrored()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 714
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto/16 :goto_0

    .line 718
    :cond_7
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v15, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto/16 :goto_0

    .line 741
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get0(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onPostviewReceived() - Cannot decode review image"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
