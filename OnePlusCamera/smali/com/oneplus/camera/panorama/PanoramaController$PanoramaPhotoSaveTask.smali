.class final Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;
.super Lcom/oneplus/camera/io/PhotoSaveTask;
.source "PanoramaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/panorama/PanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PanoramaPhotoSaveTask"
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-panorama-PanoramaController$ImageConvertionData$ImageConvertTypeSwitchesValues:[I


# instance fields
.field private m_Context:Landroid/content/Context;

.field private m_ConverionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;

.field private m_InnerExifTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_RotatedAngles:[F

.field private m_XMPTagger:Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;


# direct methods
.method private static synthetic -getcom-oneplus-camera-panorama-PanoramaController$ImageConvertionData$ImageConvertTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->-com-oneplus-camera-panorama-PanoramaController$ImageConvertionData$ImageConvertTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->-com-oneplus-camera-panorama-PanoramaController$ImageConvertionData$ImageConvertTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData$ImageConvertType;->values()[Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData$ImageConvertType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData$ImageConvertType;->YUV_TO_BMP_TO_JPEG:Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData$ImageConvertType;

    invoke-virtual {v1}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData$ImageConvertType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData$ImageConvertType;->YUV_TO_JPEG:Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData$ImageConvertType;

    invoke-virtual {v1}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData$ImageConvertType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->-com-oneplus-camera-panorama-PanoramaController$ImageConvertionData$ImageConvertTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;[B[FLjava/util/Map;Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "encodedPicture"    # [B
    .param p4, "rotateAngles"    # [F
    .param p6, "convertionData"    # Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;
    .param p7, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oneplus/camera/CaptureHandle;",
            "[B[F",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;",
            "Lcom/oneplus/camera/CameraCaptureEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .local p5, "exifTags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p7

    .line 220
    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/io/PhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;[BLjava/util/Map;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    .line 214
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_RotatedAngles:[F

    .line 221
    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_Context:Landroid/content/Context;

    .line 222
    iput-object p6, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConverionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;

    .line 223
    iput-object p5, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_InnerExifTags:Ljava/util/Map;

    .line 224
    iput-object p4, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_RotatedAngles:[F

    .line 218
    return-void
.end method

.method private prepareConvertedImage()V
    .locals 18

    .prologue
    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepareConvertedImage() - start"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const/4 v7, 0x0

    .line 313
    .local v7, "memoryStream":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->-getcom-oneplus-camera-panorama-PanoramaController$ImageConvertionData$ImageConvertTypeSwitchesValues()[I

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConverionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;

    invoke-virtual {v3}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;->getConvertType()Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData$ImageConvertType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData$ImageConvertType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 382
    .end local v7    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    new-instance v2, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_RotatedAngles:[F

    const/4 v6, 0x1

    aget v3, v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    new-instance v6, Landroid/util/Size;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConverionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;

    invoke-virtual {v15}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;->getResultSize()[I

    move-result-object v15

    const/16 v16, 0x1

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConverionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;->getResultSize()[I

    move-result-object v16

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-direct {v6, v15, v0}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v2, v3, v6}, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;-><init>(FLandroid/util/Size;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_XMPTagger:Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;

    .line 384
    if-eqz v7, :cond_0

    .line 385
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->setEncodedPicture([B)V

    .line 387
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepareConvertedImage() - end"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-void

    .line 317
    .restart local v7    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :pswitch_0
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .end local v7    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 321
    .local v7, "memoryStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConverionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;

    invoke-virtual {v2}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;->getResultSize()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v2, v3

    .line 322
    .local v4, "rotatedWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConverionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;

    invoke-virtual {v2}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;->getResultSize()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v5, v2, v3

    .line 325
    .local v5, "rotatedHeight":I
    new-instance v1, Landroid/graphics/YuvImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConverionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;

    invoke-virtual {v2}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;->getYuvResult()[B

    move-result-object v2

    const/16 v3, 0x11

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 326
    .local v1, "yuvImage":Landroid/graphics/YuvImage;
    new-instance v2, Landroid/graphics/Rect;

    add-int/lit8 v3, v4, 0x0

    add-int/lit8 v6, v5, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v2, v15, v0, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v3, 0x5a

    invoke-virtual {v1, v2, v3, v7}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 330
    .end local v1    # "yuvImage":Landroid/graphics/YuvImage;
    .end local v4    # "rotatedWidth":I
    .end local v5    # "rotatedHeight":I
    :catch_0
    move-exception v12

    .line 331
    .local v12, "tr":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepareConvertedImage() - Fail to encode result bitmap"

    invoke-static {v2, v3, v12}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 337
    .end local v12    # "tr":Ljava/lang/Throwable;
    .local v7, "memoryStream":Ljava/io/ByteArrayOutputStream;
    :pswitch_1
    const/4 v11, 0x0

    .line 338
    .local v11, "rsHandle":Lcom/oneplus/base/Handle;
    const/4 v13, 0x0

    .line 339
    .local v13, "yuvAllocation":Landroid/renderscript/Allocation;
    const/4 v9, 0x0

    .line 340
    .local v9, "rgbaAllocation":Landroid/renderscript/Allocation;
    const/4 v14, 0x0

    .line 341
    .local v14, "yuvConvertScript":Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .end local v7    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 346
    .local v7, "memoryStream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_Context:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/renderscript/RenderScriptManager;->createRenderScript(Landroid/content/Context;)Lcom/oneplus/base/Handle;

    move-result-object v11

    .line 347
    .local v11, "rsHandle":Lcom/oneplus/base/Handle;
    invoke-static {v11}, Lcom/oneplus/renderscript/RenderScriptManager;->getRenderScript(Lcom/oneplus/base/Handle;)Landroid/renderscript/RenderScript;

    move-result-object v10

    .line 348
    .local v10, "rs":Landroid/renderscript/RenderScript;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConverionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;

    invoke-virtual {v2}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;->getResultSize()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConverionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;

    invoke-virtual {v3}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;->getResultSize()[I

    move-result-object v3

    const/4 v6, 0x1

    aget v3, v3, v6

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 349
    .local v8, "resultBitmap":Landroid/graphics/Bitmap;
    invoke-static {v10}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConverionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;

    invoke-virtual {v3}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;->getResultSize()[I

    move-result-object v3

    const/4 v6, 0x0

    aget v3, v3, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConverionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;

    invoke-virtual {v6}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;->getResultSize()[I

    move-result-object v6

    const/4 v15, 0x1

    aget v6, v6, v15

    mul-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v10, v2, v3}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v13

    .line 350
    .local v13, "yuvAllocation":Landroid/renderscript/Allocation;
    invoke-static {v10, v8}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v9

    .line 351
    .local v9, "rgbaAllocation":Landroid/renderscript/Allocation;
    invoke-static {v10}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v14

    .line 354
    .local v14, "yuvConvertScript":Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepareConvertedImage() - Convert YUV to bitmap"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConverionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;

    invoke-virtual {v2}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;->getYuvResult()[B

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 356
    invoke-virtual {v14, v13}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    .line 357
    invoke-virtual {v14, v9}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V

    .line 358
    invoke-virtual {v9, v8}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 361
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v8, v2, v3, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    if-eqz v14, :cond_1

    .line 371
    invoke-virtual {v14}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->destroy()V

    .line 372
    :cond_1
    if-eqz v9, :cond_2

    .line 373
    invoke-virtual {v9}, Landroid/renderscript/Allocation;->destroy()V

    .line 374
    :cond_2
    if-eqz v13, :cond_3

    .line 375
    invoke-virtual {v13}, Landroid/renderscript/Allocation;->destroy()V

    .line 376
    :cond_3
    invoke-static {v11}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 365
    .end local v8    # "resultBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "rgbaAllocation":Landroid/renderscript/Allocation;
    .end local v10    # "rs":Landroid/renderscript/RenderScript;
    .end local v11    # "rsHandle":Lcom/oneplus/base/Handle;
    .end local v13    # "yuvAllocation":Landroid/renderscript/Allocation;
    .end local v14    # "yuvConvertScript":Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    :catch_1
    move-exception v12

    .line 366
    .restart local v12    # "tr":Ljava/lang/Throwable;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepareConvertedImage() - Fail to convert result bitmap"

    invoke-static {v2, v3, v12}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    if-eqz v14, :cond_4

    .line 371
    invoke-virtual {v14}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->destroy()V

    .line 372
    :cond_4
    if-eqz v9, :cond_5

    .line 373
    invoke-virtual {v9}, Landroid/renderscript/Allocation;->destroy()V

    .line 374
    :cond_5
    if-eqz v13, :cond_6

    .line 375
    invoke-virtual {v13}, Landroid/renderscript/Allocation;->destroy()V

    .line 376
    :cond_6
    invoke-static {v11}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 369
    .end local v12    # "tr":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    .line 370
    if-eqz v14, :cond_7

    .line 371
    invoke-virtual {v14}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->destroy()V

    .line 372
    :cond_7
    if-eqz v9, :cond_8

    .line 373
    invoke-virtual {v9}, Landroid/renderscript/Allocation;->destroy()V

    .line 374
    :cond_8
    if-eqz v13, :cond_9

    .line 375
    invoke-virtual {v13}, Landroid/renderscript/Allocation;->destroy()V

    .line 376
    :cond_9
    invoke-static {v11}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 369
    throw v2

    .line 313
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getMediaSize()J
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConverionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;

    invoke-virtual {v0}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;->getYuvResult()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected onImageEncoded(Lcom/oneplus/media/EncodedImage;)V
    .locals 3
    .param p1, "image"    # Lcom/oneplus/media/EncodedImage;

    .prologue
    .line 238
    if-nez p1, :cond_0

    .line 239
    return-void

    .line 242
    :cond_0
    instance-of v1, p1, Lcom/oneplus/media/JfifImage;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 244
    check-cast v0, Lcom/oneplus/media/JfifImage;

    .line 245
    .local v0, "jfifImage":Lcom/oneplus/media/JfifImage;
    sget-object v1, Lcom/oneplus/media/OnePlusXMP;->KEY_CAPTURE_MODE:Lcom/oneplus/media/XMPPropertyKey;

    const-string/jumbo v2, "Panorama"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/media/JfifImage;->setXMPProperty(Lcom/oneplus/media/XMPPropertyKey;Ljava/lang/Object;)V

    .line 246
    sget-object v1, Lcom/oneplus/media/OnePlusXMP;->KEY_SCENE:Lcom/oneplus/media/XMPPropertyKey;

    const-string/jumbo v2, "Auto"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/media/JfifImage;->setXMPProperty(Lcom/oneplus/media/XMPPropertyKey;Ljava/lang/Object;)V

    .line 250
    .end local v0    # "jfifImage":Lcom/oneplus/media/JfifImage;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_XMPTagger:Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;

    if-eqz v1, :cond_2

    .line 251
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_XMPTagger:Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;

    invoke-virtual {v1, p1}, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->tag(Lcom/oneplus/media/EncodedImage;)V

    .line 235
    :cond_2
    return-void
.end method

.method protected onPrepareGalleryDatabaseValues(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 258
    const-wide/16 v2, 0x0

    .line 259
    .local v2, "parentFlags":J
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/camera/io/PhotoSaveTask;->onPrepareGalleryDatabaseValues(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    const-string/jumbo v1, "oneplus_flags"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 262
    .local v0, "flags":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 265
    .end local v0    # "flags":Ljava/lang/Long;
    :cond_0
    const-string/jumbo v1, "oneplus_flags"

    const-wide/16 v4, 0x2

    or-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 266
    const/4 v1, 0x1

    return v1
.end method

.method protected onPrepareMediaStoreValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 272
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConverionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;

    invoke-virtual {v2}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;->getResultSize()[I

    move-result-object v2

    if-eqz v2, :cond_0

    .line 274
    const-string/jumbo v2, "width"

    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConverionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;

    invoke-virtual {v3}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;->getResultSize()[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    const-string/jumbo v2, "height"

    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConverionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;

    invoke-virtual {v3}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConvertionData;->getResultSize()[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_InnerExifTags:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 281
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_InnerExifTags:Ljava/util/Map;

    const-string/jumbo v3, "Orientation"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    .local v0, "exifOrientation":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 284
    const/4 v1, 0x0

    .line 285
    .local v1, "orientaion":I
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 286
    const/16 v1, 0x5a

    .line 292
    :cond_1
    :goto_0
    const-string/jumbo v2, "orientation"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    .end local v0    # "exifOrientation":Ljava/lang/String;
    .end local v1    # "orientaion":I
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/io/PhotoSaveTask;->onPrepareMediaStoreValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    return v2

    .line 287
    .restart local v0    # "exifOrientation":Ljava/lang/String;
    .restart local v1    # "orientaion":I
    :cond_3
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 288
    const/16 v1, 0xb4

    goto :goto_0

    .line 289
    :cond_4
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    const/16 v1, 0x10e

    goto :goto_0
.end method

.method protected onSaveToFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->getEncodedPicture()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->prepareConvertedImage()V

    .line 304
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/io/PhotoSaveTask;->onSaveToFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
