.class Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;
.super Ljava/lang/Object;
.source "BlurPreviewCoverProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

.field final synthetic val$nv21:[B

.field final synthetic val$previewSize:Landroid/util/Size;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;[BLandroid/util/Size;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

    iput-object p2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->val$nv21:[B

    iput-object p3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->val$previewSize:Landroid/util/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 319
    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    # getter for: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;
    invoke-static {v2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$1100(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/renderscript/RenderScript;

    move-result-object v2

    if-nez v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    iget-object v3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

    iget-object v3, v3, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v3, v3, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    invoke-virtual {v3}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/renderscript/RenderScriptManager;->createRenderScript(Landroid/content/Context;)Lcom/oneplus/base/Handle;

    move-result-object v3

    # setter for: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;
    invoke-static {v2, v3}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$702(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 322
    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    iget-object v3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

    iget-object v3, v3, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v3, v3, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    # getter for: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;
    invoke-static {v3}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$700(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/renderscript/RenderScriptManager;->getRenderScript(Lcom/oneplus/base/Handle;)Landroid/renderscript/RenderScript;

    move-result-object v3

    # setter for: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;
    invoke-static {v2, v3}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$1102(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Landroid/renderscript/RenderScript;)Landroid/renderscript/RenderScript;

    .line 324
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    # getter for: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_YuvToRgbScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    invoke-static {v2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$1200(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v2

    if-nez v2, :cond_1

    .line 325
    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    iget-object v3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

    iget-object v3, v3, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v3, v3, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    # getter for: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;
    invoke-static {v3}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$1100(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/renderscript/RenderScript;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

    iget-object v4, v4, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v4, v4, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    # getter for: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;
    invoke-static {v4}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$1100(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/renderscript/RenderScript;

    move-result-object v4

    invoke-static {v4}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v3

    # setter for: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_YuvToRgbScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    invoke-static {v2, v3}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$1202(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Landroid/renderscript/ScriptIntrinsicYuvToRGB;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    .line 328
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->val$nv21:[B

    iget-object v3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->val$previewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->val$previewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/16 v6, 0x5a

    invoke-static {v2, v3, v4, v6}, Lcom/oneplus/media/ImageUtils;->rotateNV21Image([BIII)[B

    move-result-object v9

    .line 331
    .local v9, "rotatedNv21":[B
    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->val$previewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->val$previewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 332
    .local v0, "previewBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    # getter for: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;
    invoke-static {v2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$1100(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/renderscript/RenderScript;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

    iget-object v3, v3, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v3, v3, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    # getter for: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;
    invoke-static {v3}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$1100(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/renderscript/RenderScript;

    move-result-object v3

    invoke-static {v3}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->val$previewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget-object v6, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->val$previewSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    mul-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v10

    .line 333
    .local v10, "yuvInput":Landroid/renderscript/Allocation;
    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    # getter for: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScript:Landroid/renderscript/RenderScript;
    invoke-static {v2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$1100(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/renderscript/RenderScript;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v8

    .line 334
    .local v8, "rgbaOutput":Landroid/renderscript/Allocation;
    invoke-virtual {v10, v9}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 335
    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    # getter for: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_YuvToRgbScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    invoke-static {v2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$1200(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    .line 336
    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    # getter for: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_YuvToRgbScript:Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    invoke-static {v2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$1200(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V

    .line 337
    invoke-virtual {v8, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 339
    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    # getter for: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$1300(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "preparePreviewCover() - YUV -> RGBA"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v10}, Landroid/renderscript/Allocation;->destroy()V

    .line 342
    invoke-virtual {v8}, Landroid/renderscript/Allocation;->destroy()V

    .line 345
    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v2, v3, :cond_2

    .line 347
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 348
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 349
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 358
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    # getter for: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$1400(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "preparePreviewCover() - Ready to process"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    iget-object v3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

    iget-object v3, v3, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v3, v3, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->val$previewBounds:Landroid/graphics/RectF;

    # invokes: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->processImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)[Landroid/graphics/Bitmap;
    invoke-static {v2, v0, v3}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$800(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)[Landroid/graphics/Bitmap;

    move-result-object v7

    .line 362
    .local v7, "result":[Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    # getter for: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$1500(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "preparePreviewCover() - Processed"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v2, v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    const/16 v3, 0x2711

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v6, v7, v1

    aput-object v6, v4, v1

    aget-object v6, v7, v11

    aput-object v6, v4, v11

    const/4 v6, 0x2

    iget-object v11, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1$1;->this$2:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

    iget-object v11, v11, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;->this$1:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;

    iget-object v11, v11, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->val$previewBounds:Landroid/graphics/RectF;

    aput-object v11, v4, v6

    invoke-static {v2, v3, v1, v1, v4}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 364
    return-void
.end method
