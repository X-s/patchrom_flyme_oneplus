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

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/CameraWizardImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CameraWizardImpl;->hideCameraWizardContainer()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/CameraWizardImpl;Lcom/oneplus/base/Rotation;)V
    .locals 0
    .param p1, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CameraWizardImpl;->rotateSimpleModesSwitch(Lcom/oneplus/base/Rotation;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/CameraWizardImpl;Lcom/oneplus/base/Rotation;)V
    .locals 0
    .param p1, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/CameraWizardImpl;->rotateSmileCaptureContent(Lcom/oneplus/base/Rotation;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/ui/CameraWizardImpl;Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isVisible"    # Z
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    invoke-virtual/range {p0 .. p5}, Lcom/oneplus/camera/ui/CameraWizardImpl;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/ui/CameraWizardImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/CameraWizardImpl;->showSimpleModesSwitch()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/ui/CameraWizardImpl;)V
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

    const v1, 0x7f090027

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

    const v1, 0x7f090069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_TouchReceiver:Landroid/view/View;

    .line 217
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_TouchReceiver:Landroid/view/View;

    new-instance v1, Lcom/oneplus/camera/ui/CameraWizardImpl$7;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/CameraWizardImpl$7;-><init>(Lcom/oneplus/camera/ui/CameraWizardImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 207
    :cond_1
    return-void
.end method

.method private rotateSimpleModesSwitch(Lcom/oneplus/base/Rotation;)V
    .locals 13
    .param p1, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 448
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraWizardContainer:Landroid/view/View;

    const v3, 0x7f09006c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 449
    .local v1, "containerLayout":Landroid/view/View;
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0800fa

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 450
    .local v2, "margin":I
    invoke-static {}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 465
    return-void

    .line 453
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

    .line 446
    :goto_0
    return-void

    .line 456
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

    .line 459
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

    .line 462
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

    .line 450
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
    .line 498
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 500
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    const v7, 0x7f090071

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 502
    .local v6, "indicatorOk":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 503
    .local v24, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/oneplus/camera/CameraApplication;->current()Lcom/oneplus/camera/CameraApplication;

    move-result-object v5

    sget-object v7, Lcom/oneplus/camera/CameraApplication;->PROP_IS_RTL_LAYOUT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v7}, Lcom/oneplus/camera/CameraApplication;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    .line 504
    .local v23, "isRtlLayout":Z
    const v5, 0x7f0800ff

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v9, v5

    .line 505
    .local v9, "indicatorOKmargin":I
    const v5, 0x7f0800fe

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v11, v5

    .line 506
    .local v11, "okWidth":I
    const v5, 0x7f0800fd

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v12, v5

    .line 507
    .local v12, "okHeight":I
    if-eqz v23, :cond_0

    const v5, 0x7f08010c

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    :goto_0
    float-to-int v0, v5

    move/from16 v31, v0

    .line 508
    .local v31, "stickPortraitLeft":I
    if-eqz v23, :cond_1

    const v5, 0x7f08010d

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    :goto_1
    float-to-int v0, v5

    move/from16 v32, v0

    .line 509
    .local v32, "stickPortraitRight":I
    const v5, 0x7f080109

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v33, v0

    .line 510
    .local v33, "stickPortraitTop":I
    const v5, 0x7f08010b

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v30, v0

    .line 511
    .local v30, "stickPortraitBottom":I
    if-eqz v23, :cond_2

    const v5, 0x7f080115

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    :goto_2
    float-to-int v0, v5

    move/from16 v27, v0

    .line 512
    .local v27, "stickLandscapeLeft":I
    if-eqz v23, :cond_3

    const v5, 0x7f080116

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    :goto_3
    float-to-int v0, v5

    move/from16 v28, v0

    .line 513
    .local v28, "stickLandscapeRight":I
    const v5, 0x7f080112

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v29, v0

    .line 514
    .local v29, "stickLandscapeTop":I
    const v5, 0x7f080114

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v26, v0

    .line 519
    .local v26, "stickLandscapeBottom":I
    invoke-static {}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    .line 552
    return-void

    .line 507
    .end local v26    # "stickLandscapeBottom":I
    .end local v27    # "stickLandscapeLeft":I
    .end local v28    # "stickLandscapeRight":I
    .end local v29    # "stickLandscapeTop":I
    .end local v30    # "stickPortraitBottom":I
    .end local v31    # "stickPortraitLeft":I
    .end local v32    # "stickPortraitRight":I
    .end local v33    # "stickPortraitTop":I
    :cond_0
    const v5, 0x7f080108

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    goto :goto_0

    .line 508
    .restart local v31    # "stickPortraitLeft":I
    :cond_1
    const v5, 0x7f08010a

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    goto :goto_1

    .line 511
    .restart local v30    # "stickPortraitBottom":I
    .restart local v32    # "stickPortraitRight":I
    .restart local v33    # "stickPortraitTop":I
    :cond_2
    const v5, 0x7f080111

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    goto :goto_2

    .line 512
    .restart local v27    # "stickLandscapeLeft":I
    :cond_3
    const v5, 0x7f080113

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    goto :goto_3

    .line 522
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

    .line 523
    .local v18, "stickRect":Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/PointF;

    if-eqz v23, :cond_5

    const v5, 0x7f080110

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 524
    :goto_4
    const v7, 0x7f08010f

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 523
    move-object/from16 v0, v19

    invoke-direct {v0, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 525
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

    .line 556
    :goto_5
    new-instance v16, Landroid/graphics/PointF;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/PointF;-><init>()V

    .line 557
    .local v16, "centerPoint":Landroid/graphics/PointF;
    if-eqz v23, :cond_b

    const v5, 0x7f080103

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 558
    :goto_6
    const v7, 0x7f080102

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 557
    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 559
    new-instance v13, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;

    const v5, 0x7f07004c

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    const v5, 0x7f07004d

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    const v5, 0x7f080100

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    .line 560
    const v5, 0x7f080104

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    .line 559
    invoke-direct/range {v13 .. v20}, Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;-><init>(IILandroid/graphics/PointF;FLandroid/graphics/Rect;Landroid/graphics/PointF;F)V

    .line 562
    .local v13, "drawable":Lcom/oneplus/camera/ui/CameraWizardImpl$SmileIndicatorDrawable;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    invoke-virtual {v5, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 496
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

    .line 523
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
    const v5, 0x7f08010e

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    goto :goto_4

    .line 528
    .end local v18    # "stickRect":Landroid/graphics/Rect;
    :pswitch_1
    new-instance v34, Landroid/graphics/Rect;

    move-object/from16 v0, v34

    move/from16 v1, v27

    move/from16 v2, v29

    move/from16 v3, v28

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 529
    .local v34, "stickRect":Landroid/graphics/Rect;
    new-instance v25, Landroid/graphics/PointF;

    if-eqz v23, :cond_6

    const v5, 0x7f080110

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 530
    :goto_7
    const v7, 0x7f08010f

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 529
    move-object/from16 v0, v25

    invoke-direct {v0, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 531
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

    .line 532
    .end local v34    # "stickRect":Landroid/graphics/Rect;
    .restart local v18    # "stickRect":Landroid/graphics/Rect;
    goto/16 :goto_5

    .line 529
    .end local v18    # "stickRect":Landroid/graphics/Rect;
    .end local v19    # "stickCircleCenter":Landroid/graphics/PointF;
    .restart local v34    # "stickRect":Landroid/graphics/Rect;
    :cond_6
    const v5, 0x7f08010e

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    goto :goto_7

    .line 534
    .end local v34    # "stickRect":Landroid/graphics/Rect;
    :pswitch_2
    new-instance v34, Landroid/graphics/Rect;

    move-object/from16 v0, v34

    move/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v32

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 535
    .restart local v34    # "stickRect":Landroid/graphics/Rect;
    new-instance v25, Landroid/graphics/PointF;

    if-eqz v23, :cond_7

    const v5, 0x7f080107

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 536
    :goto_8
    const v7, 0x7f080106

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 535
    move-object/from16 v0, v25

    invoke-direct {v0, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 537
    .restart local v25    # "stickCircleCenter":Landroid/graphics/PointF;
    if-eqz v23, :cond_8

    .line 538
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

    .line 541
    .end local v34    # "stickRect":Landroid/graphics/Rect;
    .restart local v18    # "stickRect":Landroid/graphics/Rect;
    goto/16 :goto_5

    .line 535
    .end local v18    # "stickRect":Landroid/graphics/Rect;
    .end local v19    # "stickCircleCenter":Landroid/graphics/PointF;
    .restart local v34    # "stickRect":Landroid/graphics/Rect;
    :cond_7
    const v5, 0x7f080105

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    goto :goto_8

    .line 540
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

    .line 543
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

    .line 544
    .restart local v34    # "stickRect":Landroid/graphics/Rect;
    new-instance v25, Landroid/graphics/PointF;

    if-eqz v23, :cond_9

    const v5, 0x7f080107

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 545
    :goto_a
    const v7, 0x7f080106

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 544
    move-object/from16 v0, v25

    invoke-direct {v0, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 546
    .restart local v25    # "stickCircleCenter":Landroid/graphics/PointF;
    if-eqz v23, :cond_a

    .line 547
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

    .line 550
    .end local v34    # "stickRect":Landroid/graphics/Rect;
    .restart local v18    # "stickRect":Landroid/graphics/Rect;
    goto/16 :goto_5

    .line 544
    .end local v18    # "stickRect":Landroid/graphics/Rect;
    .end local v19    # "stickCircleCenter":Landroid/graphics/PointF;
    .restart local v34    # "stickRect":Landroid/graphics/Rect;
    :cond_9
    const v5, 0x7f080105

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    goto :goto_a

    .line 549
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

    .line 557
    .end local v25    # "stickCircleCenter":Landroid/graphics/PointF;
    .end local v34    # "stickRect":Landroid/graphics/Rect;
    .restart local v16    # "centerPoint":Landroid/graphics/PointF;
    .restart local v18    # "stickRect":Landroid/graphics/Rect;
    .restart local v19    # "stickCircleCenter":Landroid/graphics/PointF;
    :cond_b
    const v5, 0x7f080101

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    goto/16 :goto_6

    .line 519
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
    .locals 5
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
    .line 472
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_4

    .line 475
    if-eqz p9, :cond_2

    .line 476
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    const-string/jumbo v2, "yulin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLayoutParams() - v: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", params: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 481
    if-nez p7, :cond_0

    if-eqz p6, :cond_1

    .line 483
    :cond_0
    iput p7, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 484
    iput p6, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 486
    :cond_1
    if-eqz p8, :cond_3

    .line 488
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p8

    if-ge v0, v2, :cond_3

    .line 489
    aget v2, p8, v0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 478
    .end local v0    # "i":I
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_0

    .line 491
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 470
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

    const v2, 0x7f09006a

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

    const v7, 0x7f07004c

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 244
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SimpleModesSwitch:Landroid/view/View;

    const v2, 0x7f09006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 245
    .local v0, "okView":Landroid/widget/TextView;
    new-instance v1, Lcom/oneplus/camera/ui/CameraWizardImpl$8;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/CameraWizardImpl$8;-><init>(Lcom/oneplus/camera/ui/CameraWizardImpl;)V

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
    .locals 12

    .prologue
    .line 278
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v2, "Wizard.SmileCapture"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 280
    .local v9, "isSmileCaptureShown":Z
    if-eqz v9, :cond_0

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

    new-instance v3, Lcom/oneplus/camera/ui/CameraWizardImpl$9;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/CameraWizardImpl$9;-><init>(Lcom/oneplus/camera/ui/CameraWizardImpl;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

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
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v2, "Wizard.SimpleModesSwitch"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 316
    .local v8, "isSimpleModesSwitchShowed":Z
    if-nez v8, :cond_3

    .line 318
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showSmileCapture() - show switch wizard first."

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void

    .line 321
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SimpleModesSwitch:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SimpleModesSwitch:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 323
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showSmileCapture() - switch wizard is showing"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void

    .line 328
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 329
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_5

    .line 331
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showSmileCapture() - Camera is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void

    .line 335
    :cond_5
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v1, v2, :cond_6

    .line 337
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showSmileCapture() - There is no smile capture for back camera"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void

    .line 341
    :cond_6
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v1, :cond_7

    .line 343
    const-class v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/CameraWizardImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 344
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-nez v1, :cond_7

    .line 346
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showSmileCapture - Capture mode manager is empty, show failed"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void

    .line 351
    :cond_7
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 352
    .local v10, "mode":Lcom/oneplus/camera/capturemode/CaptureMode;
    instance-of v7, v10, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    .line 353
    .local v7, "isPhoto":Z
    if-nez v7, :cond_8

    .line 355
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showSmileCapture() - Not in photo mode"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void

    .line 359
    :cond_8
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    if-eqz v1, :cond_a

    .line 361
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_9

    .line 363
    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CameraWizardImpl;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 364
    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraWizardContainer:Landroid/view/View;

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CameraWizardImpl;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 365
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const-string/jumbo v2, "CameraWizardSmileCapture"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureUiDisableHandle:Lcom/oneplus/base/Handle;

    .line 369
    :goto_0
    return-void

    .line 368
    :cond_9
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showSmileCapture() - Smile capture is showing"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :cond_a
    invoke-direct {p0}, Lcom/oneplus/camera/ui/CameraWizardImpl;->inflateCameraWizardContainer()V

    .line 375
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraWizardContainer:Landroid/view/View;

    if-eqz v1, :cond_e

    .line 377
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    if-nez v1, :cond_b

    .line 378
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraWizardContainer:Landroid/view/View;

    const v2, 0x7f09006b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    .line 380
    :cond_b
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewStub;

    if-eqz v1, :cond_c

    .line 381
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    .line 385
    :cond_c
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    check-cast v1, Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CameraWizardImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->setRotation(Lcom/oneplus/base/Rotation;)V

    .line 386
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CameraWizardImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/CameraWizardImpl;->rotateSmileCaptureContent(Lcom/oneplus/base/Rotation;)V

    .line 389
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    const v2, 0x7f090071

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 390
    .local v11, "okView":Landroid/widget/TextView;
    new-instance v1, Lcom/oneplus/camera/ui/CameraWizardImpl$10;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/CameraWizardImpl$10;-><init>(Lcom/oneplus/camera/ui/CameraWizardImpl;)V

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureUiDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 405
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const-string/jumbo v2, "CameraWizardSmileCapture"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureUiDisableHandle:Lcom/oneplus/base/Handle;

    .line 406
    :cond_d
    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    const/4 v3, 0x1

    const-wide/16 v4, 0xc8

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CameraWizardImpl;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 407
    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraWizardContainer:Landroid/view/View;

    const/4 v3, 0x1

    const-wide/16 v4, 0xc8

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/CameraWizardImpl;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 276
    .end local v11    # "okView":Landroid/widget/TextView;
    :cond_e
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
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 102
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 104
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CameraWizardImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    .line 105
    iget-object v3, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Settings;

    iput-object v3, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_Settings:Lcom/oneplus/base/Settings;

    .line 108
    iget-object v3, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v4, "Wizard.SimpleModesSwitch"

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 109
    .local v1, "isSimpleModesSwitchShowed":Z
    iget-object v3, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v4, "Wizard.SmileCapture"

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 112
    .local v2, "isSmileCaptureShown":Z
    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/oneplus/camera/CameraActivity;->isServiceMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 99
    :cond_1
    :goto_1
    return-void

    .line 114
    :cond_2
    iget-object v3, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_IS_LAUNCHING:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/oneplus/camera/ui/CameraWizardImpl$1;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/ui/CameraWizardImpl$1;-><init>(Lcom/oneplus/camera/ui/CameraWizardImpl;)V

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 123
    iget-object v3, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/oneplus/camera/ui/CameraWizardImpl$2;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/ui/CameraWizardImpl$2;-><init>(Lcom/oneplus/camera/ui/CameraWizardImpl;)V

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    goto :goto_0

    .line 141
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/CameraWizardImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_IS_SMILE_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    iget-object v3, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 144
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_1

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_IS_SMILE_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    .line 146
    iget-object v3, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/oneplus/camera/ui/CameraWizardImpl$3;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/ui/CameraWizardImpl$3;-><init>(Lcom/oneplus/camera/ui/CameraWizardImpl;)V

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 155
    iget-object v3, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_IS_LAUNCHING:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/oneplus/camera/ui/CameraWizardImpl$4;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/ui/CameraWizardImpl$4;-><init>(Lcom/oneplus/camera/ui/CameraWizardImpl;)V

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 165
    iget-object v3, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/oneplus/camera/ui/CameraWizardImpl$5;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/ui/CameraWizardImpl$5;-><init>(Lcom/oneplus/camera/ui/CameraWizardImpl;)V

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 191
    const-class v3, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/ui/CameraWizardImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v3, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 192
    iget-object v3, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v3, :cond_1

    .line 194
    iget-object v3, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v4, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/oneplus/camera/ui/CameraWizardImpl$6;

    invoke-direct {v5, p0}, Lcom/oneplus/camera/ui/CameraWizardImpl$6;-><init>(Lcom/oneplus/camera/ui/CameraWizardImpl;)V

    invoke-interface {v3, v4, v5}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    goto/16 :goto_1
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 4
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const-wide/16 v2, 0x258

    .line 416
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/UIComponent;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 419
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SimpleModesSwitch:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SimpleModesSwitch:Landroid/view/View;

    check-cast v0, Lcom/oneplus/camera/widget/RotateRelativeLayout;

    new-instance v1, Lcom/oneplus/camera/ui/CameraWizardImpl$11;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/CameraWizardImpl$11;-><init>(Lcom/oneplus/camera/ui/CameraWizardImpl;)V

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/oneplus/camera/ui/CameraWizardImpl;->rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;JLcom/oneplus/camera/UIComponent$ViewRotationCallback;)V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl;->m_SmileCaptureView:Landroid/view/View;

    check-cast v0, Lcom/oneplus/camera/widget/RotateRelativeLayout;

    new-instance v1, Lcom/oneplus/camera/ui/CameraWizardImpl$12;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/CameraWizardImpl$12;-><init>(Lcom/oneplus/camera/ui/CameraWizardImpl;)V

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/oneplus/camera/ui/CameraWizardImpl;->rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;JLcom/oneplus/camera/UIComponent$ViewRotationCallback;)V

    .line 413
    :cond_1
    return-void
.end method
