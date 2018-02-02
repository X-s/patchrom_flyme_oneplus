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
    .line 685
    iput-object p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    iput-object p2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->val$handle:Lcom/oneplus/camera/CaptureHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapAvailable(Lcom/oneplus/camera/media/YuvToBitmapWorker;)V
    .locals 20
    .param p1, "worker"    # Lcom/oneplus/camera/media/YuvToBitmapWorker;

    .prologue
    .line 690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get0(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onPostviewReceived() - Bitmap available, handle: "

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->val$handle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 693
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->acquireLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    .line 694
    .local v19, "workerBitmap":Landroid/graphics/Bitmap;
    if-nez v19, :cond_0

    .line 696
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get0(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onPostviewReceived() - Worker bitmap is null"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    return-void

    .line 699
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 700
    .local v2, "reviewImage":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-virtual {v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/camera/Camera;

    .line 704
    .local v15, "camera":Lcom/oneplus/camera/Camera;
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 705
    .local v7, "matrix":Landroid/graphics/Matrix;
    if-eqz v2, :cond_5

    .line 707
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v15, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v0, v3

    move/from16 v16, v0

    .line 708
    .local v16, "rotate":F
    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->val$handle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {v3}, Lcom/oneplus/camera/CaptureHandle;->isMirrored()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 710
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 712
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 715
    const/16 v18, 0x0

    .line 716
    .local v18, "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get4(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    move-result-object v3

    if-nez v3, :cond_2

    .line 717
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-wrap12(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V

    .line 718
    :cond_2
    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get4(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->PHOTO_THUMBNAIL:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    if-ne v3, v4, :cond_3

    .line 720
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 721
    .local v13, "thumbMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/16 v5, 0x104

    const/16 v6, 0x104

    const/4 v8, 0x1

    invoke-static {v3, v4, v5, v6, v8}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v17

    .line 722
    .local v17, "thumbSize":Landroid/util/Size;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get0(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "handleAsyncMessage() - Thumb size: "

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 723
    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v13, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 724
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x1

    move-object v8, v2

    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 727
    .end local v13    # "thumbMatrix":Landroid/graphics/Matrix;
    .end local v17    # "thumbSize":Landroid/util/Size;
    .end local v18    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get3(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 728
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-wrap11(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V

    .line 730
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    move-object/from16 v0, v18

    invoke-static {v3, v2, v0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-wrap6(Lcom/oneplus/camera/ui/ReviewScreenImpl;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 688
    .end local v16    # "rotate":F
    :goto_0
    return-void

    .line 733
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get0(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onPostviewReceived() - Cannot decode review image"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
