.class public final Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;
.super Lcom/oneplus/camera/scene/PhotoScene;
.source "PhotoFaceBeautyScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/scene/PhotoFaceBeautyScene$1;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-scene-Scene$ImageUsageSwitchesValues:[I = null

.field public static final ID:Ljava/lang/String; = "Face Beauty (Photo)"

.field public static final PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SETTINGS_KEY_FACE_BEAUTY_VALUE_BACK:Ljava/lang/String; = "FaceBeautyValue.Back"

.field private static final SETTINGS_KEY_FACE_BEAUTY_VALUE_FRONT:Ljava/lang/String; = "FaceBeautyValue.Front"


# instance fields
.field private m_FaceBeautyValue:I

.field private m_FaceBeautyValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m_KeepLastCaptureSettingsCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom-oneplus-camera-scene-Scene$ImageUsageSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->-com-oneplus-camera-scene-Scene$ImageUsageSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->-com-oneplus-camera-scene-Scene$ImageUsageSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/scene/Scene$ImageUsage;->values()[Lcom/oneplus/camera/scene/Scene$ImageUsage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/scene/Scene$ImageUsage;->OPTIONS_PANEL_ICON:Lcom/oneplus/camera/scene/Scene$ImageUsage;

    invoke-virtual {v1}, Lcom/oneplus/camera/scene/Scene$ImageUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-object v0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->-com-oneplus-camera-scene-Scene$ImageUsageSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;Z)V
    .locals 0
    .param p1, "isKeepLastSettings"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->onKeepLastCaptureSettingsChanged(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 39
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FaceBeautyValue"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    .line 44
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FaceBeautyValueList"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    .line 29
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 67
    const-string/jumbo v0, "Face Beauty (Photo)"

    const/4 v1, 0x3

    .line 68
    const/16 v2, 0x11

    .line 67
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oneplus/camera/scene/PhotoScene;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;II)V

    .line 53
    new-instance v0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene$1;-><init>(Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;)V

    iput-object v0, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_KeepLastCaptureSettingsCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 72
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_KeepLastCaptureSettingsCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 64
    return-void
.end method

.method private getFaceBeautyValueInSettings(Lcom/oneplus/camera/Camera;)I
    .locals 5
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    const/4 v4, -0x1

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "faceBeautyValue":I
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/Settings;

    .line 255
    .local v1, "settings":Lcom/oneplus/base/Settings;
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v2, v3, :cond_0

    .line 256
    const-string/jumbo v2, "FaceBeautyValue.Front"

    invoke-virtual {v1, v2, v4}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 260
    :goto_0
    return v0

    .line 258
    :cond_0
    const-string/jumbo v2, "FaceBeautyValue.Back"

    invoke-virtual {v1, v2, v4}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private onKeepLastCaptureSettingsChanged(Z)V
    .locals 9
    .param p1, "isKeepLastSettings"    # Z

    .prologue
    .line 183
    if-nez p1, :cond_2

    .line 185
    const/4 v4, -0x1

    .line 186
    .local v4, "defaultFaceBeautyValue":I
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    .line 187
    .local v2, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 188
    .local v3, "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "camera$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 190
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    sget-object v6, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v6}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v6, v7, :cond_0

    .line 192
    sget-object v6, Lcom/oneplus/camera/Camera;->PROP_DEFAULT_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v6}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 196
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_1
    iget-object v6, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onKeepLastCaptureSettingsChanged() - Reset to default face beauty value: "

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v6, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/Settings;

    .line 198
    .local v5, "settings":Lcom/oneplus/base/Settings;
    const-string/jumbo v6, "FaceBeautyValue.Front"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    const-string/jumbo v6, "FaceBeautyValue.Back"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->isEntered()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 201
    invoke-direct {p0, v4}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->setFaceBeautyValue(I)Z

    .line 181
    .end local v1    # "camera$iterator":Ljava/util/Iterator;
    .end local v2    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    .end local v3    # "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    .end local v4    # "defaultFaceBeautyValue":I
    .end local v5    # "settings":Lcom/oneplus/base/Settings;
    :cond_2
    return-void
.end method

.method private setFaceBeautyValue(I)Z
    .locals 6
    .param p1, "value"    # I

    .prologue
    const/4 v5, 0x0

    .line 265
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->isEntered()Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    iget-object v3, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setFaceBeautyValue() - not in beauty scene"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return v5

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 273
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_1

    .line 275
    iget-object v3, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setFaceBeautyValue() - camera is null"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return v5

    .line 279
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setFaceBeautyValue() - value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget v1, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_FaceBeautyValue:I

    .line 282
    .local v1, "oldValue":I
    iput p1, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_FaceBeautyValue:I

    .line 284
    new-instance v3, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene$2;-><init>(Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;Lcom/oneplus/camera/Camera;I)V

    invoke-static {v0, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 293
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/Settings;

    .line 294
    .local v2, "settings":Lcom/oneplus/base/Settings;
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v3, v4, :cond_2

    .line 295
    const-string/jumbo v3, "FaceBeautyValue.Front"

    iget v4, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_FaceBeautyValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    :goto_0
    sget-object v3, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 297
    :cond_2
    const-string/jumbo v3, "FaceBeautyValue.Back"

    iget v4, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_FaceBeautyValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected checkSceneModeValid(Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 79
    if-eqz p1, :cond_0

    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v0, v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->disable()V

    .line 77
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/scene/PhotoScene;->checkSceneModeValid(Lcom/oneplus/camera/Camera;)V

    goto :goto_0
.end method

.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_FaceBeautyValueList:Ljava/util/List;

    return-object v0

    .line 244
    :cond_0
    sget-object v0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 245
    iget v0, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_FaceBeautyValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 247
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/camera/scene/PhotoScene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0b004a

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Lcom/oneplus/camera/scene/Scene$ImageUsage;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "usage"    # Lcom/oneplus/camera/scene/Scene$ImageUsage;

    .prologue
    .line 133
    invoke-static {}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->-getcom-oneplus-camera-scene-Scene$ImageUsageSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/scene/Scene$ImageUsage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 136
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0200ab

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCameraChanged(Lcom/oneplus/camera/Camera;)V
    .locals 6
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 148
    if-eqz p1, :cond_1

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v3, v4, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->disable()V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget v2, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_FaceBeautyValue:I

    .line 155
    .local v2, "oldValue":I
    invoke-direct {p0, p1}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->getFaceBeautyValueInSettings(Lcom/oneplus/camera/Camera;)I

    move-result v0

    .line 157
    .local v0, "faceBeautyValue":I
    iget-object v3, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCameraChanged() - faceBeautyValue in preference : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 160
    iput v0, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_FaceBeautyValue:I

    .line 164
    :goto_1
    iget-object v1, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_FaceBeautyValueList:Ljava/util/List;

    .line 165
    .local v1, "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_FaceBeautyValueList:Ljava/util/List;

    .line 167
    iget-object v3, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCameraChanged() - m_FaceBeautyValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_FaceBeautyValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCameraChanged() - m_FaceBeautyValueList : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_FaceBeautyValueList:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v3, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_FaceBeautyValueList:Ljava/util/List;

    invoke-virtual {p0, v3, v1, v4}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    sget-object v3, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_FaceBeautyValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    invoke-super {p0, p1}, Lcom/oneplus/camera/scene/PhotoScene;->onCameraChanged(Lcom/oneplus/camera/Camera;)V

    goto :goto_0

    .line 162
    .end local v1    # "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_FaceBeautyValue:I

    goto :goto_1
.end method

.method protected onEnter(Lcom/oneplus/camera/scene/Scene;I)Z
    .locals 7
    .param p1, "prevScene"    # Lcom/oneplus/camera/scene/Scene;
    .param p2, "flags"    # I

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 90
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_1

    .line 92
    iget v3, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_FaceBeautyValue:I

    .line 95
    .local v3, "oldValue":I
    invoke-direct {p0, v0}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->getFaceBeautyValueInSettings(Lcom/oneplus/camera/Camera;)I

    move-result v1

    .line 97
    .local v1, "faceBeautyValue":I
    iget-object v4, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onEnter() - faceBeautyValue in preference : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 100
    iput v1, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_FaceBeautyValue:I

    .line 105
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_FaceBeautyValueList:Ljava/util/List;

    .line 106
    .local v2, "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iput-object v4, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_FaceBeautyValueList:Ljava/util/List;

    .line 108
    iget-object v4, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onEnter() - m_FaceBeautyValue : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_FaceBeautyValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v4, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onEnter() - m_FaceBeautyValueList : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_FaceBeautyValueList:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-object v4, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v5, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_FaceBeautyValueList:Ljava/util/List;

    invoke-virtual {p0, v4, v2, v5}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    sget-object v4, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_FaceBeautyValue:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .end local v1    # "faceBeautyValue":I
    .end local v2    # "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "oldValue":I
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/scene/PhotoScene;->onEnter(Lcom/oneplus/camera/scene/Scene;I)Z

    move-result v4

    return v4

    .line 102
    .restart local v1    # "faceBeautyValue":I
    .restart local v3    # "oldValue":I
    :cond_0
    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_FaceBeautyValue:I

    goto :goto_0

    .line 115
    .end local v1    # "faceBeautyValue":I
    .end local v3    # "oldValue":I
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onEnter() - camera is null"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onMediaTypeChanged(Lcom/oneplus/camera/media/MediaType;)V
    .locals 3
    .param p1, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 211
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v1, v2, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->disable()V

    .line 208
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/scene/PhotoScene;->onMediaTypeChanged(Lcom/oneplus/camera/media/MediaType;)V

    goto :goto_0
.end method

.method protected onRelease()V
    .locals 3

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_KEEP_LAST_CAPTURE_SETTINGS:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->m_KeepLastCaptureSettingsCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 225
    invoke-super {p0}, Lcom/oneplus/camera/scene/PhotoScene;->onRelease()V

    .line 220
    return-void
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 234
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->setFaceBeautyValue(I)Z

    move-result v0

    return v0

    .line 236
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/scene/PhotoScene;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
