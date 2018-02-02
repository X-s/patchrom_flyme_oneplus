.class final Lcom/oneplus/camera/manual/ManualModeController;
.super Lcom/oneplus/camera/ModeController;
.source "ManualModeController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/camera/ModeController",
        "<",
        "Lcom/oneplus/camera/manual/ManualModeUI;",
        ">;"
    }
.end annotation


# static fields
.field private static final FLAG_NOT_BACKUP_VALUE:I = 0x1

.field static final MSG_SET_AWB:I = 0x7559

.field static final MSG_SET_EXPOSURE:I = 0x755a

.field static final MSG_SET_FOCUS:I = 0x755b

.field static final MSG_SET_ISO:I = 0x755c


# instance fields
.field private m_AwbMode:I

.field private m_Exposure:J

.field private m_Focus:F

.field private m_ISO:I


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraThread;)V
    .locals 2
    .param p1, "cameraThread"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    .line 37
    const-string/jumbo v0, "Manual Mode Controller"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/ModeController;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;)V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/camera/manual/ManualModeController;->m_AwbMode:I

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneplus/camera/manual/ManualModeController;->m_Exposure:J

    .line 30
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/oneplus/camera/manual/ManualModeController;->m_Focus:F

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/camera/manual/ManualModeController;->m_ISO:I

    .line 35
    return-void
.end method

.method private applyAutoValues()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 44
    invoke-direct {p0, v2, v2}, Lcom/oneplus/camera/manual/ManualModeController;->setAwb(II)V

    .line 45
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeController;->setExposure(JI)V

    .line 46
    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, v0, v2}, Lcom/oneplus/camera/manual/ManualModeController;->setFocus(FI)V

    .line 47
    const/4 v0, -0x1

    invoke-direct {p0, v0, v2}, Lcom/oneplus/camera/manual/ManualModeController;->setISO(II)V

    .line 42
    return-void
.end method

.method private applyLastValues()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 54
    iget v0, p0, Lcom/oneplus/camera/manual/ManualModeController;->m_AwbMode:I

    invoke-direct {p0, v0, v2}, Lcom/oneplus/camera/manual/ManualModeController;->setAwb(II)V

    .line 55
    iget-wide v0, p0, Lcom/oneplus/camera/manual/ManualModeController;->m_Exposure:J

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeController;->setExposure(JI)V

    .line 56
    iget v0, p0, Lcom/oneplus/camera/manual/ManualModeController;->m_Focus:F

    invoke-direct {p0, v0, v2}, Lcom/oneplus/camera/manual/ManualModeController;->setFocus(FI)V

    .line 57
    iget v0, p0, Lcom/oneplus/camera/manual/ManualModeController;->m_ISO:I

    invoke-direct {p0, v0, v2}, Lcom/oneplus/camera/manual/ManualModeController;->setISO(II)V

    .line 52
    return-void
.end method

.method private disableManualCapture(Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "disableManualCapture() - No camera"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void

    .line 71
    :cond_0
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method private enableManualCapture(Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "enableManualCapture() - No camera"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void

    .line 85
    :cond_0
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_MANUAL_CAPTURE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method private setAwb(II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "flags"    # I

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeController;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 221
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 223
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAwb() - Cannot get camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void

    .line 228
    :cond_0
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_1

    .line 229
    iput p1, p0, Lcom/oneplus/camera/manual/ManualModeController;->m_AwbMode:I

    .line 230
    :cond_1
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method private setExposure(JI)V
    .locals 3
    .param p1, "value"    # J
    .param p3, "flags"    # I

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeController;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 239
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 241
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setExposure() - Cannot get camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void

    .line 246
    :cond_0
    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_1

    .line 247
    iput-wide p1, p0, Lcom/oneplus/camera/manual/ManualModeController;->m_Exposure:J

    .line 249
    :cond_1
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 235
    return-void
.end method

.method private setFocus(FI)V
    .locals 3
    .param p1, "value"    # F
    .param p2, "flags"    # I

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeController;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 258
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 260
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFocus() - Cannot get camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void

    .line 265
    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_2

    .line 266
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/FocusMode;->MANUAL:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 271
    :goto_0
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_1

    .line 272
    iput p1, p0, Lcom/oneplus/camera/manual/ManualModeController;->m_Focus:F

    .line 273
    :cond_1
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_FOCUS:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 254
    return-void

    .line 268
    :cond_2
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setISO(II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "flags"    # I

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeController;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 282
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 284
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setISO() - Cannot get camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void

    .line 289
    :cond_0
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_1

    .line 290
    iput p1, p0, Lcom/oneplus/camera/manual/ManualModeController;->m_ISO:I

    .line 291
    :cond_1
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 278
    return-void
.end method


# virtual methods
.method public getAwb()I
    .locals 3

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeController;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 93
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getAwb() - Cannot get camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v1, -0x1

    return v1

    .line 98
    :cond_0
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getExposure()J
    .locals 4

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeController;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 106
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getExposure() - Cannot get camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-wide/16 v2, -0x1

    return-wide v2

    .line 111
    :cond_0
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public getFocus()F
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeController;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 119
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 121
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getFocus() - Cannot get camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/high16 v1, -0x40800000    # -1.0f

    return v1

    .line 124
    :cond_0
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_FOCUS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method public getIso()I
    .locals 3

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeController;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 132
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getIso() - Cannot get camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v1, -0x1

    return v1

    .line 137
    :cond_0
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 163
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeController;->handleMessage(Landroid/os/Message;)V

    .line 142
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v2}, Lcom/oneplus/camera/manual/ManualModeController;->setAwb(II)V

    goto :goto_0

    .line 151
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeController;->setExposure(JI)V

    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/oneplus/camera/manual/ManualModeController;->setFocus(FI)V

    goto :goto_0

    .line 159
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v2}, Lcom/oneplus/camera/manual/ManualModeController;->setISO(II)V

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x7559
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 1
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "newCamera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 174
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/ModeController;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V

    .line 177
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeController;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/ManualModeController;->disableManualCapture(Lcom/oneplus/camera/Camera;)V

    .line 180
    invoke-direct {p0, p2}, Lcom/oneplus/camera/manual/ManualModeController;->enableManualCapture(Lcom/oneplus/camera/Camera;)V

    .line 171
    :cond_0
    return-void
.end method

.method protected onEnter(I)Z
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeController;->onEnter(I)Z

    .line 193
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeController;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeController;->enableManualCapture(Lcom/oneplus/camera/Camera;)V

    .line 196
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeController;->applyLastValues()V

    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method protected onExit(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeController;->applyAutoValues()V

    .line 210
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeController;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/manual/ManualModeController;->disableManualCapture(Lcom/oneplus/camera/Camera;)V

    .line 212
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeController;->onExit(I)V

    .line 204
    return-void
.end method
