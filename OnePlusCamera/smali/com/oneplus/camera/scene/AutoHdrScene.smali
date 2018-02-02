.class public final Lcom/oneplus/camera/scene/AutoHdrScene;
.super Lcom/oneplus/camera/scene/PhotoScene;
.source "AutoHdrScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/scene/AutoHdrScene$1;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-scene-Scene$ImageUsageSwitchesValues:[I = null

.field private static final DURATION_CAPTURE_DELAY:J = 0x32L

.field private static final DURATION_CAPTURE_DELAY_LONG:J = 0x64L

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

.field private static final THRESHOLD_ACC_VALUE_DIFF_TO_DELAY_CAPTURE:D = 0.07999999821186066

.field private static final THRESHOLD_ACC_VALUE_DIFF_TO_DELAY_CAPTURE_LONG:D = 0.15000000596046448


# instance fields
.field private final m_AccelerometerValues:[F

.field private final m_AccelerometerValuesChangedCB:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<[F>;"
        }
    .end annotation
.end field

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

.method static synthetic -get1(Lcom/oneplus/camera/scene/AutoHdrScene;)[F
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/scene/AutoHdrScene;->m_AccelerometerValues:[F

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
    sget-object v1, Lcom/oneplus/camera/scene/Scene$ImageUsage;->SECOND_LAYER_BAR_ICON:Lcom/oneplus/camera/scene/Scene$ImageUsage;

    invoke-virtual {v1}, Lcom/oneplus/camera/scene/Scene$ImageUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/scene/Scene$ImageUsage;->TOAST_ICON:Lcom/oneplus/camera/scene/Scene$ImageUsage;

    invoke-virtual {v1}, Lcom/oneplus/camera/scene/Scene$ImageUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/oneplus/camera/scene/AutoHdrScene;->-com-oneplus-camera-scene-Scene$ImageUsageSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 24
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsHdrActive"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/scene/AutoHdrScene;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/scene/AutoHdrScene;->PROP_IS_HDR_ACTIVE:Lcom/oneplus/base/PropertyKey;

    .line 19
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 75
    const-string/jumbo v0, "Auto-HDR"

    const/16 v1, 0x2711

    .line 76
    const/16 v2, 0x12

    .line 75
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oneplus/camera/scene/PhotoScene;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;II)V

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oneplus/camera/scene/AutoHdrScene;->m_AccelerometerValues:[F

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/scene/AutoHdrScene;->m_BoundCameras:Ljava/util/Set;

    .line 44
    new-instance v0, Lcom/oneplus/camera/scene/AutoHdrScene$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/scene/AutoHdrScene$1;-><init>(Lcom/oneplus/camera/scene/AutoHdrScene;)V

    iput-object v0, p0, Lcom/oneplus/camera/scene/AutoHdrScene;->m_AccelerometerValuesChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    .line 73
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/AutoHdrScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0d006e

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Lcom/oneplus/camera/scene/Scene$ImageUsage;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "usage"    # Lcom/oneplus/camera/scene/Scene$ImageUsage;

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-static {}, Lcom/oneplus/camera/scene/AutoHdrScene;->-getcom-oneplus-camera-scene-Scene$ImageUsageSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/scene/Scene$ImageUsage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 127
    return-object v2

    .line 121
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/AutoHdrScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f020115

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 123
    :pswitch_1
    sget-object v0, Lcom/oneplus/camera/scene/AutoHdrScene;->PROP_IS_HDR_ACTIVE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/scene/AutoHdrScene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/AutoHdrScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0202f1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    return-object v2

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 101
    invoke-super {p0, p1}, Lcom/oneplus/camera/scene/PhotoScene;->handleMessage(Landroid/os/Message;)V

    .line 84
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/oneplus/camera/scene/AutoHdrScene;->PROP_IS_HDR_ACTIVE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/scene/AutoHdrScene;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/scene/AutoHdrScene;->setCaptureDelayTime(J)V

    .line 95
    sget-object v0, Lcom/oneplus/camera/scene/AutoHdrScene;->PROP_IS_HDR_ACTIVE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/scene/AutoHdrScene;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method public needToShowProcessingDialog()Z
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/oneplus/camera/scene/AutoHdrScene;->PROP_IS_HDR_ACTIVE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/scene/AutoHdrScene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    return v0

    .line 138
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onCameraChanged(Lcom/oneplus/camera/Camera;)V
    .locals 1
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/AutoHdrScene;->disable()V

    .line 149
    invoke-super {p0, p1}, Lcom/oneplus/camera/scene/PhotoScene;->onCameraChanged(Lcom/oneplus/camera/Camera;)V

    .line 150
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/scene/AutoHdrScene;->m_BoundCameras:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/oneplus/camera/scene/AutoHdrScene;->m_BoundCameras:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v0, Lcom/oneplus/camera/scene/AutoHdrScene$2;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/scene/AutoHdrScene$2;-><init>(Lcom/oneplus/camera/scene/AutoHdrScene;Lcom/oneplus/camera/Camera;)V

    invoke-static {p1, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 182
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/camera/scene/PhotoScene;->onCameraChanged(Lcom/oneplus/camera/Camera;)V

    .line 144
    return-void
.end method

.method protected onEnter(Lcom/oneplus/camera/scene/Scene;I)Z
    .locals 3
    .param p1, "prevScene"    # Lcom/oneplus/camera/scene/Scene;
    .param p2, "flags"    # I

    .prologue
    .line 191
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/scene/PhotoScene;->onEnter(Lcom/oneplus/camera/scene/Scene;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x0

    return v0

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/AutoHdrScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_ACCELEROMETER_VALUES:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/scene/AutoHdrScene;->m_AccelerometerValuesChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 198
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/scene/AutoHdrScene;->setCaptureDelayTime(J)V

    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method protected onExit(Lcom/oneplus/camera/scene/Scene;I)V
    .locals 4
    .param p1, "nextScene"    # Lcom/oneplus/camera/scene/Scene;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/AutoHdrScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_ACCELEROMETER_VALUES:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/scene/AutoHdrScene;->m_AccelerometerValuesChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 213
    iget-object v0, p0, Lcom/oneplus/camera/scene/AutoHdrScene;->m_AccelerometerValues:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 214
    iget-object v0, p0, Lcom/oneplus/camera/scene/AutoHdrScene;->m_AccelerometerValues:[F

    const/4 v1, 0x1

    aput v3, v0, v1

    .line 215
    iget-object v0, p0, Lcom/oneplus/camera/scene/AutoHdrScene;->m_AccelerometerValues:[F

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 218
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/scene/PhotoScene;->onExit(Lcom/oneplus/camera/scene/Scene;I)V

    .line 207
    return-void
.end method
