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
.field private static final synthetic -com-oneplus-camera-panorama-PanoramaController$ImageConversionData$ImageConvertTypeSwitchesValues:[I


# instance fields
.field private m_Context:Landroid/content/Context;

.field private m_ConversionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;

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
.method private static synthetic -getcom-oneplus-camera-panorama-PanoramaController$ImageConversionData$ImageConvertTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->-com-oneplus-camera-panorama-PanoramaController$ImageConversionData$ImageConvertTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->-com-oneplus-camera-panorama-PanoramaController$ImageConversionData$ImageConvertTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;->values()[Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;->YUV_TO_BMP_TO_JPEG:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;

    invoke-virtual {v1}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;->YUV_TO_JPEG:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;

    invoke-virtual {v1}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->-com-oneplus-camera-panorama-PanoramaController$ImageConversionData$ImageConvertTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;[B[FLjava/util/Map;Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "encodedPicture"    # [B
    .param p4, "rotateAngles"    # [F
    .param p6, "conversionData"    # Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;
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
            "Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;",
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

    .line 224
    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/io/PhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;[BLjava/util/Map;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    .line 218
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_RotatedAngles:[F

    .line 225
    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_Context:Landroid/content/Context;

    .line 226
    iput-object p6, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConversionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;

    .line 227
    iput-object p5, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_InnerExifTags:Ljava/util/Map;

    .line 228
    iput-object p4, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_RotatedAngles:[F

    .line 222
    return-void
.end method

.method private prepareConvertedImage()V
    .locals 31

    .prologue
    .line 313
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "prepareConvertedImage() - start"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const/4 v14, 0x0

    .line 317
    .local v14, "memoryStream":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->-getcom-oneplus-camera-panorama-PanoramaController$ImageConversionData$ImageConvertTypeSwitchesValues()[I

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConversionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;

    invoke-virtual {v7}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->getConvertType()Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData$ImageConvertType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 423
    .end local v14    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    new-instance v6, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_RotatedAngles:[F

    const/4 v10, 0x1

    aget v7, v7, v10

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    new-instance v10, Landroid/util/Size;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConversionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->getResultSize()[I

    move-result-object v28

    const/16 v29, 0x1

    aget v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConversionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->getResultSize()[I

    move-result-object v29

    const/16 v30, 0x0

    aget v29, v29, v30

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v10, v0, v1}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v6, v7, v10}, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;-><init>(FLandroid/util/Size;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_XMPTagger:Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;

    .line 425
    if-eqz v14, :cond_0

    .line 426
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->setEncodedPicture([B)V

    .line 428
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "prepareConvertedImage() - end"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void

    .line 321
    .restart local v14    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :pswitch_0
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    .end local v14    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 325
    .local v14, "memoryStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConversionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;

    invoke-virtual {v6}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->getResultSize()[I

    move-result-object v6

    const/4 v7, 0x0

    aget v8, v6, v7

    .line 326
    .local v8, "rotatedWidth":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConversionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;

    invoke-virtual {v6}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->getResultSize()[I

    move-result-object v6

    const/4 v7, 0x1

    aget v9, v6, v7

    .line 327
    .local v9, "rotatedHeight":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_RotatedAngles:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v17

    .line 333
    .local v17, "rotationAngle":F
    const/4 v13, 0x0

    .line 336
    .local v13, "exceedHeight":I
    const/16 v22, 0x0

    .line 337
    .local v22, "srcRectLeft":I
    const/4 v6, 0x0

    add-int/lit8 v24, v6, 0x0

    .line 338
    .local v24, "srcRectTop":I
    add-int/lit8 v23, v8, 0x0

    .line 339
    .local v23, "srcRectRight":I
    add-int/lit8 v21, v9, 0x0

    .line 340
    .local v21, "srcRectBottom":I
    add-int/lit8 v6, v21, 0x0

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    .line 341
    add-int/lit8 v24, v24, 0x1

    .line 342
    :cond_1
    add-int/lit8 v6, v23, 0x0

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    .line 343
    add-int/lit8 v23, v23, -0x1

    .line 344
    :cond_2
    new-instance v20, Landroid/graphics/Rect;

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v23

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 347
    .local v20, "srcRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConversionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;

    invoke-static {v6}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->-get0(Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;)[I

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v7

    const/4 v10, 0x0

    aput v7, v6, v10

    .line 348
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConversionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;

    invoke-static {v6}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->-get0(Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;)[I

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v10, 0x1

    aput v7, v6, v10

    .line 351
    new-instance v5, Landroid/graphics/YuvImage;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConversionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;

    invoke-virtual {v6}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->getYuvResult()[B

    move-result-object v6

    const/16 v7, 0x11

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 352
    .local v5, "yuvImage":Landroid/graphics/YuvImage;
    const/16 v6, 0x5a

    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v6, v14}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 355
    .end local v5    # "yuvImage":Landroid/graphics/YuvImage;
    .end local v8    # "rotatedWidth":I
    .end local v9    # "rotatedHeight":I
    .end local v13    # "exceedHeight":I
    .end local v17    # "rotationAngle":F
    .end local v20    # "srcRect":Landroid/graphics/Rect;
    .end local v21    # "srcRectBottom":I
    .end local v22    # "srcRectLeft":I
    .end local v23    # "srcRectRight":I
    .end local v24    # "srcRectTop":I
    :catch_0
    move-exception v25

    .line 356
    .local v25, "tr":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "prepareConvertedImage() - Fail to encode result bitmap"

    move-object/from16 v0, v25

    invoke-static {v6, v7, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 361
    .end local v25    # "tr":Ljava/lang/Throwable;
    .local v14, "memoryStream":Ljava/io/ByteArrayOutputStream;
    :pswitch_1
    const/16 v19, 0x0

    .line 362
    .local v19, "rsHandle":Lcom/oneplus/base/Handle;
    const/16 v26, 0x0

    .line 363
    .local v26, "yuvAllocation":Landroid/renderscript/Allocation;
    const/16 v16, 0x0

    .line 364
    .local v16, "rgbaAllocation":Landroid/renderscript/Allocation;
    const/16 v27, 0x0

    .line 365
    .local v27, "yuvConvertScript":Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    .end local v14    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 370
    .local v14, "memoryStream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_Context:Landroid/content/Context;

    invoke-static {v6}, Lcom/oneplus/renderscript/RenderScriptManager;->createRenderScript(Landroid/content/Context;)Lcom/oneplus/base/Handle;

    move-result-object v19

    .line 371
    .local v19, "rsHandle":Lcom/oneplus/base/Handle;
    invoke-static/range {v19 .. v19}, Lcom/oneplus/renderscript/RenderScriptManager;->getRenderScript(Lcom/oneplus/base/Handle;)Landroid/renderscript/RenderScript;

    move-result-object v18

    .line 372
    .local v18, "rs":Landroid/renderscript/RenderScript;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConversionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;

    invoke-virtual {v6}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->getResultSize()[I

    move-result-object v6

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConversionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;

    invoke-virtual {v7}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->getResultSize()[I

    move-result-object v7

    const/4 v10, 0x1

    aget v7, v7, v10

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 373
    .local v15, "resultBitmap":Landroid/graphics/Bitmap;
    invoke-static/range {v18 .. v18}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConversionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;

    invoke-virtual {v7}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->getResultSize()[I

    move-result-object v7

    const/4 v10, 0x0

    aget v7, v7, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConversionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;

    invoke-virtual {v10}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->getResultSize()[I

    move-result-object v10

    const/16 v28, 0x1

    aget v10, v10, v28

    mul-int/2addr v7, v10

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x2

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v26

    .line 374
    .local v26, "yuvAllocation":Landroid/renderscript/Allocation;
    move-object/from16 v0, v18

    invoke-static {v0, v15}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v16

    .line 375
    .local v16, "rgbaAllocation":Landroid/renderscript/Allocation;
    invoke-static/range {v18 .. v18}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v27

    .line 378
    .local v27, "yuvConvertScript":Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "prepareConvertedImage() - Convert YUV to bitmap"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConversionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;

    invoke-virtual {v6}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->getYuvResult()[B

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 380
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    .line 381
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V

    .line 382
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 385
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 386
    .restart local v20    # "srcRect":Landroid/graphics/Rect;
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_3

    .line 387
    const/4 v6, 0x1

    move-object/from16 v0, v20

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 388
    :cond_3
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    .line 389
    const/4 v6, -0x1

    move-object/from16 v0, v20

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 390
    :cond_4
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 391
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v7

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 392
    .local v12, "evenAdjustedBitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 393
    .local v11, "canvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v6, v0, v1, v7, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v11, v15, v0, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 394
    move-object v15, v12

    .line 397
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConversionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;

    invoke-static {v6}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->-get0(Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;)[I

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v7

    const/4 v10, 0x0

    aput v7, v6, v10

    .line 398
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConversionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;

    invoke-static {v6}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->-get0(Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;)[I

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v10, 0x1

    aput v7, v6, v10

    .line 402
    .end local v11    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "evenAdjustedBitmap":Landroid/graphics/Bitmap;
    :cond_5
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x5a

    invoke-virtual {v15, v6, v7, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    if-eqz v27, :cond_6

    .line 411
    invoke-virtual/range {v27 .. v27}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->destroy()V

    .line 412
    :cond_6
    if-eqz v16, :cond_7

    .line 413
    invoke-virtual/range {v16 .. v16}, Landroid/renderscript/Allocation;->destroy()V

    .line 414
    :cond_7
    if-eqz v26, :cond_8

    .line 415
    invoke-virtual/range {v26 .. v26}, Landroid/renderscript/Allocation;->destroy()V

    .line 416
    :cond_8
    invoke-static/range {v19 .. v19}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 405
    .end local v15    # "resultBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "rgbaAllocation":Landroid/renderscript/Allocation;
    .end local v18    # "rs":Landroid/renderscript/RenderScript;
    .end local v19    # "rsHandle":Lcom/oneplus/base/Handle;
    .end local v20    # "srcRect":Landroid/graphics/Rect;
    .end local v26    # "yuvAllocation":Landroid/renderscript/Allocation;
    .end local v27    # "yuvConvertScript":Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    :catch_1
    move-exception v25

    .line 406
    .restart local v25    # "tr":Ljava/lang/Throwable;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "prepareConvertedImage() - Fail to convert result bitmap"

    move-object/from16 v0, v25

    invoke-static {v6, v7, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 410
    if-eqz v27, :cond_9

    .line 411
    invoke-virtual/range {v27 .. v27}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->destroy()V

    .line 412
    :cond_9
    if-eqz v16, :cond_a

    .line 413
    invoke-virtual/range {v16 .. v16}, Landroid/renderscript/Allocation;->destroy()V

    .line 414
    :cond_a
    if-eqz v26, :cond_b

    .line 415
    invoke-virtual/range {v26 .. v26}, Landroid/renderscript/Allocation;->destroy()V

    .line 416
    :cond_b
    invoke-static/range {v19 .. v19}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 409
    .end local v25    # "tr":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    .line 410
    if-eqz v27, :cond_c

    .line 411
    invoke-virtual/range {v27 .. v27}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->destroy()V

    .line 412
    :cond_c
    if-eqz v16, :cond_d

    .line 413
    invoke-virtual/range {v16 .. v16}, Landroid/renderscript/Allocation;->destroy()V

    .line 414
    :cond_d
    if-eqz v26, :cond_e

    .line 415
    invoke-virtual/range {v26 .. v26}, Landroid/renderscript/Allocation;->destroy()V

    .line 416
    :cond_e
    invoke-static/range {v19 .. v19}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 409
    throw v6

    .line 317
    nop

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
    .line 234
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConversionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;

    invoke-virtual {v0}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->getYuvResult()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected onImageEncoded(Lcom/oneplus/media/EncodedImage;)V
    .locals 3
    .param p1, "image"    # Lcom/oneplus/media/EncodedImage;

    .prologue
    .line 242
    if-nez p1, :cond_0

    .line 243
    return-void

    .line 246
    :cond_0
    instance-of v1, p1, Lcom/oneplus/media/JfifImage;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 248
    check-cast v0, Lcom/oneplus/media/JfifImage;

    .line 249
    .local v0, "jfifImage":Lcom/oneplus/media/JfifImage;
    sget-object v1, Lcom/oneplus/media/OnePlusXMP;->KEY_CAPTURE_MODE:Lcom/oneplus/media/XMPPropertyKey;

    const-string/jumbo v2, "Panorama"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/media/JfifImage;->setXMPProperty(Lcom/oneplus/media/XMPPropertyKey;Ljava/lang/Object;)V

    .line 250
    sget-object v1, Lcom/oneplus/media/OnePlusXMP;->KEY_SCENE:Lcom/oneplus/media/XMPPropertyKey;

    const-string/jumbo v2, "Auto"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/media/JfifImage;->setXMPProperty(Lcom/oneplus/media/XMPPropertyKey;Ljava/lang/Object;)V

    .line 254
    .end local v0    # "jfifImage":Lcom/oneplus/media/JfifImage;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_XMPTagger:Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;

    if-eqz v1, :cond_2

    .line 255
    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_XMPTagger:Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;

    invoke-virtual {v1, p1}, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->tag(Lcom/oneplus/media/EncodedImage;)V

    .line 239
    :cond_2
    return-void
.end method

.method protected onPrepareGalleryDatabaseValues(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 262
    const-wide/16 v2, 0x0

    .line 263
    .local v2, "parentFlags":J
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/camera/io/PhotoSaveTask;->onPrepareGalleryDatabaseValues(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const-string/jumbo v1, "oneplus_flags"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 266
    .local v0, "flags":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 269
    .end local v0    # "flags":Ljava/lang/Long;
    :cond_0
    const-string/jumbo v1, "oneplus_flags"

    const-wide/16 v4, 0x2

    or-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 270
    const/4 v1, 0x1

    return v1
.end method

.method protected onPrepareMediaStoreValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 276
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConversionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;

    invoke-virtual {v2}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->getResultSize()[I

    move-result-object v2

    if-eqz v2, :cond_0

    .line 278
    const-string/jumbo v2, "width"

    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConversionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;

    invoke-virtual {v3}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->getResultSize()[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    const-string/jumbo v2, "height"

    iget-object v3, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_ConversionData:Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;

    invoke-virtual {v3}, Lcom/oneplus/camera/panorama/PanoramaController$ImageConversionData;->getResultSize()[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_InnerExifTags:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 285
    iget-object v2, p0, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->m_InnerExifTags:Ljava/util/Map;

    const-string/jumbo v3, "Orientation"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 286
    .local v0, "exifOrientation":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 288
    const/4 v1, 0x0

    .line 289
    .local v1, "orientaion":I
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 290
    const/16 v1, 0x5a

    .line 296
    :cond_1
    :goto_0
    const-string/jumbo v2, "orientation"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    .end local v0    # "exifOrientation":Ljava/lang/String;
    .end local v1    # "orientaion":I
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/io/PhotoSaveTask;->onPrepareMediaStoreValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    return v2

    .line 291
    .restart local v0    # "exifOrientation":Ljava/lang/String;
    .restart local v1    # "orientaion":I
    :cond_3
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 292
    const/16 v1, 0xb4

    goto :goto_0

    .line 293
    :cond_4
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    const/16 v1, 0x10e

    goto :goto_0
.end method

.method protected onSaveToFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->getEncodedPicture()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/oneplus/camera/panorama/PanoramaController$PanoramaPhotoSaveTask;->prepareConvertedImage()V

    .line 308
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/io/PhotoSaveTask;->onSaveToFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
