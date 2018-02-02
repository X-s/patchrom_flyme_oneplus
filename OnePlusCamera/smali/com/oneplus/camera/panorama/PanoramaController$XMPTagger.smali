.class Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;
.super Ljava/lang/Object;
.source "PanoramaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/panorama/PanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XMPTagger"
.end annotation


# instance fields
.field private m_CroppedHeight:I

.field private m_CroppedLeft:I

.field private m_CroppedTop:I

.field private m_CroppedWidth:I

.field private m_FullHeight:I

.field private m_FullWidth:I


# direct methods
.method public constructor <init>(FLandroid/util/Size;)V
    .locals 10
    .param p1, "horizontalFOV"    # F
    .param p2, "imageSize"    # Landroid/util/Size;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    if-nez p2, :cond_1

    .line 408
    :cond_0
    return-void

    .line 409
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/panorama/PanoramaController;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "XMPTagger() - HFOV: "

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string/jumbo v3, ", image size: "

    invoke-static {v0, v1, v2, v3, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 410
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    mul-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_FullWidth:I

    .line 411
    iget v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_FullWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_FullHeight:I

    .line 412
    iget v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_FullWidth:I

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_CroppedLeft:I

    .line 413
    iget v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_FullHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-double v0, v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v6

    iget v4, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_FullWidth:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    sub-double v2, v8, v2

    mul-double/2addr v0, v2

    div-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_CroppedTop:I

    .line 414
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_CroppedWidth:I

    .line 415
    iget v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_FullHeight:I

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v6

    iget v4, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_FullWidth:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_CroppedHeight:I

    .line 405
    return-void
.end method


# virtual methods
.method public tag(Lcom/oneplus/media/EncodedImage;)V
    .locals 7
    .param p1, "image"    # Lcom/oneplus/media/EncodedImage;

    .prologue
    const/16 v6, 0xa

    .line 422
    iget v1, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_CroppedWidth:I

    if-ge v1, v6, :cond_0

    .line 423
    return-void

    .line 424
    :cond_0
    instance-of v1, p1, Lcom/oneplus/media/JfifImage;

    if-nez v1, :cond_1

    .line 426
    invoke-static {}, Lcom/oneplus/camera/panorama/PanoramaController;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tag() - Only Jpeg format supported"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void

    .line 430
    :cond_1
    invoke-static {}, Lcom/oneplus/camera/panorama/PanoramaController;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tag() - Tag XMP,  full width: "

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_FullWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, ", full height: "

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget v4, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_FullHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string/jumbo v4, ", cropped width: "

    const/4 v5, 0x3

    aput-object v4, v3, v5

    iget v4, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_CroppedWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const-string/jumbo v4, ", cropped height: "

    const/4 v5, 0x5

    aput-object v4, v3, v5

    iget v4, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_CroppedHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, ", cropped left: "

    const/4 v5, 0x7

    aput-object v4, v3, v5

    iget v4, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_CroppedLeft:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, ", cropped top: "

    const/16 v5, 0x9

    aput-object v4, v3, v5

    iget v4, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_CroppedTop:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p1

    .line 433
    check-cast v0, Lcom/oneplus/media/JfifImage;

    .line 434
    .local v0, "jfifImage":Lcom/oneplus/media/JfifImage;
    sget-object v1, Lcom/oneplus/media/GPanoXMP;->KEY_USE_PANORAMA_VIEWER:Lcom/oneplus/media/XMPPropertyKey;

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/media/JfifImage;->setXMPProperty(Lcom/oneplus/media/XMPPropertyKey;Ljava/lang/Object;)V

    .line 435
    sget-object v1, Lcom/oneplus/media/GPanoXMP;->KEY_PROJECTION_TYPE:Lcom/oneplus/media/XMPPropertyKey;

    const-string/jumbo v2, "cylindrical"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/media/JfifImage;->setXMPProperty(Lcom/oneplus/media/XMPPropertyKey;Ljava/lang/Object;)V

    .line 436
    sget-object v1, Lcom/oneplus/media/GPanoXMP;->KEY_FULL_PANO_WIDTH_PIXELS:Lcom/oneplus/media/XMPPropertyKey;

    iget v2, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_FullWidth:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/media/JfifImage;->setXMPProperty(Lcom/oneplus/media/XMPPropertyKey;Ljava/lang/Object;)V

    .line 437
    sget-object v1, Lcom/oneplus/media/GPanoXMP;->KEY_FULL_PANO_HEIGHT_PIXELS:Lcom/oneplus/media/XMPPropertyKey;

    iget v2, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_FullHeight:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/media/JfifImage;->setXMPProperty(Lcom/oneplus/media/XMPPropertyKey;Ljava/lang/Object;)V

    .line 438
    sget-object v1, Lcom/oneplus/media/GPanoXMP;->KEY_CROPPED_AREA_LEFT_PIXELS:Lcom/oneplus/media/XMPPropertyKey;

    iget v2, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_CroppedLeft:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/media/JfifImage;->setXMPProperty(Lcom/oneplus/media/XMPPropertyKey;Ljava/lang/Object;)V

    .line 439
    sget-object v1, Lcom/oneplus/media/GPanoXMP;->KEY_CROPPED_AREA_TOP_PIXELS:Lcom/oneplus/media/XMPPropertyKey;

    iget v2, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_CroppedTop:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/media/JfifImage;->setXMPProperty(Lcom/oneplus/media/XMPPropertyKey;Ljava/lang/Object;)V

    .line 440
    sget-object v1, Lcom/oneplus/media/GPanoXMP;->KEY_CROPPED_AREA_IMAGE_WIDTH_PIXELS:Lcom/oneplus/media/XMPPropertyKey;

    iget v2, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_CroppedWidth:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/media/JfifImage;->setXMPProperty(Lcom/oneplus/media/XMPPropertyKey;Ljava/lang/Object;)V

    .line 441
    sget-object v1, Lcom/oneplus/media/GPanoXMP;->KEY_CROPPED_AREA_IMAGE_HEIGHT_PIXELS:Lcom/oneplus/media/XMPPropertyKey;

    iget v2, p0, Lcom/oneplus/camera/panorama/PanoramaController$XMPTagger;->m_CroppedHeight:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/media/JfifImage;->setXMPProperty(Lcom/oneplus/media/XMPPropertyKey;Ljava/lang/Object;)V

    .line 419
    return-void
.end method
