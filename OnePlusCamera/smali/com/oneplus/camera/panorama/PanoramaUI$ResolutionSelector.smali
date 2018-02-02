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
    .line 154
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/oneplus/util/AspectRatio;

    sget-object v1, Lcom/oneplus/util/AspectRatio;->RATIO_16x9:Lcom/oneplus/util/AspectRatio;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/camera/panorama/PanoramaUI$ResolutionSelector;->PHOTO_RATIOS:[Lcom/oneplus/util/AspectRatio;

    .line 152
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 156
    return-void
.end method


# virtual methods
.method public selectPreviewSize(Lcom/oneplus/camera/Camera;Lcom/oneplus/base/Settings;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;)Landroid/util/Size;
    .locals 1
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "settings"    # Lcom/oneplus/base/Settings;
    .param p3, "previewContainerSize"    # Landroid/util/Size;
    .param p4, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    const/16 v0, 0x1000

    .line 172
    new-instance p3, Landroid/util/Size;

    .end local p3    # "previewContainerSize":Landroid/util/Size;
    invoke-direct {p3, v0, v0}, Landroid/util/Size;-><init>(II)V

    .line 173
    .restart local p3    # "previewContainerSize":Landroid/util/Size;
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;->selectPreviewSize(Lcom/oneplus/camera/Camera;Lcom/oneplus/base/Settings;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public selectResolutions(Lcom/oneplus/camera/Camera;Lcom/oneplus/base/Settings;Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Ljava/util/List;
    .locals 14
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "settings"    # Lcom/oneplus/base/Settings;
    .param p3, "restriction"    # Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/camera/Camera;",
            "Lcom/oneplus/base/Settings;",
            "Lcom/oneplus/camera/media/ResolutionSelector$Restriction;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    if-nez p3, :cond_2

    .line 179
    new-instance p3, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;

    .end local p3    # "restriction":Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x1000

    const/16 v3, 0x1000

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v0, p3

    invoke-direct {v0, v1}, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;-><init>(Landroid/util/Size;)V

    .line 182
    .restart local p3    # "restriction":Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    :cond_0
    :goto_0
    sget-object v4, Lcom/oneplus/camera/panorama/PanoramaUI$ResolutionSelector;->PHOTO_RATIOS:[Lcom/oneplus/util/AspectRatio;

    const/16 v5, 0x8

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    invoke-super/range {v1 .. v6}, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;->selectResolutions(Lcom/oneplus/camera/Camera;Lcom/oneplus/base/Settings;[Lcom/oneplus/util/AspectRatio;ILcom/oneplus/camera/media/ResolutionSelector$Restriction;)Ljava/util/List;

    move-result-object v9

    .line 183
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/Camera$HardwareLevel;->FULL:Lcom/oneplus/camera/Camera$HardwareLevel;

    if-eq v1, v2, :cond_5

    .line 185
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v7, "finalList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    new-instance v11, Landroid/util/Size;

    const/16 v1, 0x1000

    const/16 v2, 0x1000

    invoke-direct {v11, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 187
    .local v11, "previewContainerSize":Landroid/util/Size;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_1

    .line 189
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/camera/media/Resolution;

    .line 190
    .local v12, "resolution":Lcom/oneplus/camera/media/Resolution;
    move-object/from16 v0, p2

    invoke-super {p0, p1, v0, v11, v12}, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;->selectPreviewSize(Lcom/oneplus/camera/Camera;Lcom/oneplus/base/Settings;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;)Landroid/util/Size;

    move-result-object v10

    .line 191
    .local v10, "maxPreviewSize":Landroid/util/Size;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v12}, Lcom/oneplus/camera/media/Resolution;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_4

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v12}, Lcom/oneplus/camera/media/Resolution;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 193
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v10    # "maxPreviewSize":Landroid/util/Size;
    .end local v12    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_1
    return-object v7

    .line 180
    .end local v7    # "finalList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    .end local v8    # "i":I
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    .end local v11    # "previewContainerSize":Landroid/util/Size;
    :cond_2
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    if-eqz v1, :cond_0

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    const/16 v2, 0x1000

    if-gt v1, v2, :cond_3

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/16 v2, 0x1000

    if-le v1, v2, :cond_0

    .line 181
    :cond_3
    new-instance v13, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;

    new-instance v1, Landroid/util/Size;

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    const/16 v3, 0x1000

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->maxSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/16 v4, 0x1000

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v13, v1}, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;-><init>(Landroid/util/Size;)V

    .end local p3    # "restriction":Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    .local v13, "restriction":Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    move-object/from16 p3, v13

    .end local v13    # "restriction":Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    .restart local p3    # "restriction":Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    goto/16 :goto_0

    .line 187
    .restart local v7    # "finalList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    .restart local v8    # "i":I
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    .restart local v10    # "maxPreviewSize":Landroid/util/Size;
    .restart local v11    # "previewContainerSize":Landroid/util/Size;
    .restart local v12    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 199
    .end local v7    # "finalList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    .end local v8    # "i":I
    .end local v10    # "maxPreviewSize":Landroid/util/Size;
    .end local v11    # "previewContainerSize":Landroid/util/Size;
    .end local v12    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_5
    return-object v9
.end method
