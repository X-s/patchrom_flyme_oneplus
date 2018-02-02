.class final Lcom/oneplus/camera/ui/SmileCaptureUI;
.super Lcom/oneplus/camera/UIComponent;
.source "SmileCaptureUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/SmileCaptureUI$1;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-BaseActivity$StateSwitchesValues:[I = null

.field private static final DELAY_TIME_TO_HIDE_TOAST:I = 0x3e8

.field private static final MSG_HIDE_TOAST:I = 0x2711


# instance fields
.field private m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

.field private m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

.field private m_OnToastClickListener:Landroid/view/View$OnClickListener;

.field private m_SmileCaptureController:Lcom/oneplus/camera/SmileCaptureController;

.field private m_SmileCaptureToastHandle:Lcom/oneplus/base/Handle;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/SmileCaptureUI;)Lcom/oneplus/camera/SmileCaptureController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/SmileCaptureUI;->m_SmileCaptureController:Lcom/oneplus/camera/SmileCaptureController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/SmileCaptureUI;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/SmileCaptureUI;->m_SmileCaptureToastHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/SmileCaptureUI;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/SmileCaptureUI;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

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
    sput-object v0, Lcom/oneplus/camera/ui/SmileCaptureUI;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

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

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/SmileCaptureUI;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/camera/ui/SmileCaptureUI;->isSmileCaptureEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/SmileCaptureUI;Lcom/oneplus/base/BaseActivity$State;)V
    .locals 0
    .param p1, "state"    # Lcom/oneplus/base/BaseActivity$State;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/SmileCaptureUI;->onActivityStateChanged(Lcom/oneplus/base/BaseActivity$State;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/SmileCaptureUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/SmileCaptureUI;->updateToastContent()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/SmileCaptureUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/SmileCaptureUI;->updateToastVisibility()V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 51
    const-string/jumbo v0, "SmileCapture UI"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 35
    new-instance v0, Lcom/oneplus/camera/ui/SmileCaptureUI$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/SmileCaptureUI$1;-><init>(Lcom/oneplus/camera/ui/SmileCaptureUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/SmileCaptureUI;->m_OnToastClickListener:Landroid/view/View$OnClickListener;

    .line 49
    return-void
.end method

.method private getSmileToastString(Z)Ljava/lang/String;
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/SmileCaptureUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    if-eqz p1, :cond_0

    const v0, 0x7f0d00cb

    :goto_0
    invoke-virtual {v1, v0}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0d00cc

    goto :goto_0
.end method

.method private isSmileCaptureEnabled()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 76
    iget-object v2, p0, Lcom/oneplus/camera/ui/SmileCaptureUI;->m_SmileCaptureController:Lcom/oneplus/camera/SmileCaptureController;

    if-eqz v2, :cond_3

    .line 78
    const/4 v0, 0x1

    .line 79
    .local v0, "isPhoto":Z
    iget-object v2, p0, Lcom/oneplus/camera/ui/SmileCaptureUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/oneplus/camera/ui/SmileCaptureUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v4, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 82
    .local v1, "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    instance-of v2, v1, Lcom/oneplus/camera/manual/ManualCaptureMode;

    if-nez v2, :cond_1

    instance-of v0, v1, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    .line 84
    .end local v0    # "isPhoto":Z
    .end local v1    # "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/SmileCaptureUI;->m_SmileCaptureController:Lcom/oneplus/camera/SmileCaptureController;

    sget-object v4, Lcom/oneplus/camera/SmileCaptureController;->PROP_IS_SMILE_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/oneplus/camera/SmileCaptureController;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    return v0

    .line 82
    .restart local v0    # "isPhoto":Z
    .restart local v1    # "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .end local v0    # "isPhoto":Z
    .end local v1    # "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_2
    move v0, v3

    .line 84
    goto :goto_1

    .line 87
    :cond_3
    return v3
.end method

.method private onActivityStateChanged(Lcom/oneplus/base/BaseActivity$State;)V
    .locals 2
    .param p1, "state"    # Lcom/oneplus/base/BaseActivity$State;

    .prologue
    .line 130
    invoke-static {}, Lcom/oneplus/camera/ui/SmileCaptureUI;->-getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 133
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/SmileCaptureUI;->updateToastVisibility()V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private showSmileCaptureToast()V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/oneplus/camera/ui/SmileCaptureUI;->m_SmileCaptureToastHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/oneplus/camera/ui/SmileCaptureUI;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    invoke-direct {p0}, Lcom/oneplus/camera/ui/SmileCaptureUI;->isSmileCaptureEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/SmileCaptureUI;->getSmileToastString(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/SmileCaptureUI;->m_OnToastClickListener:Landroid/view/View$OnClickListener;

    const/16 v3, 0x14

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/camera/ui/OnScreenHint;->showHint(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/SmileCaptureUI;->m_SmileCaptureToastHandle:Lcom/oneplus/base/Handle;

    .line 138
    :cond_0
    return-void
.end method

.method private updateToastContent()V
    .locals 5

    .prologue
    const/16 v4, 0x2711

    .line 156
    iget-object v0, p0, Lcom/oneplus/camera/ui/SmileCaptureUI;->m_SmileCaptureToastHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/oneplus/camera/ui/SmileCaptureUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateToastContent() -  updateToastContent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/oneplus/camera/ui/SmileCaptureUI;->isSmileCaptureEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {p0, v4}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 164
    iget-object v0, p0, Lcom/oneplus/camera/ui/SmileCaptureUI;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    iget-object v1, p0, Lcom/oneplus/camera/ui/SmileCaptureUI;->m_SmileCaptureToastHandle:Lcom/oneplus/base/Handle;

    invoke-direct {p0}, Lcom/oneplus/camera/ui/SmileCaptureUI;->isSmileCaptureEnabled()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/SmileCaptureUI;->getSmileToastString(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/camera/ui/OnScreenHint;->updateHint(Lcom/oneplus/base/Handle;Ljava/lang/CharSequence;I)Z

    .line 167
    invoke-direct {p0}, Lcom/oneplus/camera/ui/SmileCaptureUI;->isSmileCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    const-wide/16 v0, 0x3e8

    invoke-static {p0, v4, v0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    .line 154
    :cond_0
    return-void
.end method

.method private updateToastVisibility()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/oneplus/camera/ui/SmileCaptureUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateToastVisibility() -  isSmileCaptureEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/oneplus/camera/ui/SmileCaptureUI;->isSmileCaptureEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/oneplus/camera/ui/SmileCaptureUI;->isSmileCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/oneplus/camera/ui/SmileCaptureUI;->showSmileCaptureToast()V

    .line 144
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/SmileCaptureUI;->m_SmileCaptureToastHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 69
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 61
    :goto_0
    return-void

    .line 66
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/SmileCaptureUI;->updateToastVisibility()V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 98
    const-class v1, Lcom/oneplus/camera/SmileCaptureController;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/SmileCaptureUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/SmileCaptureController;

    iput-object v1, p0, Lcom/oneplus/camera/ui/SmileCaptureUI;->m_SmileCaptureController:Lcom/oneplus/camera/SmileCaptureController;

    .line 99
    const-class v1, Lcom/oneplus/camera/ui/OnScreenHint;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/SmileCaptureUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/OnScreenHint;

    iput-object v1, p0, Lcom/oneplus/camera/ui/SmileCaptureUI;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    .line 100
    const-class v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/SmileCaptureUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v1, p0, Lcom/oneplus/camera/ui/SmileCaptureUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 103
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/SmileCaptureUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 104
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/SmileCaptureUI$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/SmileCaptureUI$2;-><init>(Lcom/oneplus/camera/ui/SmileCaptureUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 112
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/SmileCaptureUI$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/SmileCaptureUI$3;-><init>(Lcom/oneplus/camera/ui/SmileCaptureUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 122
    invoke-direct {p0}, Lcom/oneplus/camera/ui/SmileCaptureUI;->updateToastVisibility()V

    .line 92
    return-void
.end method
