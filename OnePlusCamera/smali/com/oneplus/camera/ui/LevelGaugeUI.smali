.class public Lcom/oneplus/camera/ui/LevelGaugeUI;
.super Lcom/oneplus/camera/UIComponent;
.source "LevelGaugeUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/LevelGaugeUI$1;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x1eL

.field private static final COLOR_HORIZON:I

.field private static final MSG_UPDATE_ROTATION:I = 0x2710

.field public static final PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final SETTINGS_KEY_REFERENCE_LINE:Ljava/lang/String; = "HorizontalReferenceLine"

.field private static final TOLERANCE:I = 0x1

.field private static final TOLERANCE_LEAVING:I = 0x2


# instance fields
.field private m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

.field private m_IsAnimating:Z

.field private m_IsHorizontal:Z

.field private m_LevelGaugeBar:Landroid/view/View;

.field private m_LevelGaugeContainer:Landroid/widget/RelativeLayout;

.field private m_Orientation:I

.field private m_OrientationCallback:Lcom/oneplus/base/OrientationManager$Callback;

.field private m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

.field private m_OrientationManagerHandle:Lcom/oneplus/base/Handle;


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/camera/ui/LevelGaugeUI;I)V
    .locals 0
    .param p1, "newOrientation"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/LevelGaugeUI;->onOrientationChanged(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/LevelGaugeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/LevelGaugeUI;->updateVisibility()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 31
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsLevelGaugeUIVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/ui/LevelGaugeUI;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/LevelGaugeUI;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    .line 43
    const/16 v0, 0xff

    const/16 v1, 0x68

    const/16 v2, 0xb8

    const/16 v3, 0x40

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/oneplus/camera/ui/LevelGaugeUI;->COLOR_HORIZON:I

    .line 71
    const-string/jumbo v0, "HorizontalReferenceLine"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 76
    const-string/jumbo v0, "Level Gauge UI"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 56
    new-instance v0, Lcom/oneplus/camera/ui/LevelGaugeUI$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/LevelGaugeUI$1;-><init>(Lcom/oneplus/camera/ui/LevelGaugeUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_OrientationCallback:Lcom/oneplus/base/OrientationManager$Callback;

    .line 74
    return-void
.end method

.method private onOrientationChanged(I)V
    .locals 4
    .param p1, "newOrientation"    # I

    .prologue
    .line 212
    if-gez p1, :cond_0

    .line 213
    return-void

    .line 214
    :cond_0
    iput p1, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_Orientation:I

    .line 215
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_IsAnimating:Z

    if-nez v0, :cond_1

    .line 216
    const/16 v0, 0x2710

    const-wide/16 v2, 0x1e

    invoke-static {p0, v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_IsAnimating:Z

    .line 210
    :cond_1
    return-void
.end method

.method private updateVisibility()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 222
    sget-object v1, Lcom/oneplus/camera/ui/LevelGaugeUI;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/LevelGaugeUI;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v2

    const-string/jumbo v3, "HorizontalReferenceLine"

    invoke-virtual {v2, v3}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/LevelGaugeUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 224
    iget-object v1, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v1, :cond_0

    .line 225
    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/LevelGaugeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/PhotoCaptureState;

    .line 228
    .local v9, "photoCaptureState":Lcom/oneplus/camera/PhotoCaptureState;
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v9, v1, :cond_3

    const/4 v7, 0x1

    .line 230
    .local v7, "isReadyToCapture":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 231
    .local v8, "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    instance-of v1, v8, Lcom/oneplus/camera/manual/ManualCaptureMode;

    if-eqz v1, :cond_1

    if-eqz v7, :cond_1

    .line 233
    sget-object v1, Lcom/oneplus/camera/ui/LevelGaugeUI;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/LevelGaugeUI;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 231
    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/LevelGaugeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SIMPLE_UI_MODE_ENTERED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_OrientationManagerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 244
    iget-object v1, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "animation":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/LevelGaugeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SIMPLE_UI_MODE_ENTERED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    const/4 v0, 0x1

    .line 248
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_LevelGaugeContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    const-wide/16 v4, 0x12c

    :goto_1
    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/LevelGaugeUI;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 220
    .end local v0    # "animation":Z
    :goto_2
    return-void

    .line 228
    .end local v7    # "isReadyToCapture":Z
    .end local v8    # "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "isReadyToCapture":Z
    goto :goto_0

    .line 237
    .restart local v8    # "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/LevelGaugeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/OrientationManager;->startOrientationSensor(Landroid/content/Context;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_OrientationManagerHandle:Lcom/oneplus/base/Handle;

    .line 238
    iget-object v1, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_OrientationCallback:Lcom/oneplus/base/OrientationManager$Callback;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/LevelGaugeUI;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/OrientationManager;->setCallback(Lcom/oneplus/base/OrientationManager$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    .line 239
    iget-object v1, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_LevelGaugeContainer:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/LevelGaugeUI;->setViewVisibility(Landroid/view/View;Z)V

    goto :goto_2

    .line 248
    .restart local v0    # "animation":Z
    :cond_5
    const-wide/16 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0xb4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 84
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 137
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iput-boolean v6, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_IsAnimating:Z

    .line 89
    iget-object v4, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_LevelGaugeBar:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/LevelGaugeUI;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v0

    .line 92
    .local v0, "deviceOri":I
    iget-object v4, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_LevelGaugeBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRotation()F

    move-result v4

    float-to-int v2, v4

    .line 94
    .local v2, "fromDegrees":I
    iget v4, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_Orientation:I

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 95
    .local v1, "diffBetweenDeviceAndNewOri":I
    if-le v1, v8, :cond_1

    .line 96
    rsub-int v1, v1, 0x168

    .line 98
    :cond_1
    if-gez v2, :cond_2

    .line 99
    add-int/lit16 v2, v2, 0x168

    .line 101
    :cond_2
    if-le v1, v7, :cond_3

    iget-boolean v4, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_IsHorizontal:Z

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    if-gt v1, v4, :cond_5

    .line 103
    :cond_3
    iput v0, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_Orientation:I

    .line 104
    iget-object v4, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_LevelGaugeBar:Landroid/view/View;

    sget v5, Lcom/oneplus/camera/ui/LevelGaugeUI;->COLOR_HORIZON:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 105
    iput-boolean v7, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_IsHorizontal:Z

    .line 112
    :goto_1
    iget v4, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_Orientation:I

    neg-int v4, v4

    add-int/lit16 v3, v4, 0x168

    .line 114
    .local v3, "toDegrees":I
    if-eq v2, v3, :cond_4

    sub-int v4, v3, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v8, :cond_4

    .line 116
    if-le v3, v2, :cond_6

    .line 118
    add-int/lit16 v3, v3, -0x168

    .line 126
    :cond_4
    :goto_2
    sub-int v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v7, :cond_7

    .line 127
    iget-object v4, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_LevelGaugeBar:Landroid/view/View;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 109
    .end local v3    # "toDegrees":I
    :cond_5
    iget-object v4, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_LevelGaugeBar:Landroid/view/View;

    const v5, 0x7f080070

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 110
    iput-boolean v6, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_IsHorizontal:Z

    goto :goto_1

    .line 122
    .restart local v3    # "toDegrees":I
    :cond_6
    add-int/lit16 v2, v2, -0x168

    goto :goto_2

    .line 130
    :cond_7
    iget-object v4, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_LevelGaugeBar:Landroid/view/View;

    add-int v5, v2, v3

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setRotation(F)V

    .line 131
    const/16 v4, 0x2710

    const-wide/16 v6, 0x1e

    invoke-static {p0, v4, v6, v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_IsAnimating:Z

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method protected onDeinitialize()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onDeinitialize()V

    .line 148
    iget-object v0, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_OrientationManagerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 149
    iget-object v0, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 144
    return-void
.end method

.method protected onInitialize()V
    .locals 4

    .prologue
    .line 155
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 157
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/LevelGaugeUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 159
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const-class v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/LevelGaugeUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v1, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 160
    iget-object v1, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/LevelGaugeUI$2;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/LevelGaugeUI$2;-><init>(Lcom/oneplus/camera/ui/LevelGaugeUI;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 174
    :cond_0
    const v1, 0x7f0a00c3

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_LevelGaugeContainer:Landroid/widget/RelativeLayout;

    .line 175
    iget-object v1, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_LevelGaugeContainer:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a00c5

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/LevelGaugeUI;->m_LevelGaugeBar:Landroid/view/View;

    .line 178
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/LevelGaugeUI$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/LevelGaugeUI$3;-><init>(Lcom/oneplus/camera/ui/LevelGaugeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 187
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/LevelGaugeUI$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/LevelGaugeUI$4;-><init>(Lcom/oneplus/camera/ui/LevelGaugeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 195
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SIMPLE_UI_MODE_ENTERED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/LevelGaugeUI$5;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/LevelGaugeUI$5;-><init>(Lcom/oneplus/camera/ui/LevelGaugeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 205
    invoke-direct {p0}, Lcom/oneplus/camera/ui/LevelGaugeUI;->updateVisibility()V

    .line 153
    return-void
.end method
