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
    .line 31
    const-string v0, "Manual Mode Controller"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/ModeController;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;)V

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/camera/manual/ManualModeController;->m_AwbMode:I

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneplus/camera/manual/ManualModeController;->m_Exposure:J

    .line 24
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/oneplus/camera/manual/ManualModeController;->m_Focus:F

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/camera/manual/ManualModeController;->m_ISO:I

    .line 32
    return-void
.end method

.method private applyAutoValues()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 38
    invoke-direct {p0, v2, v2}, Lcom/oneplus/camera/manual/ManualModeController;->setAwb(II)V

    .line 39
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeController;->setExposure(JI)V

    .line 40
    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, v0, v2}, Lcom/oneplus/camera/manual/ManualModeController;->setFocus(FI)V

    .line 41
    const/4 v0, -0x1

    invoke-direct {p0, v0, v2}, Lcom/oneplus/camera/manual/ManualModeController;->setISO(II)V

    .line 42
    return-void
.end method

.method private applyLastValues()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 48
    iget v0, p0, Lcom/oneplus/camera/manual/ManualModeController;->m_AwbMode:I

    invoke-direct {p0, v0, v2}, Lcom/oneplus/camera/manual/ManualModeController;->setAwb(II)V

    .line 49
    iget-wide v0, p0, Lcom/oneplus/camera/manual/ManualModeController;->m_Exposure:J

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeController;->setExposure(JI)V

    .line 50
    iget v0, p0, Lcom/oneplus/camera/manual/ManualModeController;->m_Focus:F

    invoke-direct {p0, v0, v2}, Lcom/oneplus/camera/manual/ManualModeController;->setFocus(FI)V

    .line 51
    iget v0, p0, Lcom/oneplus/camera/manual/ManualModeController;->m_ISO:I

    invoke-direct {p0, v0, v2}, Lcom/oneplus/camera/manual/ManualModeController;->setISO(II)V

    .line 52
    return-void
.end method

.method private setAwb(II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "flags"    # I

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeController;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 124
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeController;->TAG:Ljava/lang/String;

    const-string v2, "setAwb() - Cannot get camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_1

    .line 132
    iput p1, p0, Lcom/oneplus/camera/manual/ManualModeController;->m_AwbMode:I

    .line 133
    :cond_1
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_AWB_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setExposure(JI)V
    .locals 3
    .param p1, "value"    # J
    .param p3, "flags"    # I

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeController;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 142
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeController;->TAG:Ljava/lang/String;

    const-string v2, "setExposure() - Cannot get camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_0
    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_1

    .line 150
    iput-wide p1, p0, Lcom/oneplus/camera/manual/ManualModeController;->m_Exposure:J

    .line 151
    :cond_1
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_EXPOSURE_TIME_NANOS:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setFocus(FI)V
    .locals 3
    .param p1, "value"    # F
    .param p2, "flags"    # I

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeController;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 160
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 162
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeController;->TAG:Ljava/lang/String;

    const-string v2, "setFocus() - Cannot get camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void

    .line 167
    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_2

    .line 168
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/FocusMode;->MANUAL:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 173
    :goto_1
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_1

    .line 174
    iput p1, p0, Lcom/oneplus/camera/manual/ManualModeController;->m_Focus:F

    .line 175
    :cond_1
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_FOCUS_DISTANCE:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_2
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private setISO(II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "flags"    # I

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/oneplus/camera/manual/ManualModeController;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 184
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 186
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualModeController;->TAG:Ljava/lang/String;

    const-string v2, "setISO() - Cannot get camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_0
    return-void

    .line 191
    :cond_0
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_1

    .line 192
    iput p1, p0, Lcom/oneplus/camera/manual/ManualModeController;->m_ISO:I

    .line 193
    :cond_1
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 113
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeController;->handleMessage(Landroid/os/Message;)V

    .line 116
    :goto_0
    return-void

    .line 97
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v2}, Lcom/oneplus/camera/manual/ManualModeController;->setAwb(II)V

    goto :goto_0

    .line 101
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/manual/ManualModeController;->setExposure(JI)V

    goto :goto_0

    .line 105
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/oneplus/camera/manual/ManualModeController;->setFocus(FI)V

    goto :goto_0

    .line 109
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v2}, Lcom/oneplus/camera/manual/ManualModeController;->setISO(II)V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x7559
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onEnter(I)Z
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeController;->onEnter(I)Z

    .line 63
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeController;->applyLastValues()V

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method protected onExit(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/oneplus/camera/manual/ManualModeController;->applyAutoValues()V

    .line 76
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeController;->onExit(I)V

    .line 77
    return-void
.end method

.method protected onInitialize()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Lcom/oneplus/camera/ModeController;->onInitialize()V

    .line 87
    return-void
.end method
