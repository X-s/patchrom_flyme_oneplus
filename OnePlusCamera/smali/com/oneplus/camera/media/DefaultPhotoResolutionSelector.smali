.class public Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;
.super Lcom/oneplus/camera/media/DefaultResolutionSelector;
.source "DefaultPhotoResolutionSelector.java"

# interfaces
.implements Lcom/oneplus/camera/media/PhotoResolutionSelector;


# static fields
.field private static final synthetic -com-oneplus-camera-Camera$LensFacingSwitchesValues:[I = null

.field private static final ASPECT_RATIOS:[Lcom/oneplus/util/AspectRatio;

.field public static final SETTINGS_KEY_RESOLUTION_BACK:Ljava/lang/String; = "Resolution.Photo.Back"

.field public static final SETTINGS_KEY_RESOLUTION_FRONT:Ljava/lang/String; = "Resolution.Photo.Front"


# direct methods
.method private static synthetic -getcom-oneplus-camera-Camera$LensFacingSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;->-com-oneplus-camera-Camera$LensFacingSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;->-com-oneplus-camera-Camera$LensFacingSwitchesValues:[I

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
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK_TELE:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK_WIDE:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;->-com-oneplus-camera-Camera$LensFacingSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/util/AspectRatio;

    .line 28
    sget-object v1, Lcom/oneplus/util/AspectRatio;->RATIO_4x3:Lcom/oneplus/util/AspectRatio;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 29
    sget-object v1, Lcom/oneplus/util/AspectRatio;->RATIO_16x9:Lcom/oneplus/util/AspectRatio;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 30
    sget-object v1, Lcom/oneplus/util/AspectRatio;->RATIO_1x1:Lcom/oneplus/util/AspectRatio;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 27
    sput-object v0, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;->ASPECT_RATIOS:[Lcom/oneplus/util/AspectRatio;

    .line 37
    const-string/jumbo v0, "Resolution.Photo.Back"

    invoke-static {v0}, Lcom/oneplus/base/Settings;->addPrivateKey(Ljava/lang/String;)V

    .line 38
    const-string/jumbo v0, "Resolution.Photo.Front"

    invoke-static {v0}, Lcom/oneplus/base/Settings;->addPrivateKey(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/DefaultResolutionSelector;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getResolutionSettingsKey(Lcom/oneplus/camera/Camera;Lcom/oneplus/base/Settings;)Ljava/lang/String;
    .locals 4
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "settings"    # Lcom/oneplus/base/Settings;

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "settingsKey":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;->-getcom-oneplus-camera-Camera$LensFacingSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 136
    iget-object v1, p0, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;->TAG:Ljava/lang/String;

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

    .line 139
    .end local v0    # "settingsKey":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 130
    .restart local v0    # "settingsKey":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "Resolution.Photo.Back"

    .local v0, "settingsKey":Ljava/lang/String;
    goto :goto_0

    .line 133
    .local v0, "settingsKey":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "Resolution.Photo.Front"

    .local v0, "settingsKey":Ljava/lang/String;
    goto :goto_0

    .line 127
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
    .line 56
    invoke-static {}, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;->-getcom-oneplus-camera-Camera$LensFacingSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v0}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 65
    iget-object v0, p0, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;->TAG:Ljava/lang/String;

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

    .line 54
    :goto_0
    return-void

    .line 59
    :pswitch_0
    const-string/jumbo v0, "Resolution.Photo.Back"

    invoke-virtual {p3}, Lcom/oneplus/camera/media/Resolution;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :pswitch_1
    const-string/jumbo v0, "Resolution.Photo.Front"

    invoke-virtual {p3}, Lcom/oneplus/camera/media/Resolution;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public selectResolution(Lcom/oneplus/camera/Camera;Lcom/oneplus/base/Settings;Ljava/util/List;Lcom/oneplus/camera/media/Resolution;Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Lcom/oneplus/camera/media/Resolution;
    .locals 7
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
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 76
    if-nez p4, :cond_0

    .line 78
    invoke-static {}, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;->-getcom-oneplus-camera-Camera$LensFacingSwitchesValues()[I

    move-result-object v3

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v2}, Lcom/oneplus/camera/Camera$LensFacing;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 87
    iget-object v2, p0, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selectResolution() - Unknown camera lens facing : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    if-eqz p4, :cond_2

    .line 95
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 97
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/media/Resolution;

    .line 98
    .local v1, "resolution":Lcom/oneplus/camera/media/Resolution;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p4}, Lcom/oneplus/camera/media/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    return-object v1

    .line 81
    .end local v0    # "i":I
    .end local v1    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :pswitch_0
    const-string/jumbo v2, "Resolution.Photo.Back"

    invoke-virtual {p2, v2}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/camera/media/Resolution;->fromKey(Ljava/lang/String;)Lcom/oneplus/camera/media/Resolution;

    move-result-object p4

    goto :goto_0

    .line 84
    :pswitch_1
    const-string/jumbo v2, "Resolution.Photo.Front"

    invoke-virtual {p2, v2}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/camera/media/Resolution;->fromKey(Ljava/lang/String;)Lcom/oneplus/camera/media/Resolution;

    move-result-object p4

    goto :goto_0

    .line 95
    .restart local v0    # "i":I
    .restart local v1    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 104
    .end local v0    # "i":I
    .end local v1    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 105
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/media/Resolution;

    return-object v2

    .line 108
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "selectResolution() - Empty resolution list"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-object v5

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public selectResolutions(Lcom/oneplus/camera/Camera;Lcom/oneplus/base/Settings;Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Ljava/util/List;
    .locals 6
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
    .line 117
    sget-object v3, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;->ASPECT_RATIOS:[Lcom/oneplus/util/AspectRatio;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;->selectResolutions(Lcom/oneplus/camera/Camera;Lcom/oneplus/base/Settings;[Lcom/oneplus/util/AspectRatio;ILcom/oneplus/camera/media/ResolutionSelector$Restriction;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
