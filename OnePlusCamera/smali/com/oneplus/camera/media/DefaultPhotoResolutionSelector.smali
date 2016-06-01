.class public Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;
.super Lcom/oneplus/camera/media/DefaultResolutionSelector;
.source "DefaultPhotoResolutionSelector.java"

# interfaces
.implements Lcom/oneplus/camera/media/PhotoResolutionSelector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector$1;
    }
.end annotation


# static fields
.field private static final ASPECT_RATIOS:[Lcom/oneplus/util/AspectRatio;

.field public static final SETTINGS_KEY_RESOLUTION_BACK:Ljava/lang/String; = "Resolution.Photo.Back"

.field public static final SETTINGS_KEY_RESOLUTION_FRONT:Ljava/lang/String; = "Resolution.Photo.Front"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/util/AspectRatio;

    const/4 v1, 0x0

    sget-object v2, Lcom/oneplus/util/AspectRatio;->RATIO_4x3:Lcom/oneplus/util/AspectRatio;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/oneplus/util/AspectRatio;->RATIO_16x9:Lcom/oneplus/util/AspectRatio;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/oneplus/util/AspectRatio;->RATIO_1x1:Lcom/oneplus/util/AspectRatio;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;->ASPECT_RATIOS:[Lcom/oneplus/util/AspectRatio;

    .line 37
    const-string v0, "Resolution.Photo.Back"

    invoke-static {v0}, Lcom/oneplus/camera/Settings;->addPrivateKey(Ljava/lang/String;)V

    .line 38
    const-string v0, "Resolution.Photo.Front"

    invoke-static {v0}, Lcom/oneplus/camera/Settings;->addPrivateKey(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/DefaultResolutionSelector;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getResolutionSettingsKey(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;)Ljava/lang/String;
    .locals 4
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "settings"    # Lcom/oneplus/camera/Settings;

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "settingsKey":Ljava/lang/String;
    sget-object v2, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector$1;->$SwitchMap$com$oneplus$camera$Camera$LensFacing:[I

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

    const-string v3, "getResolutionSettingsKey() - Unknown camera lens facing : "

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
    :goto_0
    return-object v0

    .line 130
    :pswitch_0
    const-string v0, "Resolution.Photo.Back"

    .line 131
    goto :goto_0

    .line 133
    :pswitch_1
    const-string v0, "Resolution.Photo.Front"

    .line 134
    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public saveResolution(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;Lcom/oneplus/camera/media/Resolution;)V
    .locals 3
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "settings"    # Lcom/oneplus/camera/Settings;
    .param p3, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    .line 56
    sget-object v1, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector$1;->$SwitchMap$com$oneplus$camera$Camera$LensFacing:[I

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

    const-string v2, "saveResolution() - Unknown camera lens facing : "

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

    .line 68
    :goto_0
    return-void

    .line 59
    :pswitch_0
    const-string v0, "Resolution.Photo.Back"

    invoke-virtual {p3}, Lcom/oneplus/camera/media/Resolution;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/oneplus/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :pswitch_1
    const-string v0, "Resolution.Photo.Front"

    invoke-virtual {p3}, Lcom/oneplus/camera/media/Resolution;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/oneplus/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public selectResolution(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;Ljava/util/List;Lcom/oneplus/camera/media/Resolution;Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Lcom/oneplus/camera/media/Resolution;
    .locals 5
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "settings"    # Lcom/oneplus/camera/Settings;
    .param p4, "currentResolution"    # Lcom/oneplus/camera/media/Resolution;
    .param p5, "restriction"    # Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/camera/Camera;",
            "Lcom/oneplus/camera/Settings;",
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
    .line 76
    .local p3, "resolutionList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    if-nez p4, :cond_0

    .line 78
    sget-object v3, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector$1;->$SwitchMap$com$oneplus$camera$Camera$LensFacing:[I

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

    const-string v4, "selectResolution() - Unknown camera lens facing : "

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

    .line 109
    .end local v0    # "i":I
    .end local v1    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :goto_2
    return-object v1

    .line 81
    :pswitch_0
    const-string v2, "Resolution.Photo.Back"

    invoke-virtual {p2, v2}, Lcom/oneplus/camera/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/camera/media/Resolution;->fromKey(Ljava/lang/String;)Lcom/oneplus/camera/media/Resolution;

    move-result-object p4

    .line 82
    goto :goto_0

    .line 84
    :pswitch_1
    const-string v2, "Resolution.Photo.Front"

    invoke-virtual {p2, v2}, Lcom/oneplus/camera/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/camera/media/Resolution;->fromKey(Ljava/lang/String;)Lcom/oneplus/camera/media/Resolution;

    move-result-object p4

    .line 85
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
    const/4 v2, 0x0

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/media/Resolution;

    move-object v1, v2

    goto :goto_2

    .line 108
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;->TAG:Ljava/lang/String;

    const-string v3, "selectResolution() - Empty resolution list"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v1, 0x0

    goto :goto_2

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public selectResolutions(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Ljava/util/List;
    .locals 6
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
    .line 117
    sget-object v3, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;->ASPECT_RATIOS:[Lcom/oneplus/util/AspectRatio;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;->selectResolutions(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;[Lcom/oneplus/util/AspectRatio;ILcom/oneplus/camera/media/ResolutionSelector$Restriction;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
