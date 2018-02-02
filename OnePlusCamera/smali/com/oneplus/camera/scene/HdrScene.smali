.class public final Lcom/oneplus/camera/scene/HdrScene;
.super Lcom/oneplus/camera/scene/PhotoScene;
.source "HdrScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/scene/HdrScene$1;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-scene-Scene$ImageUsageSwitchesValues:[I = null

.field private static final DURATION_CAPTURE_DELAY:J = 0x32L

.field private static final DURATION_CAPTURE_DELAY_LONG:J = 0x64L

.field public static final ID:Ljava/lang/String; = "HDR"

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


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/scene/HdrScene;)[F
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/scene/HdrScene;->m_AccelerometerValues:[F

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-camera-scene-Scene$ImageUsageSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/scene/HdrScene;->-com-oneplus-camera-scene-Scene$ImageUsageSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/scene/HdrScene;->-com-oneplus-camera-scene-Scene$ImageUsageSwitchesValues:[I

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
    sput-object v0, Lcom/oneplus/camera/scene/HdrScene;->-com-oneplus-camera-scene-Scene$ImageUsageSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 56
    const-string/jumbo v0, "HDR"

    const/16 v1, 0x12

    .line 57
    const/16 v2, 0x13

    .line 56
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oneplus/camera/scene/PhotoScene;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;II)V

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oneplus/camera/scene/HdrScene;->m_AccelerometerValues:[F

    .line 30
    new-instance v0, Lcom/oneplus/camera/scene/HdrScene$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/scene/HdrScene$1;-><init>(Lcom/oneplus/camera/scene/HdrScene;)V

    iput-object v0, p0, Lcom/oneplus/camera/scene/HdrScene;->m_AccelerometerValuesChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    .line 54
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/HdrScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0d0070

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Lcom/oneplus/camera/scene/Scene$ImageUsage;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "usage"    # Lcom/oneplus/camera/scene/Scene$ImageUsage;

    .prologue
    .line 75
    invoke-static {}, Lcom/oneplus/camera/scene/HdrScene;->-getcom-oneplus-camera-scene-Scene$ImageUsageSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/scene/Scene$ImageUsage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 78
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/HdrScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 80
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/HdrScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0202f1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onEnter(Lcom/oneplus/camera/scene/Scene;I)Z
    .locals 3
    .param p1, "prevScene"    # Lcom/oneplus/camera/scene/Scene;
    .param p2, "flags"    # I

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/scene/PhotoScene;->onEnter(Lcom/oneplus/camera/scene/Scene;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    return v0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/HdrScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_ACCELEROMETER_VALUES:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/scene/HdrScene;->m_AccelerometerValuesChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 99
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/scene/HdrScene;->setCaptureDelayTime(J)V

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method protected onExit(Lcom/oneplus/camera/scene/Scene;I)V
    .locals 4
    .param p1, "nextScene"    # Lcom/oneplus/camera/scene/Scene;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/oneplus/camera/scene/HdrScene;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_ACCELEROMETER_VALUES:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/scene/HdrScene;->m_AccelerometerValuesChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 114
    iget-object v0, p0, Lcom/oneplus/camera/scene/HdrScene;->m_AccelerometerValues:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 115
    iget-object v0, p0, Lcom/oneplus/camera/scene/HdrScene;->m_AccelerometerValues:[F

    const/4 v1, 0x1

    aput v3, v0, v1

    .line 116
    iget-object v0, p0, Lcom/oneplus/camera/scene/HdrScene;->m_AccelerometerValues:[F

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 119
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/scene/PhotoScene;->onExit(Lcom/oneplus/camera/scene/Scene;I)V

    .line 108
    return-void
.end method
