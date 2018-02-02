.class public Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;
.super Lcom/oneplus/camera/media/DefaultResolutionSelector;
.source "DefaultVideoResolutionSelector.java"

# interfaces
.implements Lcom/oneplus/camera/media/VideoResolutionSelector;


# static fields
.field private static final synthetic -com-oneplus-camera-Camera$LensFacingSwitchesValues:[I = null

.field public static final SETTINGS_KEY_RESOLUTION_BACK:Ljava/lang/String; = "Resolution.Video.Back"

.field public static final SETTINGS_KEY_RESOLUTION_FRONT:Ljava/lang/String; = "Resolution.Video.Front"


# direct methods
.method private static synthetic -getcom-oneplus-camera-Camera$LensFacingSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;->-com-oneplus-camera-Camera$LensFacingSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;->-com-oneplus-camera-Camera$LensFacingSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/Camera$LensFacing;->values()[Lcom/oneplus/camera/Camera$LensFacing;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;->-com-oneplus-camera-Camera$LensFacingSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "Resolution.Video.Back"

    invoke-static {v0}, Lcom/oneplus/base/Settings;->addPrivateKey(Ljava/lang/String;)V

    .line 37
    const-string/jumbo v0, "Resolution.Video.Front"

    invoke-static {v0}, Lcom/oneplus/base/Settings;->addPrivateKey(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/DefaultResolutionSelector;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getResolutionSettingsKey(Lcom/oneplus/camera/Camera;Lcom/oneplus/base/Settings;)Ljava/lang/String;
    .locals 4
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "settings"    # Lcom/oneplus/base/Settings;

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "settingsKey":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;->-getcom-oneplus-camera-Camera$LensFacingSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 212
    iget-object v1, p0, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getResolutionSettingsKey() - Unknown camera lens facing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .end local v0    # "settingsKey":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 206
    .restart local v0    # "settingsKey":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "Resolution.Video.Back"

    .local v0, "settingsKey":Ljava/lang/String;
    goto :goto_0

    .line 209
    .local v0, "settingsKey":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "Resolution.Video.Front"

    .local v0, "settingsKey":Ljava/lang/String;
    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public saveResolution(Lcom/oneplus/camera/Camera;Lcom/oneplus/base/Settings;Lcom/oneplus/camera/media/Resolution;)V
    .locals 3
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "settings"    # Lcom/oneplus/base/Settings;
    .param p3, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    .line 55
    invoke-static {}, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;->-getcom-oneplus-camera-Camera$LensFacingSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v0}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 64
    iget-object v0, p0, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveResolution() - Unknown camera lens facing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :goto_0
    return-void

    .line 58
    :pswitch_0
    const-string/jumbo v0, "Resolution.Video.Back"

    invoke-virtual {p3}, Lcom/oneplus/camera/media/Resolution;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :pswitch_1
    const-string/jumbo v0, "Resolution.Video.Front"

    invoke-virtual {p3}, Lcom/oneplus/camera/media/Resolution;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public selectResolution(Lcom/oneplus/camera/Camera;Lcom/oneplus/base/Settings;Ljava/util/List;Lcom/oneplus/camera/media/Resolution;Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Lcom/oneplus/camera/media/Resolution;
    .locals 10
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "settings"    # Lcom/oneplus/base/Settings;
    .param p4, "currentResolution"    # Lcom/oneplus/camera/media/Resolution;
    .param p5, "restriction"    # Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/camera/Camera;",
            "Lcom/oneplus/base/Settings;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;",
            "Lcom/oneplus/camera/media/Resolution;",
            "Lcom/oneplus/camera/media/ResolutionSelector$Restriction;",
            ")",
            "Lcom/oneplus/camera/media/Resolution;"
        }
    .end annotation

    .prologue
    .local p3, "resolutionList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    const/4 v9, 0x0

    .line 75
    if-nez p4, :cond_0

    .line 77
    invoke-static {}, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;->-getcom-oneplus-camera-Camera$LensFacingSwitchesValues()[I

    move-result-object v7

    sget-object v6, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v6}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v6}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    .line 86
    iget-object v6, p0, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "selectResolution() - Unknown camera lens facing : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v8}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    :goto_0
    if-eqz p4, :cond_2

    .line 94
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 96
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/media/Resolution;

    .line 97
    .local v3, "resolution":Lcom/oneplus/camera/media/Resolution;
    if-eqz v3, :cond_1

    invoke-virtual {v3, p4}, Lcom/oneplus/camera/media/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 98
    return-object v3

    .line 80
    .end local v0    # "i":I
    .end local v3    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :pswitch_0
    const-string/jumbo v6, "Resolution.Video.Back"

    invoke-virtual {p2, v6}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/camera/media/Resolution;->fromKey(Ljava/lang/String;)Lcom/oneplus/camera/media/Resolution;

    move-result-object p4

    goto :goto_0

    .line 83
    :pswitch_1
    const-string/jumbo v6, "Resolution.Video.Front"

    invoke-virtual {p2, v6}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/camera/media/Resolution;->fromKey(Ljava/lang/String;)Lcom/oneplus/camera/media/Resolution;

    move-result-object p4

    goto :goto_0

    .line 94
    .restart local v0    # "i":I
    .restart local v3    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 103
    .end local v0    # "i":I
    .end local v3    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v6, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/base/ScreenSize;

    invoke-virtual {v6}, Lcom/oneplus/base/ScreenSize;->toSize()Landroid/util/Size;

    move-result-object v5

    .line 104
    .local v5, "screenSize":Landroid/util/Size;
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v7

    mul-int v4, v6, v7

    .line 105
    .local v4, "screenPixelCount":I
    const/4 v1, 0x0

    .line 106
    .local v1, "minPixelCountDiff":I
    const/4 p4, 0x0

    .line 107
    .local p4, "currentResolution":Lcom/oneplus/camera/media/Resolution;
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .end local p4    # "currentResolution":Lcom/oneplus/camera/media/Resolution;
    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_8

    .line 109
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/media/Resolution;

    .line 110
    .restart local v3    # "resolution":Lcom/oneplus/camera/media/Resolution;
    invoke-virtual {v3}, Lcom/oneplus/camera/media/Resolution;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Lcom/oneplus/camera/media/Resolution;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    sub-int v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 111
    .local v2, "pixelDiff":I
    if-eqz p4, :cond_3

    if-gt v2, v1, :cond_6

    .line 113
    :cond_3
    if-eqz p4, :cond_4

    if-ge v2, v1, :cond_7

    .line 114
    :cond_4
    move-object p4, v3

    .line 118
    :cond_5
    :goto_3
    move v1, v2

    .line 107
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 115
    :cond_7
    invoke-virtual {v3}, Lcom/oneplus/camera/media/Resolution;->getFps()I

    move-result v6

    invoke-virtual {p4}, Lcom/oneplus/camera/media/Resolution;->getFps()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 116
    move-object p4, v3

    .local p4, "currentResolution":Lcom/oneplus/camera/media/Resolution;
    goto :goto_3

    .line 121
    .end local v2    # "pixelDiff":I
    .end local v3    # "resolution":Lcom/oneplus/camera/media/Resolution;
    .end local p4    # "currentResolution":Lcom/oneplus/camera/media/Resolution;
    :cond_8
    if-eqz p4, :cond_9

    .line 122
    return-object p4

    .line 125
    :cond_9
    iget-object v6, p0, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "selectResolution() - Empty resolution list"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-object v9

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public selectResolutions(Lcom/oneplus/camera/Camera;Lcom/oneplus/base/Settings;Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Ljava/util/List;
    .locals 16
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
    .line 134
    sget-object v13, Lcom/oneplus/camera/Camera;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 135
    .local v1, "allSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    sget-object v13, Lcom/oneplus/camera/Camera;->PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 136
    .local v11, "support60FpsSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v9, "resolutions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/camera/media/Resolution;>;"
    const/4 v5, 0x0

    .line 138
    .local v5, "has4K":Z
    const/4 v4, 0x0

    .line 139
    .local v4, "has2K":Z
    const/4 v3, 0x0

    .line 140
    .local v3, "fullHdRes":Lcom/oneplus/camera/media/Resolution;
    const/4 v2, 0x0

    .line 141
    .local v2, "fullHd60FpsRes":Lcom/oneplus/camera/media/Resolution;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v8, v13, -0x1

    .end local v2    # "fullHd60FpsRes":Lcom/oneplus/camera/media/Resolution;
    .end local v3    # "fullHdRes":Lcom/oneplus/camera/media/Resolution;
    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_7

    .line 143
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Size;

    .line 144
    .local v10, "size":Landroid/util/Size;
    move-object/from16 v0, p3

    invoke-static {v0, v10}, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->match(Lcom/oneplus/camera/media/ResolutionSelector$Restriction;Landroid/util/Size;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 147
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v12

    .line 148
    .local v12, "width":I
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v7

    .line 149
    .local v7, "height":I
    if-nez v5, :cond_2

    const/16 v13, 0x1000

    if-eq v12, v13, :cond_0

    const/16 v13, 0xf00

    if-ne v12, v13, :cond_2

    :cond_0
    const/16 v13, 0x870

    if-ne v7, v13, :cond_2

    .line 151
    new-instance v13, Lcom/oneplus/camera/media/Resolution;

    sget-object v14, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {v13, v14, v12, v7}, Lcom/oneplus/camera/media/Resolution;-><init>(Lcom/oneplus/camera/media/MediaType;II)V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    const/4 v5, 0x1

    .line 141
    .end local v7    # "height":I
    .end local v12    # "width":I
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 157
    .restart local v7    # "height":I
    .restart local v12    # "width":I
    :cond_2
    if-nez v4, :cond_6

    const/16 v13, 0x780

    if-ne v12, v13, :cond_6

    const/16 v13, 0x438

    if-eq v7, v13, :cond_3

    const/16 v13, 0x440

    if-ne v7, v13, :cond_6

    .line 159
    :cond_3
    new-instance v3, Lcom/oneplus/camera/media/Resolution;

    sget-object v13, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {v3, v13, v12, v7}, Lcom/oneplus/camera/media/Resolution;-><init>(Lcom/oneplus/camera/media/MediaType;II)V

    .line 160
    .local v3, "fullHdRes":Lcom/oneplus/camera/media/Resolution;
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    const/4 v6, 0x0

    .line 164
    .local v6, "has60fps":Z
    if-eqz v11, :cond_4

    .line 165
    invoke-interface {v11, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 166
    .end local v6    # "has60fps":Z
    :cond_4
    if-eqz v6, :cond_5

    .line 168
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "selectResolutions() - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " support 60fps."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v2, Lcom/oneplus/camera/media/Resolution;

    sget-object v13, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    const/16 v14, 0x3c

    invoke-direct {v2, v13, v12, v7, v14}, Lcom/oneplus/camera/media/Resolution;-><init>(Lcom/oneplus/camera/media/MediaType;III)V

    .line 170
    .local v2, "fullHd60FpsRes":Lcom/oneplus/camera/media/Resolution;
    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lcom/oneplus/camera/media/ResolutionSelector$Restriction;->match(Lcom/oneplus/camera/media/ResolutionSelector$Restriction;Lcom/oneplus/camera/media/Resolution;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 171
    const/4 v2, 0x0

    .line 174
    .end local v2    # "fullHd60FpsRes":Lcom/oneplus/camera/media/Resolution;
    :cond_5
    const/4 v4, 0x1

    .line 175
    goto :goto_1

    .line 179
    .end local v3    # "fullHdRes":Lcom/oneplus/camera/media/Resolution;
    :cond_6
    const/16 v13, 0x500

    if-ne v12, v13, :cond_1

    const/16 v13, 0x2d0

    if-ne v7, v13, :cond_1

    .line 182
    new-instance v13, Lcom/oneplus/camera/media/Resolution;

    sget-object v14, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-direct {v13, v14, v12, v7}, Lcom/oneplus/camera/media/Resolution;-><init>(Lcom/oneplus/camera/media/MediaType;II)V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 186
    .end local v7    # "height":I
    .end local v10    # "size":Landroid/util/Size;
    .end local v12    # "width":I
    :cond_7
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 187
    invoke-static {v9}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 189
    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    .line 190
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v9, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 192
    :cond_8
    return-object v9
.end method
