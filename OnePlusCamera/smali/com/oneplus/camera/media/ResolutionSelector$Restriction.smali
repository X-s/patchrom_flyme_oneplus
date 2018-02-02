.class public final Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
.super Ljava/lang/Object;
.source "ResolutionSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/media/ResolutionSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Restriction"
.end annotation


# instance fields
.field public final maxFps:I

.field public final maxMegaPixels:F

.field public final maxSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(F)V
    .locals 2
    .param p1, "maxMegaPixels"    # F

    .prologue
    .line 50
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;-><init>(Landroid/util/Size;FI)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/util/Size;)V
    .locals 2
    .param p1, "maxSize"    # Landroid/util/Size;

    .prologue
    .line 40
    const/high16 v0, 0x7fc00000    # NaNf

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;-><init>(Landroid/util/Size;FI)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/util/Size;FI)V
    .locals 0
    .param p1, "maxSize"    # Landroid/util/Size;
    .param p2, "maxMegaPixels"    # F
    .param p3, "maxFps"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    .line 63
    iput p2, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxMegaPixels:F

    .line 64
    iput p3, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxFps:I

    .line 60
    return-void
.end method

.method public static hasRestriction(Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Z
    .locals 3
    .param p0, "restriction"    # Lcom/oneplus/camera/media/ResolutionSelector$Restriction;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    if-nez p0, :cond_0

    .line 76
    return v1

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    if-nez v2, :cond_1

    .line 78
    iget v2, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxMegaPixels:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 77
    :cond_1
    return v0
.end method

.method public static match(Lcom/oneplus/camera/media/ResolutionSelector$Restriction;Landroid/util/Size;)Z
    .locals 5
    .param p0, "restriction"    # Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x44800000    # 1024.0f

    const/4 v2, 0x0

    .line 115
    if-nez p1, :cond_0

    .line 116
    return v2

    .line 117
    :cond_0
    if-nez p0, :cond_1

    .line 118
    return v4

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    if-eqz v0, :cond_3

    .line 120
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 122
    :cond_2
    return v2

    .line 124
    :cond_3
    iget v0, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxMegaPixels:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    div-float/2addr v0, v3

    iget v1, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxMegaPixels:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 125
    return v2

    .line 126
    :cond_4
    return v4
.end method

.method public static match(Lcom/oneplus/camera/media/ResolutionSelector$Restriction;Lcom/oneplus/camera/media/Resolution;)Z
    .locals 4
    .param p0, "restriction"    # Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    .param p1, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    if-nez p1, :cond_0

    .line 91
    return v2

    .line 92
    :cond_0
    if-nez p0, :cond_1

    .line 93
    return v3

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    if-eqz v0, :cond_3

    .line 95
    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 97
    :cond_2
    return v2

    .line 99
    :cond_3
    iget v0, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxMegaPixels:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->getMegaPixels()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxMegaPixels:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 100
    return v2

    .line 101
    :cond_4
    iget v0, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxFps:I

    if-ltz v0, :cond_5

    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->getFps()I

    move-result v0

    iget v1, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxFps:I

    if-le v0, v1, :cond_5

    .line 102
    return v2

    .line 103
    :cond_5
    return v3
.end method
