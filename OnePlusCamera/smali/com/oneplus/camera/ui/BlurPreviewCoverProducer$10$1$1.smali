.class Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;
.super Ljava/lang/Object;
.source "BlurPreviewCoverProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;

.field final synthetic val$camera:Lcom/oneplus/camera/Camera;

.field final synthetic val$nv21:[B

.field final synthetic val$previewBounds:Landroid/graphics/RectF;

.field final synthetic val$previewSize:Landroid/util/Size;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;Landroid/util/Size;Landroid/graphics/RectF;[BLcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "this$2"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;
    .param p2, "val$previewSize"    # Landroid/util/Size;
    .param p3, "val$previewBounds"    # Landroid/graphics/RectF;
    .param p4, "val$nv21"    # [B
    .param p5, "val$camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;

    iput-object p2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->val$previewSize:Landroid/util/Size;

    iput-object p3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->val$previewBounds:Landroid/graphics/RectF;

    iput-object p4, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->val$nv21:[B

    iput-object p5, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->val$camera:Lcom/oneplus/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 318
    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    invoke-static {v1}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->-get2(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/renderscript/RenderScript;

    move-result-object v1

    if-nez v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/renderscript/RenderScriptManager;->createRenderScript(Landroid/content/Context;)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->-set1(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 321
    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    invoke-static {v2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->-get3(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/renderscript/RenderScriptManager;->getRenderScript(Lcom/oneplus/base/Handle;)Landroid/renderscript/RenderScript;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->-set0(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Landroid/renderscript/RenderScript;)Landroid/renderscript/RenderScript;

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    invoke-static {v1}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->-get4(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v1

    if-nez v1, :cond_1

    .line 324
    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    invoke-static {v2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->-get2(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/renderscript/RenderScript;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;

    iget-object v3, v3, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    iget-object v3, v3, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    invoke-static {v3}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->-get2(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/renderscript/RenderScript;

    move-result-object v3

    invoke-static {v3}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->-set2(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Landroid/renderscript/ScriptIntrinsicYuvToRGB;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->val$previewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 327
    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->val$previewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 328
    iget-object v3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->val$previewBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    .line 329
    iget-object v4, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->val$previewBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    const/4 v6, 0x1

    .line 326
    invoke-static {v1, v2, v3, v4, v6}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v11

    .line 331
    .local v11, "scaledSize":Landroid/util/Size;
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v13

    .line 332
    .local v13, "scaledSizeWidth":I
    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v12

    .line 333
    .local v12, "scaledSizeHeight":I
    rem-int/lit8 v1, v13, 0x2

    if-eqz v1, :cond_2

    .line 334
    add-int/lit8 v13, v13, 0x1

    .line 335
    :cond_2
    rem-int/lit8 v1, v12, 0x2

    if-eqz v1, :cond_3

    .line 336
    add-int/lit8 v12, v12, 0x1

    .line 337
    :cond_3
    new-instance v11, Landroid/util/Size;

    .end local v11    # "scaledSize":Landroid/util/Size;
    invoke-direct {v11, v13, v12}, Landroid/util/Size;-><init>(II)V

    .line 340
    .restart local v11    # "scaledSize":Landroid/util/Size;
    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->val$nv21:[B

    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->val$previewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->val$previewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {v1, v2, v3, v4, v6}, Lcom/oneplus/media/ImageUtils;->scaleNV21Image([BIIII)[B

    move-result-object v10

    .line 342
    .local v10, "scaledNv21":[B
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x5a

    invoke-static {v10, v1, v2, v3}, Lcom/oneplus/media/ImageUtils;->rotateNV21Image([BIII)[B

    move-result-object v9

    .line 344
    .local v9, "rotatedNv21":[B
    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 345
    .local v0, "previewBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    invoke-static {v1}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->-get2(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/renderscript/RenderScript;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    invoke-static {v2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->-get2(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/renderscript/RenderScript;

    move-result-object v2

    invoke-static {v2}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v14

    .line 346
    .local v14, "yuvInput":Landroid/renderscript/Allocation;
    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    invoke-static {v1}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->-get2(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/renderscript/RenderScript;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v8

    .line 347
    .local v8, "rgbaOutput":Landroid/renderscript/Allocation;
    invoke-virtual {v14, v9}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 348
    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    invoke-static {v1}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->-get4(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    .line 349
    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    invoke-static {v1}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->-get4(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V

    .line 350
    invoke-virtual {v8, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 351
    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    invoke-static {v1}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->-get0(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "preparePreviewCover() - YUV -> RGBA"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {v14}, Landroid/renderscript/Allocation;->destroy()V

    .line 353
    invoke-virtual {v8}, Landroid/renderscript/Allocation;->destroy()V

    .line 356
    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v1, v2, :cond_4

    .line 358
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 359
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 360
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 369
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    invoke-static {v1}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->-get0(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "preparePreviewCover() - Ready to process"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->val$previewBounds:Landroid/graphics/RectF;

    invoke-static {v1, v0, v2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->-wrap0(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)[Landroid/graphics/Bitmap;

    move-result-object v7

    .line 373
    .local v7, "result":[Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    invoke-static {v1}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->-get0(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "preparePreviewCover() - Processed"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;

    iget-object v1, v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v3, v7, v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aget-object v3, v7, v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$10$1$1;->val$previewBounds:Landroid/graphics/RectF;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/16 v3, 0x2711

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v3, v4, v6, v2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 315
    return-void
.end method
