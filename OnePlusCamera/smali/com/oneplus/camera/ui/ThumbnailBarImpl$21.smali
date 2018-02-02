.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;
.super Ljava/lang/Object;
.source "ThumbnailBarImpl.java"

# interfaces
.implements Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl;->addThumbnailView(Lcom/oneplus/camera/CaptureHandle;I[BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

.field final synthetic val$handle:Lcom/oneplus/camera/CaptureHandle;

.field final synthetic val$thumbInfo:Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;
    .param p2, "val$handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "val$thumbInfo"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;

    .prologue
    .line 828
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    iput-object p2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;->val$handle:Lcom/oneplus/camera/CaptureHandle;

    iput-object p3, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;->val$thumbInfo:Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapAvailable(Lcom/oneplus/camera/media/YuvToBitmapWorker;)V
    .locals 19
    .param p1, "worker"    # Lcom/oneplus/camera/media/YuvToBitmapWorker;

    .prologue
    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "addThumbnailView() - Bitmap available, handle: "

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;->val$handle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 834
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->acquireLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 837
    .local v1, "image":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;->val$handle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {v2}, Lcom/oneplus/camera/CaptureHandle;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v13

    .line 838
    .local v13, "camera":Lcom/oneplus/camera/Camera;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 839
    .local v6, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;->val$handle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {v2}, Lcom/oneplus/camera/CaptureHandle;->getCaptureRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v14

    .line 841
    .local v14, "deviceOrientation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;->val$handle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {v2}, Lcom/oneplus/camera/CaptureHandle;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v2, v3, :cond_3

    .line 842
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v13, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v14

    int-to-float v15, v2

    .line 845
    .local v15, "rotate":F
    :goto_0
    invoke-virtual {v6, v15}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;->val$handle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {v2}, Lcom/oneplus/camera/CaptureHandle;->isMirrored()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 847
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 848
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 851
    .local v16, "rotatedImage":Landroid/graphics/Bitmap;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 852
    .local v18, "thumb":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;->val$thumbInfo:Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    .line 853
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;->val$thumbInfo:Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->isDecodingPostview:Z

    .line 854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap3(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Landroid/graphics/Bitmap;)V

    .line 857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;->val$thumbInfo:Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;

    iget-object v2, v2, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->contentUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;->val$thumbInfo:Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;

    iget-object v3, v3, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->contentUri:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0, v4}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap5(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;->val$thumbInfo:Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;

    invoke-static {v2, v3}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;)Z

    .line 864
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-set5(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)Z

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get9(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapTask;

    .line 869
    .local v17, "task":Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapTask;
    if-eqz v17, :cond_2

    .line 870
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$21;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapTask;->captureHandle:Lcom/oneplus/camera/CaptureHandle;

    move-object/from16 v0, v17

    iget v9, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapTask;->frameIndex:I

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapTask;->yuvImage:[B

    move-object/from16 v0, v17

    iget v11, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapTask;->width:I

    move-object/from16 v0, v17

    iget v12, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapTask;->height:I

    invoke-static/range {v7 .. v12}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap4(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/CaptureHandle;I[BII)V

    .line 831
    :cond_2
    return-void

    .line 844
    .end local v15    # "rotate":F
    .end local v16    # "rotatedImage":Landroid/graphics/Bitmap;
    .end local v17    # "task":Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapTask;
    .end local v18    # "thumb":Landroid/graphics/Bitmap;
    :cond_3
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v13, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v14

    int-to-float v15, v2

    .restart local v15    # "rotate":F
    goto/16 :goto_0
.end method
