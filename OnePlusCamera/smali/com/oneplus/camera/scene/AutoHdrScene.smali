.class public final Lcom/oneplus/camera/scene/AutoHdrScene;
.super Lcom/oneplus/camera/scene/PhotoScene;
.source "AutoHdrScene.java"


# static fields
.field private static final synthetic -com-oneplus-camera-scene-Scene$ImageUsageSwitchesValues:[I = null

.field public static final ID:Ljava/lang/String; = "Auto-HDR"

.field public static final MSG_AUTO_HDR_STATUS_UPDATED:I = 0x2711

.field public static final PROP_IS_HDR_ACTIVE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_BoundCameras:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/camera/Camera;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/scene/AutoHdrScene;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/scene/AutoHdrScene;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-camera-scene-Scene$ImageUsageSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/scene/AutoHdrScene;->-com-oneplus-camera-scene-Scene$ImageUsageSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/scene/AutoHdrScene;->-com-oneplus-camera-scene-Scene$ImageUsageSwitchesValues:[I

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
    sput-object v0, Lcom/oneplus/camera/scene/AutoHdrScene;->-com-oneplus-camera-scene-Scene$ImageUsageSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 27
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsHdrActive"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/scene/AutoHdrScene;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/scene/AutoHdrScene;->PROP_IS_HDR_ACTIVE:Lcom/oneplus/base/PropertyKey;

    .line 22
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 40
    const-string/jumbo v0, "Auto-HDR"

    const/16 v1, 0x2711

    .line 41
    const/16 v2, 0x12

    .line 40
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oneplus/camera/scene/PhotoScene;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;II)V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/scene/AutoHdrScene;->m_BoundCameras:Ljava/util/Set;

    .line 38
    return-void
.end method


# virtual methods
.method protected checkSceneModeValid(Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 50
    if-eqz p1, :cond_0

    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/AutoHdrScene;->disable()V

    .line 48
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/scene/PhotoScene;->checkSceneModeValid(Lcom/oneplus/camera/Camera;)V

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/AutoHdrScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Lcom/oneplus/camera/scene/Scene$ImageUsage;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "usage"    # Lcom/oneplus/camera/scene/Scene$ImageUsage;

    .prologue
    .line 85
    invoke-static {}, Lcom/oneplus/camera/scene/AutoHdrScene;->-getcom-oneplus-camera-scene-Scene$ImageUsageSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/scene/Scene$ImageUsage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 88
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/AutoHdrScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 68
    invoke-super {p0, p1}, Lcom/oneplus/camera/scene/PhotoScene;->handleMessage(Landroid/os/Message;)V

    .line 59
    :goto_0
    return-void

    .line 64
    :pswitch_0
    sget-object v1, Lcom/oneplus/camera/scene/AutoHdrScene;->PROP_IS_HDR_ACTIVE:Lcom/oneplus/base/PropertyKey;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/scene/AutoHdrScene;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected onCameraChanged(Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/AutoHdrScene;->disable()V

    .line 101
    invoke-super {p0, p1}, Lcom/oneplus/camera/scene/PhotoScene;->onCameraChanged(Lcom/oneplus/camera/Camera;)V

    .line 102
    return-void

    .line 104
    :cond_0
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v0, v1, :cond_1

    .line 106
    sget-object v0, Lcom/oneplus/camera/scene/AutoHdrScene;->PROP_IS_HDR_ACTIVE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/scene/AutoHdrScene;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/AutoHdrScene;->disable()V

    .line 96
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/scene/AutoHdrScene;->m_BoundCameras:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/oneplus/camera/scene/AutoHdrScene;->m_BoundCameras:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v0, Lcom/oneplus/camera/scene/AutoHdrScene$1;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/scene/AutoHdrScene$1;-><init>(Lcom/oneplus/camera/scene/AutoHdrScene;Lcom/oneplus/camera/Camera;)V

    invoke-static {p1, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 141
    :cond_2
    invoke-super {p0, p1}, Lcom/oneplus/camera/scene/PhotoScene;->onCameraChanged(Lcom/oneplus/camera/Camera;)V

    goto :goto_0
.end method

.method protected onMediaTypeChanged(Lcom/oneplus/camera/media/MediaType;)V
    .locals 3
    .param p1, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/AutoHdrScene;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 151
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v1, v2, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/AutoHdrScene;->disable()V

    .line 148
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/scene/PhotoScene;->onMediaTypeChanged(Lcom/oneplus/camera/media/MediaType;)V

    goto :goto_0
.end method

.method protected onShutter(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 162
    sget-object v0, Lcom/oneplus/camera/scene/AutoHdrScene;->PROP_IS_HDR_ACTIVE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/scene/AutoHdrScene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/oneplus/camera/scene/AutoHdrScene;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onShutter() - not HDR, do not show processing dialog"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    and-int/lit8 p1, p1, -0x21

    .line 168
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/scene/PhotoScene;->onShutter(I)V

    .line 159
    return-void
.end method
