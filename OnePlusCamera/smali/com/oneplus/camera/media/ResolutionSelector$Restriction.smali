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
.field public final maxMegaPixels:F

.field public final maxSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "maxMegaPixels"    # F

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;-><init>(Landroid/util/Size;F)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/util/Size;)V
    .locals 1
    .param p1, "maxSize"    # Landroid/util/Size;

    .prologue
    .line 36
    const/high16 v0, 0x7fc00000    # NaNf

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;-><init>(Landroid/util/Size;F)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/util/Size;F)V
    .locals 0
    .param p1, "maxSize"    # Landroid/util/Size;
    .param p2, "maxMegaPixels"    # F

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    .line 58
    iput p2, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxMegaPixels:F

    .line 59
    return-void
.end method

.method public static hasRestriction(Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Z
    .locals 2
    .param p0, "restriction"    # Lcom/oneplus/camera/media/ResolutionSelector$Restriction;

    .prologue
    const/4 v0, 0x0

    .line 69
    if-nez p0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    if-nez v1, :cond_2

    iget v1, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxMegaPixels:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static match(Lcom/oneplus/camera/media/ResolutionSelector$Restriction;Landroid/util/Size;)Z
    .locals 5
    .param p0, "restriction"    # Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    const/4 v1, 0x1

    const/high16 v4, 0x44800000    # 1024.0f

    const/4 v0, 0x0

    .line 107
    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    if-nez p0, :cond_2

    move v0, v1

    .line 110
    goto :goto_0

    .line 111
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-gt v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 116
    :cond_3
    iget v2, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxMegaPixels:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v4

    div-float/2addr v2, v4

    iget v3, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxMegaPixels:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    :cond_4
    move v0, v1

    .line 118
    goto :goto_0
.end method

.method public static match(Lcom/oneplus/camera/media/ResolutionSelector$Restriction;Lcom/oneplus/camera/media/Resolution;)Z
    .locals 4
    .param p0, "restriction"    # Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    .param p1, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 84
    if-nez p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    if-nez p0, :cond_2

    move v0, v1

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-gt v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 93
    :cond_3
    iget v2, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxMegaPixels:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->getMegaPixels()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxMegaPixels:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    :cond_4
    move v0, v1

    .line 95
    goto :goto_0
.end method
