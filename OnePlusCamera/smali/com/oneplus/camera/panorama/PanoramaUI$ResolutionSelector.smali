.class final Lcom/oneplus/camera/panorama/PanoramaUI$ResolutionSelector;
.super Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;
.source "PanoramaUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/panorama/PanoramaUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResolutionSelector"
.end annotation


# static fields
.field private static final PHOTO_RATIOS:[Lcom/oneplus/util/AspectRatio;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 153
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/oneplus/util/AspectRatio;

    const/4 v1, 0x0

    sget-object v2, Lcom/oneplus/util/AspectRatio;->RATIO_16x9:Lcom/oneplus/util/AspectRatio;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/camera/panorama/PanoramaUI$ResolutionSelector;->PHOTO_RATIOS:[Lcom/oneplus/util/AspectRatio;

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 158
    return-void
.end method


# virtual methods
.method public selectPreviewSize(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;)Landroid/util/Size;
    .locals 4
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "settings"    # Lcom/oneplus/camera/Settings;
    .param p3, "previewContainerSize"    # Landroid/util/Size;
    .param p4, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    const/16 v3, 0x780

    .line 163
    if-eqz p3, :cond_0

    .line 164
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .end local p3    # "previewContainerSize":Landroid/util/Size;
    .local v0, "previewContainerSize":Landroid/util/Size;
    move-object p3, v0

    .line 167
    .end local v0    # "previewContainerSize":Landroid/util/Size;
    .restart local p3    # "previewContainerSize":Landroid/util/Size;
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;->selectPreviewSize(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;)Landroid/util/Size;

    move-result-object v1

    return-object v1

    .line 166
    :cond_0
    new-instance p3, Landroid/util/Size;

    .end local p3    # "previewContainerSize":Landroid/util/Size;
    invoke-direct {p3, v3, v3}, Landroid/util/Size;-><init>(II)V

    .restart local p3    # "previewContainerSize":Landroid/util/Size;
    goto :goto_0
.end method

.method public selectResolutions(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Ljava/util/List;
    .locals 7
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "settings"    # Lcom/oneplus/camera/Settings;
    .param p3, "restriction"    # Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/camera/Camera;",
            "Lcom/oneplus/camera/Settings;",
            "Lcom/oneplus/camera/media/ResolutionSelector$Restriction;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x780

    .line 172
    if-nez p3, :cond_1

    .line 173
    new-instance p3, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;

    .end local p3    # "restriction":Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v3, v3}, Landroid/util/Size;-><init>(II)V

    invoke-direct {p3, v0}, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;-><init>(Landroid/util/Size;)V

    .line 176
    .restart local p3    # "restriction":Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    :cond_0
    :goto_0
    sget-object v3, Lcom/oneplus/camera/panorama/PanoramaUI$ResolutionSelector;->PHOTO_RATIOS:[Lcom/oneplus/util/AspectRatio;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-super/range {v0 .. v5}, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;->selectResolutions(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;[Lcom/oneplus/util/AspectRatio;ILcom/oneplus/camera/media/ResolutionSelector$Restriction;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 174
    :cond_1
    iget-object v0, p3, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-gt v0, v3, :cond_2

    iget-object v0, p3, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 175
    :cond_2
    new-instance v6, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;

    new-instance v0, Landroid/util/Size;

    iget-object v1, p3, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p3, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v6, v0}, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;-><init>(Landroid/util/Size;)V

    .end local p3    # "restriction":Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    .local v6, "restriction":Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    move-object p3, v6

    .end local v6    # "restriction":Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    .restart local p3    # "restriction":Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    goto :goto_0
.end method
