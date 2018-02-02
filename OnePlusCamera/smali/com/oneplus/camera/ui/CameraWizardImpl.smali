.class final Lcom/oneplus/camera/ui/CameraWizardImpl;
.super Lcom/oneplus/camera/UIComponent;
.source "CameraWizardImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-RotationSwitchesValues:[I = null

.field private static final DURATION_ANIMATION:J = 0xc8L

.field private static final SETTINGS_KEY_IS_WIZARD_SIMPLE_MODES_SWITCH:Ljava/lang/String; = "Wizard.SimpleModesSwitch"

.field private static final SETTINGS_KEY_IS_WIZARD_SMILE_CAPTURE:Ljava/lang/String; = "Wizard.SmileCapture"

.field protected static final SETTINGS_KEY_WIZARD_LIST:[Ljava/lang/String;


# instance fields
.field private m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

.field private m_CameraWizardContainer:Landroid/view/View;

.field private m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

.field private m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

.field private m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

.field private m_Settings:Lcom/oneplus/base/Settings;

.field private m_SimpleModesSwitch:Landroid/view/View;

.field private m_SmileCaptureUiDisableHandle:Lcom/oneplus/base/Handle;

.field private m_SmileCaptureView:Landroid/view/View;

.field private m_TouchReceiver:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/CameraWizardImpl;)Lcom/oneplus/camera/CameraActivity;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/CameraWizardImpl;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraWizardContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/ui/CameraWizardImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/ui/CameraWizardImpl;)Lcom/oneplus/base/Settings;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_Settings:Lcom/oneplus/base/Settings;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/camera/ui/CameraWizardImpl;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SimpleModesSwitch:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/camera/ui/CameraWizardImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureUiDisableHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/camera/ui/CameraWizardImpl;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-base-RotationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/CameraWizardImpl;->-com-oneplus-base-RotationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CameraWizardImpl;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/Rotation;->values()[Lcom/oneplus/base/Rotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/ui/CameraWizardImpl;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/ui/CameraWizardImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -set1(Lcom/oneplus/camera/ui/CameraWizardImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureUiDisableHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/CameraWizardImpl;)Lcom/oneplus/camera/Camera;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CameraWizardImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/CameraWizardImpl;Lcom/oneplus/base/Rotation;)V
    .locals 0
    .param p1, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CameraWizardImpl;->rotateSimpleModesSwitch(Lcom/oneplus/base/Rotation;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/CameraWizardImpl;Lcom/oneplus/base/Rotation;)V
    .locals 0
    .param p1, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CameraWizardImpl;->rotateSmileCaptureContent(Lcom/oneplus/base/Rotation;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/CameraWizardImpl;Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isVisible"    # Z
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    invoke-virtual/range {p0 .. p5}, Lcom/oneplus/camera/ui/CameraWizardImpl;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/ui/CameraWizardImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CameraWizardImpl;->showSmileCapture()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Wizard.SimpleModesSwitch"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "Wizard.SmileCapture"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/camera/ui/CameraWizardImpl;->SETTINGS_KEY_WIZARD_LIST:[Ljava/lang/String;

    .line 47
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 71
    const-string/jumbo v0, "Camera Wizard"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 69
    return-void
.end method

.method private hideCameraWizardContainer()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 90
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraWizardContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 92
    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraWizardContainer:Landroid/view/View;

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CameraWizardImpl;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 88
    :cond_0
    return-void
.end method

.method private inflateCameraWizardContainer()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraWizardContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 210
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const v1, 0x7f0a002c

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraWizardContainer:Landroid/view/View;

    .line 213
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraWizardContainer:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraWizardContainer:Landroid/view/View;

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraWizardContainer:Landroid/view/View;

    .line 216
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraWizardContainer:Landroid/view/View;

    const v1, 0x7f0a007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_TouchReceiver:Landroid/view/View;

    .line 217
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_TouchReceiver:Landroid/view/View;

    new-instance v1, Lcom/oneplus/camera/ui/CameraWizardImpl$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/CameraWizardImpl$1;-><init>(Lcom/oneplus/camera/ui/CameraWizardImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 207
    :cond_1
    return-void
.end method

.method private rotateSimpleModesSwitch(Lcom/oneplus/base/Rotation;)V
    .locals 13
    .param p1, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraWizardContainer:Landroid/view/View;

    const v3, 0x7f0a007d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 443
    .local v1, "containerLayout":Landroid/view/View;
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f09015b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 444
    .local v2, "margin":I
    invoke-static {}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 459
    return-void

    .line 447
    :pswitch_0
    const/16 v0, 0x9

    const/16 v3, 0xf

    filled-new-array {v0, v3}, [I

    move-result-object v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/oneplus/camera/ui/CameraWizardImpl;->setLayoutParams(Landroid/view/View;IIIIII[IZ)V

    .line 440
    :goto_0
    return-void

    .line 450
    :pswitch_1
    const/16 v0, 0xb

    const/16 v3, 0xf

    filled-new-array {v0, v3}, [I

    move-result-object v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object v3, p0

    move-object v4, v1

    move v7, v2

    invoke-direct/range {v3 .. v12}, Lcom/oneplus/camera/ui/CameraWizardImpl;->setLayoutParams(Landroid/view/View;IIIIII[IZ)V

    goto :goto_0

    .line 453
    :pswitch_2
    const/16 v0, 0xc

    const/16 v3, 0xe

    filled-new-array {v0, v3}, [I

    move-result-object v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object v3, p0

    move-object v4, v1

    move v8, v2

    invoke-direct/range {v3 .. v12}, Lcom/oneplus/camera/ui/CameraWizardImpl;->setLayoutParams(Landroid/view/View;IIIIII[IZ)V

    goto :goto_0

    .line 456
    :pswitch_3
    const/4 v0, 0x1

    new-array v11, v0, [I

    const/16 v0, 0xe

    const/4 v3, 0x0

    aput v0, v11, v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object v3, p0

    move-object v4, v1

    move v6, v2

    invoke-direct/range {v3 .. v12}, Lcom/oneplus/camera/ui/CameraWizardImpl;->setLayoutParams(Landroid/view/View;IIIIII[IZ)V

    goto :goto_0

    .line 444
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private rotateSmileCaptureContent(Lcom/oneplus/base/Rotation;)V
    .locals 35
    .param p1, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 491
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 493
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    const v7, 0x7f0a0082

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 495
    .local v6, "indicatorOk":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 496
    .local v24, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/oneplus/camera/CameraApplication;->current()Lcom/oneplus/camera/CameraApplication;

    move-result-object v5

    sget-object v7, Lcom/oneplus/camera/CameraApplication;->PROP_IS_RTL_LAYOUT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v7}, Lcom/oneplus/camera/CameraApplication;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    .line 497
    .local v23, "isRtlLayout":Z
    const v5, 0x7f090160

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v9, v5

    .line 498
    .local v9, "indicatorOKmargin":I
    const v5, 0x7f09015f

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v11, v5

    .line 499
    .local v11, "okWidth":I
    const v5, 0x7f09015e

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v12, v5

    .line 500
    .local v12, "okHeight":I
    if-eqz v23, :cond_0

    const v5, 0x7f09016d

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    :goto_0
    float-to-int v0, v5

    move/from16 v31, v0

    .line 501
    .local v31, "stickPortraitLeft":I
    if-eqz v23, :cond_1

    const v5, 0x7f09016e

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    :goto_1
    float-to-int v0, v5

    move/from16 v32, v0

    .line 502
    .local v32, "stickPortraitRight":I
    const v5, 0x7f09016a

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v33, v0

    .line 503
    .local v33, "stickPortraitTop":I
    const v5, 0x7f09016c

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v30, v0

    .line 504
    .local v30, "stickPortraitBottom":I
    if-eqz v23, :cond_2

    const v5, 0x7f090176

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    :goto_2
    float-to-int v0, v5

    move/from16 v27, v0

    .line 505
    .local v27, "stickLandscapeLeft":I
    if-eqz v23, :cond_3

    const v5, 0x7f090177

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    :goto_3
    float-to-int v0, v5

    move/from16 v28, v0

    .line 506
    .local v28, "stickLandscapeRight":I
    const v5, 0x7f090173

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v29, v0

    .line 507
    .local v29, "stickLandscapeTop":I
    const v5, 0x7f090175

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v26, v0

    .line 512
    .local v26, "stickLandscapeBottom":I
    invoke-static {}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    .line 545
    return-void

    .line 500
    .end local v26    # "stickLandscapeBottom":I
    .end local v27    # "stickLandscapeLeft":I
    .end local v28    # "stickLandscapeRight":I
    .end local v29    # "stickLandscapeTop":I
    .end local v30    # "stickPortraitBottom":I
    .end local v31    # "stickPortraitLeft":I
    .end local v32    # "stickPortraitRight":I
    .end local v33    # "stickPortraitTop":I
    :cond_0
    const v5, 0x7f090169

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    goto :goto_0

    .line 501
    .restart local v31    # "stickPortraitLeft":I
    :cond_1
    const v5, 0x7f09016b

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    goto :goto_1

    .line 504
    .restart local v30    # "stickPortraitBottom":I
    .restart local v32    # "stickPortraitRight":I
    .restart local v33    # "stickPortraitTop":I
    :cond_2
    const v5, 0x7f090172

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    goto :goto_2

    .line 505
    .restart local v27    # "stickLandscapeLeft":I
    :cond_3
    const v5, 0x7f090174

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    goto :goto_3

    .line 515
    .restart local v26    # "stickLandscapeBottom":I
    .restart local v28    # "stickLandscapeRight":I
    .restart local v29    # "stickLandscapeTop":I
    :pswitch_0
    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v0, v18

    move/from16 v1, v27

    move/from16 v2, v29

    move/from16 v3, v28

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 516
    .local v18, "stickRect":Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/PointF;

    if-eqz v23, :cond_5

    const v5, 0x7f090171

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 517
    :goto_4
    const v7, 0x7f090170

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 516
    move-object/from16 v0, v19

    invoke-direct {v0, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 518
    .local v19, "stickCircleCenter":Landroid/graphics/PointF;
    const/16 v5, 0xb

    const/16 v7, 0xc

    filled-new-array {v5, v7}, [I

    move-result-object v13

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    move v10, v9

    invoke-direct/range {v5 .. v14}, Lcom/oneplus/camera/ui/CameraWizardImpl;->setLayoutParams(Landroid/view/View;IIIIII[IZ)V

    .line 549
    :goto_5
    new-instance v16, Landroid/graphics/PointF;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/PointF;-><init>()V

    .line 550
    .local v16, "centerPoint":Landroid/graphics/PointF;
    if-eqz v23, :cond_b

    const v5, 0x7f090164

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 551
    :goto_6
    const v7, 0x7f090163

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 550
    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 552
    new-instance v13, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;

    const v5, 0x7f080068

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    const v5, 0x7f080069

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    const v5, 0x7f090161

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    .line 553
    const v5, 0x7f090165

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    .line 552
    invoke-direct/range {v13 .. v20}, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;-><init>(IILandroid/graphics/PointF;FLandroid/graphics/Rect;Landroid/graphics/PointF;F)V

    .line 555
    .local v13, "drawable":Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    invoke-virtual {v5, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 489
    .end local v6    # "indicatorOk":Landroid/widget/TextView;
    .end local v9    # "indicatorOKmargin":I
    .end local v11    # "okWidth":I
    .end local v12    # "okHeight":I
    .end local v13    # "drawable":Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;
    .end local v16    # "centerPoint":Landroid/graphics/PointF;
    .end local v18    # "stickRect":Landroid/graphics/Rect;
    .end local v19    # "stickCircleCenter":Landroid/graphics/PointF;
    .end local v23    # "isRtlLayout":Z
    .end local v24    # "res":Landroid/content/res/Resources;
    .end local v26    # "stickLandscapeBottom":I
    .end local v27    # "stickLandscapeLeft":I
    .end local v28    # "stickLandscapeRight":I
    .end local v29    # "stickLandscapeTop":I
    .end local v30    # "stickPortraitBottom":I
    .end local v31    # "stickPortraitLeft":I
    .end local v32    # "stickPortraitRight":I
    .end local v33    # "stickPortraitTop":I
    :cond_4
    return-void

    .line 516
    .restart local v6    # "indicatorOk":Landroid/widget/TextView;
    .restart local v9    # "indicatorOKmargin":I
    .restart local v11    # "okWidth":I
    .restart local v12    # "okHeight":I
    .restart local v18    # "stickRect":Landroid/graphics/Rect;
    .restart local v23    # "isRtlLayout":Z
    .restart local v24    # "res":Landroid/content/res/Resources;
    .restart local v26    # "stickLandscapeBottom":I
    .restart local v27    # "stickLandscapeLeft":I
    .restart local v28    # "stickLandscapeRight":I
    .restart local v29    # "stickLandscapeTop":I
    .restart local v30    # "stickPortraitBottom":I
    .restart local v31    # "stickPortraitLeft":I
    .restart local v32    # "stickPortraitRight":I
    .restart local v33    # "stickPortraitTop":I
    :cond_5
    const v5, 0x7f09016f

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    goto :goto_4

    .line 521
    .end local v18    # "stickRect":Landroid/graphics/Rect;
    :pswitch_1
    new-instance v34, Landroid/graphics/Rect;

    move-object/from16 v0, v34

    move/from16 v1, v27

    move/from16 v2, v29

    move/from16 v3, v28

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 522
    .local v34, "stickRect":Landroid/graphics/Rect;
    new-instance v25, Landroid/graphics/PointF;

    if-eqz v23, :cond_6

    const v5, 0x7f090171

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 523
    :goto_7
    const v7, 0x7f090170

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 522
    move-object/from16 v0, v25

    invoke-direct {v0, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 524
    .local v25, "stickCircleCenter":Landroid/graphics/PointF;
    const/16 v5, 0x9

    const/16 v7, 0xc

    filled-new-array {v5, v7}, [I

    move-result-object v21

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x1

    move-object/from16 v13, p0

    move-object v14, v6

    move v15, v9

    move/from16 v18, v9

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-direct/range {v13 .. v22}, Lcom/oneplus/camera/ui/CameraWizardImpl;->setLayoutParams(Landroid/view/View;IIIIII[IZ)V

    move-object/from16 v19, v25

    .end local v25    # "stickCircleCenter":Landroid/graphics/PointF;
    .restart local v19    # "stickCircleCenter":Landroid/graphics/PointF;
    move-object/from16 v18, v34

    .line 525
    .end local v34    # "stickRect":Landroid/graphics/Rect;
    .restart local v18    # "stickRect":Landroid/graphics/Rect;
    goto/16 :goto_5

    .line 522
    .end local v18    # "stickRect":Landroid/graphics/Rect;
    .end local v19    # "stickCircleCenter":Landroid/graphics/PointF;
    .restart local v34    # "stickRect":Landroid/graphics/Rect;
    :cond_6
    const v5, 0x7f09016f

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    goto :goto_7

    .line 527
    .end local v34    # "stickRect":Landroid/graphics/Rect;
    :pswitch_2
    new-instance v34, Landroid/graphics/Rect;

    move-object/from16 v0, v34

    move/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v32

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 528
    .restart local v34    # "stickRect":Landroid/graphics/Rect;
    new-instance v25, Landroid/graphics/PointF;

    if-eqz v23, :cond_7

    const v5, 0x7f090168

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 529
    :goto_8
    const v7, 0x7f090167

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 528
    move-object/from16 v0, v25

    invoke-direct {v0, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 530
    .restart local v25    # "stickCircleCenter":Landroid/graphics/PointF;
    if-eqz v23, :cond_8

    .line 531
    const/16 v5, 0x9

    const/16 v7, 0xa

    filled-new-array {v5, v7}, [I

    move-result-object v21

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v22, 0x1

    move-object/from16 v13, p0

    move-object v14, v6

    move v15, v9

    move/from16 v16, v9

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-direct/range {v13 .. v22}, Lcom/oneplus/camera/ui/CameraWizardImpl;->setLayoutParams(Landroid/view/View;IIIIII[IZ)V

    :goto_9
    move-object/from16 v19, v25

    .end local v25    # "stickCircleCenter":Landroid/graphics/PointF;
    .restart local v19    # "stickCircleCenter":Landroid/graphics/PointF;
    move-object/from16 v18, v34

    .line 534
    .end local v34    # "stickRect":Landroid/graphics/Rect;
    .restart local v18    # "stickRect":Landroid/graphics/Rect;
    goto/16 :goto_5

    .line 528
    .end local v18    # "stickRect":Landroid/graphics/Rect;
    .end local v19    # "stickCircleCenter":Landroid/graphics/PointF;
    .restart local v34    # "stickRect":Landroid/graphics/Rect;
    :cond_7
    const v5, 0x7f090166

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    goto :goto_8

    .line 533
    .restart local v25    # "stickCircleCenter":Landroid/graphics/PointF;
    :cond_8
    const/16 v5, 0xb

    const/16 v7, 0xa

    filled-new-array {v5, v7}, [I

    move-result-object v13

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    move v10, v9

    invoke-direct/range {v5 .. v14}, Lcom/oneplus/camera/ui/CameraWizardImpl;->setLayoutParams(Landroid/view/View;IIIIII[IZ)V

    goto :goto_9

    .line 536
    .end local v25    # "stickCircleCenter":Landroid/graphics/PointF;
    .end local v34    # "stickRect":Landroid/graphics/Rect;
    :pswitch_3
    new-instance v34, Landroid/graphics/Rect;

    move-object/from16 v0, v34

    move/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v32

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 537
    .restart local v34    # "stickRect":Landroid/graphics/Rect;
    new-instance v25, Landroid/graphics/PointF;

    if-eqz v23, :cond_9

    const v5, 0x7f090168

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 538
    :goto_a
    const v7, 0x7f090167

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 537
    move-object/from16 v0, v25

    invoke-direct {v0, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 539
    .restart local v25    # "stickCircleCenter":Landroid/graphics/PointF;
    if-eqz v23, :cond_a

    .line 540
    const/16 v5, 0x9

    const/16 v7, 0xc

    filled-new-array {v5, v7}, [I

    move-result-object v21

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x1

    move-object/from16 v13, p0

    move-object v14, v6

    move v15, v9

    move/from16 v18, v9

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-direct/range {v13 .. v22}, Lcom/oneplus/camera/ui/CameraWizardImpl;->setLayoutParams(Landroid/view/View;IIIIII[IZ)V

    :goto_b
    move-object/from16 v19, v25

    .end local v25    # "stickCircleCenter":Landroid/graphics/PointF;
    .restart local v19    # "stickCircleCenter":Landroid/graphics/PointF;
    move-object/from16 v18, v34

    .line 543
    .end local v34    # "stickRect":Landroid/graphics/Rect;
    .restart local v18    # "stickRect":Landroid/graphics/Rect;
    goto/16 :goto_5

    .line 537
    .end local v18    # "stickRect":Landroid/graphics/Rect;
    .end local v19    # "stickCircleCenter":Landroid/graphics/PointF;
    .restart local v34    # "stickRect":Landroid/graphics/Rect;
    :cond_9
    const v5, 0x7f090166

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    goto :goto_a

    .line 542
    .restart local v25    # "stickCircleCenter":Landroid/graphics/PointF;
    :cond_a
    const/16 v5, 0xb

    const/16 v7, 0xc

    filled-new-array {v5, v7}, [I

    move-result-object v13

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    move v10, v9

    invoke-direct/range {v5 .. v14}, Lcom/oneplus/camera/ui/CameraWizardImpl;->setLayoutParams(Landroid/view/View;IIIIII[IZ)V

    goto :goto_b

    .line 550
    .end local v25    # "stickCircleCenter":Landroid/graphics/PointF;
    .end local v34    # "stickRect":Landroid/graphics/Rect;
    .restart local v16    # "centerPoint":Landroid/graphics/PointF;
    .restart local v18    # "stickRect":Landroid/graphics/Rect;
    .restart local v19    # "stickCircleCenter":Landroid/graphics/PointF;
    :cond_b
    const v5, 0x7f090162

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    goto/16 :goto_6

    .line 512
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private setLayoutParams(Landroid/view/View;IIIIII[IZ)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "rules"    # [I
    .param p9, "copy"    # Z

    .prologue
    .line 466
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_4

    .line 469
    if-eqz p9, :cond_2

    .line 470
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 474
    if-nez p7, :cond_0

    if-eqz p6, :cond_1

    .line 476
    :cond_0
    iput p7, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 477
    iput p6, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 479
    :cond_1
    if-eqz p8, :cond_3

    .line 481
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p8

    if-ge v0, v2, :cond_3

    .line 482
    aget v2, p8, v0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 472
    .end local v0    # "i":I
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_0

    .line 484
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 464
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    return-void
.end method

.method private showSimpleModesSwitch()V
    .locals 8

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 231
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraWizardContainer:Landroid/view/View;

    if-nez v1, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CameraWizardImpl;->inflateCameraWizardContainer()V

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraWizardContainer:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 236
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SimpleModesSwitch:Landroid/view/View;

    if-nez v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraWizardContainer:Landroid/view/View;

    const v2, 0x7f0a007b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SimpleModesSwitch:Landroid/view/View;

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SimpleModesSwitch:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewStub;

    if-eqz v1, :cond_3

    .line 241
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SimpleModesSwitch:Landroid/view/View;

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SimpleModesSwitch:Landroid/view/View;

    .line 243
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SimpleModesSwitch:Landroid/view/View;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f080068

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 244
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SimpleModesSwitch:Landroid/view/View;

    const v2, 0x7f0a0080

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 245
    .local v0, "okView":Landroid/widget/TextView;
    new-instance v1, Lcom/oneplus/camera/ui/CameraWizardImpl$2;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/CameraWizardImpl$2;-><init>(Lcom/oneplus/camera/ui/CameraWizardImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const-string/jumbo v2, "CameraWizardSimpleSwitch"

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 270
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SimpleModesSwitch:Landroid/view/View;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CameraWizardImpl;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 271
    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraWizardContainer:Landroid/view/View;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CameraWizardImpl;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 229
    .end local v0    # "okView":Landroid/widget/TextView;
    :cond_3
    return-void
.end method

.method private showSmileCapture()V
    .locals 14

    .prologue
    const-wide/16 v12, 0xc8

    const-wide/16 v4, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 278
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v2, "Wizard.SmileCapture"

    invoke-virtual {v1, v2, v11}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 280
    .local v8, "isSmileCaptureShown":Z
    if-eqz v8, :cond_0

    .line 282
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showSmileCapture() - Smile capture already shown."

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    if-nez v1, :cond_1

    .line 288
    const-class v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CameraWizardImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .line 289
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    if-eqz v1, :cond_2

    .line 291
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_IS_CAPTURE_MODE_PANEL_OPEN:Lcom/oneplus/base/PropertyKey;

    new-instance v11, Lcom/oneplus/camera/ui/CameraWizardImpl$3;

    invoke-direct {v11, p0}, Lcom/oneplus/camera/ui/CameraWizardImpl$3;-><init>(Lcom/oneplus/camera/ui/CameraWizardImpl;)V

    invoke-virtual {v1, v2, v11}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 299
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_IS_CAPTURE_MODE_PANEL_OPEN:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showSmileCapture() - CaptureModeSwitcher is showing"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_IS_CAPTURE_MODE_PANEL_OPEN:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 310
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showSmileCapture() - CaptureModeSwitcher is showing"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void

    .line 315
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SimpleModesSwitch:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SimpleModesSwitch:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 317
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showSmileCapture() - switch wizard is showing"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void

    .line 322
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 323
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_4

    .line 325
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showSmileCapture() - Camera is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void

    .line 329
    :cond_4
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v1, v2, :cond_5

    .line 331
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showSmileCapture() - There is no smile capture for back camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void

    .line 335
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v1, :cond_6

    .line 337
    const-class v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CameraWizardImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 338
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v1, :cond_6

    .line 340
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showSmileCapture - Capture mode manager is empty, show failed"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void

    .line 345
    :cond_6
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 346
    .local v9, "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    instance-of v7, v9, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    .line 347
    .local v7, "isPhoto":Z
    if-nez v7, :cond_7

    .line 349
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showSmileCapture() - Not in photo mode"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void

    .line 353
    :cond_7
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    if-eqz v1, :cond_9

    .line 355
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_8

    .line 357
    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CameraWizardImpl;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 358
    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraWizardContainer:Landroid/view/View;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CameraWizardImpl;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 359
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const-string/jumbo v2, "CameraWizardSmileCapture"

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureUiDisableHandle:Lcom/oneplus/base/Handle;

    .line 363
    :goto_0
    return-void

    .line 362
    :cond_8
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showSmileCapture() - Smile capture is showing"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_9
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CameraWizardImpl;->inflateCameraWizardContainer()V

    .line 369
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraWizardContainer:Landroid/view/View;

    if-eqz v1, :cond_d

    .line 371
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    if-nez v1, :cond_a

    .line 372
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraWizardContainer:Landroid/view/View;

    const v2, 0x7f0a007c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    .line 374
    :cond_a
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewStub;

    if-eqz v1, :cond_b

    .line 375
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    .line 379
    :cond_b
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    check-cast v1, Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CameraWizardImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->setRotation(Lcom/oneplus/base/Rotation;)V

    .line 380
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CameraWizardImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/CameraWizardImpl;->rotateSmileCaptureContent(Lcom/oneplus/base/Rotation;)V

    .line 383
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    const v2, 0x7f0a0082

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 384
    .local v10, "okView":Landroid/widget/TextView;
    new-instance v1, Lcom/oneplus/camera/ui/CameraWizardImpl$4;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/CameraWizardImpl$4;-><init>(Lcom/oneplus/camera/ui/CameraWizardImpl;)V

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureUiDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 399
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const-string/jumbo v2, "CameraWizardSmileCapture"

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureUiDisableHandle:Lcom/oneplus/base/Handle;

    .line 400
    :cond_c
    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    move-object v1, p0

    move-wide v4, v12

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CameraWizardImpl;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 401
    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraWizardContainer:Landroid/view/View;

    move-object v1, p0

    move-wide v4, v12

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CameraWizardImpl;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 276
    .end local v10    # "okView":Landroid/widget/TextView;
    :cond_d
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    .line 82
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 77
    return-void
.end method

.method protected onInitialize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 102
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 104
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CameraWizardImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    .line 105
    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/Settings;

    iput-object v2, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_Settings:Lcom/oneplus/base/Settings;

    .line 108
    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v3, "Wizard.SimpleModesSwitch"

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 109
    .local v0, "isSimpleModesSwitchShowed":Z
    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v3, "Wizard.SmileCapture"

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 99
    .local v1, "isSmileCaptureShown":Z
    return-void
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 4
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const-wide/16 v2, 0x258

    .line 410
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/UIComponent;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 413
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SimpleModesSwitch:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SimpleModesSwitch:Landroid/view/View;

    check-cast v0, Lcom/oneplus/camera/widget/RotateRelativeLayout;

    new-instance v1, Lcom/oneplus/camera/ui/CameraWizardImpl$5;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/CameraWizardImpl$5;-><init>(Lcom/oneplus/camera/ui/CameraWizardImpl;)V

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/oneplus/camera/ui/CameraWizardImpl;->rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;JLcom/oneplus/camera/UIComponent$ViewRotationCallback;)V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    check-cast v0, Lcom/oneplus/camera/widget/RotateRelativeLayout;

    new-instance v1, Lcom/oneplus/camera/ui/CameraWizardImpl$6;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/CameraWizardImpl$6;-><init>(Lcom/oneplus/camera/ui/CameraWizardImpl;)V

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/oneplus/camera/ui/CameraWizardImpl;->rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;JLcom/oneplus/camera/UIComponent$ViewRotationCallback;)V

    .line 407
    :cond_1
    return-void
.end method
