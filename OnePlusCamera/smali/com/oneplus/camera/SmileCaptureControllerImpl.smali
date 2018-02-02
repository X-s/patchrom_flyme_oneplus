.class final Lcom/oneplus/camera/SmileCaptureControllerImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "SmileCaptureControllerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/SmileCaptureController;


# static fields
.field private static final synthetic -com-oneplus-base-BaseActivity$StateSwitchesValues:[I = null

.field private static final COOL_DOWN_TIME_AFTER_TAKING_SMILE_CAPTURE:I = 0x1f4

.field private static final DELAY_FOR_TAKING_SMILE_CAPTURE:I = 0xc8

.field private static final MSG_END_COOL_DOWN:I = 0x2711


# instance fields
.field private m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

.field private m_FaceTracker:Lcom/oneplus/camera/FaceTracker;

.field private m_FirstSmileCallbackTimeStamp:J

.field private m_FocusController:Lcom/oneplus/camera/FocusController;

.field private m_IsCoolingDown:Z

.field private m_IsSmileCapturing:Z

.field private m_PhotoCaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field private m_Settings:Lcom/oneplus/base/Settings;


# direct methods
.method private static synthetic -getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseActivity$State;->values()[Lcom/oneplus/base/BaseActivity$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->CREATING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW_INTENT:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STARTING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STOPPED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    sput-object v0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1

    :catch_a
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/SmileCaptureControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_IsSmileCapturing:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/SmileCaptureControllerImpl;Lcom/oneplus/base/BaseActivity$State;)V
    .locals 0
    .param p1, "state"    # Lcom/oneplus/base/BaseActivity$State;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->onActivityStateChanged(Lcom/oneplus/base/BaseActivity$State;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/SmileCaptureControllerImpl;Ljava/util/List;)V
    .locals 0
    .param p1, "faces"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->onFacesChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/SmileCaptureControllerImpl;Lcom/oneplus/camera/FocusState;)V
    .locals 0
    .param p1, "state"    # Lcom/oneplus/camera/FocusState;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->onFocusStateChanged(Lcom/oneplus/camera/FocusState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string/jumbo v0, "SmileCapture"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 46
    const-string/jumbo v0, "Smile capture controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_FirstSmileCallbackTimeStamp:J

    .line 44
    return-void
.end method

.method private getCameraSettings()Lcom/oneplus/base/Settings;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v0, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_Settings:Lcom/oneplus/base/Settings;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/oneplus/base/Settings;

    invoke-virtual {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/oneplus/base/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_Settings:Lcom/oneplus/base/Settings;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_Settings:Lcom/oneplus/base/Settings;

    return-object v0
.end method

.method private getIsSmileCaptureEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 65
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 67
    iget-object v2, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getIsSmileCaptureEnabled() - camera is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return v1

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getCameraSettings()Lcom/oneplus/base/Settings;

    move-result-object v2

    const-string/jumbo v3, "SmileCapture"

    invoke-virtual {v2, v3}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private onActivityStateChanged(Lcom/oneplus/base/BaseActivity$State;)V
    .locals 2
    .param p1, "state"    # Lcom/oneplus/base/BaseActivity$State;

    .prologue
    .line 179
    invoke-static {}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->-getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 177
    :pswitch_0
    return-void

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onFacesChanged(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$Face;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "faces":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;"
    invoke-direct {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getIsSmileCaptureEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    return-void

    .line 192
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onFacesChanged() - faces is empty"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->resetFirstCallbackTime()V

    .line 196
    return-void

    .line 200
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 202
    iget-object v3, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onFacesChanged() - selftimer is runnning"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-direct {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->resetFirstCallbackTime()V

    .line 204
    return-void

    .line 208
    :cond_3
    iget-boolean v3, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_IsCoolingDown:Z

    if-eqz v3, :cond_4

    .line 210
    iget-object v3, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onFacesChanged() - is cooling down"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-direct {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->resetFirstCallbackTime()V

    .line 212
    return-void

    .line 216
    :cond_4
    const/4 v2, 0x0

    .line 217
    .local v2, "smilingCount":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "face$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$Face;

    .line 219
    .local v0, "face":Lcom/oneplus/camera/Camera$Face;
    invoke-virtual {v0}, Lcom/oneplus/camera/Camera$Face;->isSmiling()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    .end local v0    # "face":Lcom/oneplus/camera/Camera$Face;
    :cond_6
    iget-object v3, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onFacesChanged() - smilingCount : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", faces.size() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-lez v2, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_9

    .line 227
    iget-wide v6, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_FirstSmileCallbackTimeStamp:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_8

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_FirstSmileCallbackTimeStamp:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 230
    .local v4, "timeDiff":J
    iget-object v3, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onFacesChanged() - timeDiff : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-wide/16 v6, 0xc8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_7

    .line 233
    invoke-direct {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->triggerSmileCapture()V

    .line 187
    .end local v4    # "timeDiff":J
    :goto_1
    return-void

    .line 237
    .restart local v4    # "timeDiff":J
    :cond_7
    iget-object v3, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onFacesChanged() - waiting for smile capture"

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 242
    .end local v4    # "timeDiff":J
    :cond_8
    iget-object v3, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onFacesChanged() - get first smile callback"

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_FirstSmileCallbackTimeStamp:J

    goto :goto_1

    .line 248
    :cond_9
    iget-object v3, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onFacesChanged() - not enough smile"

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->resetFirstCallbackTime()V

    goto :goto_1
.end method

.method private onFocusStateChanged(Lcom/oneplus/camera/FocusState;)V
    .locals 1
    .param p1, "state"    # Lcom/oneplus/camera/FocusState;

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getIsSmileCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    return-void

    .line 259
    :cond_0
    sget-object v0, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    if-ne p1, v0, :cond_1

    .line 260
    invoke-direct {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->resetFirstCallbackTime()V

    .line 254
    :cond_1
    return-void
.end method

.method private resetFirstCallbackTime()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetFirstCallbackTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_FirstSmileCallbackTimeStamp:J

    .line 264
    return-void
.end method

.method private triggerSmileCapture()V
    .locals 8

    .prologue
    .line 289
    iget-object v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "triggerSmileCapture() - start"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 293
    .local v0, "isReadyToCapture":Z
    if-nez v0, :cond_0

    .line 295
    iget-object v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "triggerSmileCapture() - isReadyToCapture is false"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->resetFirstCallbackTime()V

    .line 303
    invoke-virtual {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "triggerSmileCapture() - Capture UI is disabled"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void

    .line 310
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_IsSmileCapturing:Z

    .line 313
    invoke-virtual {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 314
    .local v2, "oldSelftimerSetting":J
    invoke-virtual {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/oneplus/camera/CameraActivity;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 317
    iget-object v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    if-eqz v1, :cond_2

    .line 318
    iget-object v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    sget-object v4, Lcom/oneplus/camera/ui/CaptureButtons$Button;->PRIMARY:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/oneplus/camera/ui/CaptureButtons;->performButtonClick(Lcom/oneplus/camera/ui/CaptureButtons$Button;I)V

    .line 327
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_SELF_TIMER_INTERVAL:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/oneplus/camera/CameraActivity;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 333
    iget-object v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "triggerSmileCapture() - end"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method


# virtual methods
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
    .line 54
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->PROP_IS_SMILE_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getIsSmileCaptureEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 56
    :cond_0
    sget-object v0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->PROP_IS_SMILE_CAPTURING:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 57
    iget-boolean v0, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_IsSmileCapturing:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 58
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 91
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->handleMessage(Landroid/os/Message;)V

    .line 83
    :goto_0
    return-void

    .line 88
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_IsCoolingDown:Z

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected onDeinitialize()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onDeinitialize()V

    .line 167
    invoke-direct {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->resetFirstCallbackTime()V

    .line 170
    iget-object v0, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_Settings:Lcom/oneplus/base/Settings;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_Settings:Lcom/oneplus/base/Settings;

    invoke-virtual {v0}, Lcom/oneplus/base/Settings;->release()V

    .line 163
    :cond_0
    return-void
.end method

.method protected onInitialize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 104
    const-class v1, Lcom/oneplus/camera/ui/CaptureButtons;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CaptureButtons;

    iput-object v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_CaptureButtons:Lcom/oneplus/camera/ui/CaptureButtons;

    .line 105
    const-class v1, Lcom/oneplus/camera/FaceTracker;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/FaceTracker;

    iput-object v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_FaceTracker:Lcom/oneplus/camera/FaceTracker;

    .line 106
    const-class v1, Lcom/oneplus/camera/FocusController;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/FocusController;

    iput-object v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    .line 109
    iget-object v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_Settings:Lcom/oneplus/base/Settings;

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Lcom/oneplus/base/Settings;

    invoke-virtual {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/oneplus/base/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_Settings:Lcom/oneplus/base/Settings;

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 114
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/SmileCaptureControllerImpl$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl$1;-><init>(Lcom/oneplus/camera/SmileCaptureControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 129
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/SmileCaptureControllerImpl$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl$2;-><init>(Lcom/oneplus/camera/SmileCaptureControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 137
    iget-object v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_FaceTracker:Lcom/oneplus/camera/FaceTracker;

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_FaceTracker:Lcom/oneplus/camera/FaceTracker;

    sget-object v2, Lcom/oneplus/camera/FaceTracker;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/SmileCaptureControllerImpl$3;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl$3;-><init>(Lcom/oneplus/camera/SmileCaptureControllerImpl;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/FaceTracker;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/oneplus/camera/SmileCaptureControllerImpl;->m_FocusController:Lcom/oneplus/camera/FocusController;

    sget-object v2, Lcom/oneplus/camera/FocusController;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/SmileCaptureControllerImpl$4;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl$4;-><init>(Lcom/oneplus/camera/SmileCaptureControllerImpl;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/FocusController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 98
    :cond_2
    return-void
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 3
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
    .line 274
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v1, Lcom/oneplus/camera/SmileCaptureControllerImpl;->PROP_IS_SMILE_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v1, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getIsSmileCaptureEnabled()Z

    move-result v0

    .line 279
    .local v0, "oldValue":Z
    invoke-direct {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getCameraSettings()Lcom/oneplus/base/Settings;

    move-result-object v1

    const-string/jumbo v2, "SmileCapture"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {v1, v2, p2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->getIsSmileCaptureEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/oneplus/camera/SmileCaptureControllerImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 283
    .end local v0    # "oldValue":Z
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/CameraComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
