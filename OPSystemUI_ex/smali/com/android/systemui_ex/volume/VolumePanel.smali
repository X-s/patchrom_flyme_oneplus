.class public Lcom/android/systemui_ex/volume/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Lcom/android/systemui_ex/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/volume/VolumePanel$Callback;,
        Lcom/android/systemui_ex/volume/VolumePanel$SecondaryIconTransition;,
        Lcom/android/systemui_ex/volume/VolumePanel$SafetyWarning;,
        Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;,
        Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static LOGD:Z

.field private static final STREAMS:[Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static sSafetyWarning:Landroid/app/AlertDialog;

.field private static sSafetyWarningLock:Ljava/lang/Object;


# instance fields
.field private final DRAWABLE_PROGRESS_DEFINE:I

.field private final DRAWABLE_PROGRESS_MUTE:I

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveStreamType:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBlurUiSettingObserver:Landroid/database/ContentObserver;

.field private mCallback:Lcom/android/systemui_ex/volume/VolumePanel$Callback;

.field protected final mContext:Landroid/content/Context;

.field private mDemoIcon:I

.field private final mDialog:Landroid/app/Dialog;

.field private mDisabledAlpha:F

.field private mDisplay:Landroid/view/Display;

.field mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mHasVibrator:Z

.field private final mIconPulser:Lcom/android/systemui_ex/volume/IconPulser;

.field private mLastRingerMode:I

.field private mLastRingerProgress:I

.field private mMarginIcon:I

.field private mMarginLong:I

.field private mMarginShort:I

.field private final mMediaControllerCb:Landroid/media/session/MediaController$Callback;

.field private mMuteAnimation:Landroid/view/animation/Animation;

.field private mNotificationEffectsSuppressor:Landroid/content/ComponentName;

.field private final mPanel:Landroid/view/ViewGroup;

.field private mParent:Landroid/view/ViewGroup;

.field private final mPlayMasterStreamTones:Z

.field private mRingIsSilent:Z

.field private mRotation:I

.field private final mSecondaryIconTransition:Lcom/android/systemui_ex/volume/VolumePanel$SecondaryIconTransition;

.field private final mSeekListener:Lcom/android/systemui_ex/volume/VerticalProgressBar$OnProgressBarChangeListener;

.field private mSilderLongLength:I

.field private final mSliderPanel:Landroid/view/ViewGroup;

.field private mSliderShortLength:I

.field private mSliderShortLengthLand:I

.field private mSliderShortLengthPort:I

.field private mStreamControls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private mTimeoutDelay:I

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mVoiceCapable:Z

.field private final mZenCallback:Lcom/android/systemui_ex/statusbar/policy/ZenModeController$Callback;

.field private final mZenController:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

.field private mZenModeAvailable:Z

.field private mZenPanel:Lcom/android/systemui_ex/volume/ZenModePanel;

.field private mZenPanelCallback:Lcom/android/systemui_ex/volume/ZenModePanel$Callback;

.field private mZenPanelExpanded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 95
    const-string v0, "VolumePanel"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui_ex/volume/VolumePanel;->LOGD:Z

    .line 140
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui_ex/volume/VolumePanel;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 271
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->RingerStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->VoiceStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->MediaStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->AlarmStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->MasterStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->RemoteStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui_ex/volume/VolumePanel;->STREAMS:[Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    .line 307
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui_ex/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui_ex/statusbar/policy/ZenModeController;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "zenController"    # Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    .prologue
    .line 386
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 150
    const v11, 0x7f020473

    iput v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->DRAWABLE_PROGRESS_DEFINE:I

    .line 151
    const v11, 0x7f020472

    iput v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->DRAWABLE_PROGRESS_MUTE:I

    .line 161
    const/16 v11, 0xbb8

    iput v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mTimeoutDelay:I

    .line 163
    const/4 v11, 0x2

    iput v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mLastRingerMode:I

    .line 164
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mLastRingerProgress:I

    .line 176
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mParent:Landroid/view/ViewGroup;

    .line 191
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mActiveStreamType:I

    .line 502
    new-instance v11, Lcom/android/systemui_ex/volume/VolumePanel$4;

    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    invoke-direct {v11, p0, v12}, Lcom/android/systemui_ex/volume/VolumePanel$4;-><init>(Lcom/android/systemui_ex/volume/VolumePanel;Landroid/os/Handler;)V

    iput-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mBlurUiSettingObserver:Landroid/database/ContentObserver;

    .line 1641
    new-instance v11, Lcom/android/systemui_ex/volume/VolumePanel$9;

    invoke-direct {v11, p0}, Lcom/android/systemui_ex/volume/VolumePanel$9;-><init>(Lcom/android/systemui_ex/volume/VolumePanel;)V

    iput-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSeekListener:Lcom/android/systemui_ex/volume/VerticalProgressBar$OnProgressBarChangeListener;

    .line 1662
    new-instance v11, Lcom/android/systemui_ex/volume/VolumePanel$10;

    invoke-direct {v11, p0}, Lcom/android/systemui_ex/volume/VolumePanel$10;-><init>(Lcom/android/systemui_ex/volume/VolumePanel;)V

    iput-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenCallback:Lcom/android/systemui_ex/statusbar/policy/ZenModeController$Callback;

    .line 1675
    new-instance v11, Lcom/android/systemui_ex/volume/VolumePanel$11;

    invoke-direct {v11, p0}, Lcom/android/systemui_ex/volume/VolumePanel$11;-><init>(Lcom/android/systemui_ex/volume/VolumePanel;)V

    iput-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    .line 1778
    new-instance v11, Lcom/android/systemui_ex/volume/VolumePanel$12;

    invoke-direct {v11, p0}, Lcom/android/systemui_ex/volume/VolumePanel$12;-><init>(Lcom/android/systemui_ex/volume/VolumePanel;)V

    iput-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 387
    const-string v11, "%s.%08x"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "VolumePanel"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mTag:Ljava/lang/String;

    .line 388
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mContext:Landroid/content/Context;

    .line 389
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mParent:Landroid/view/ViewGroup;

    .line 390
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenController:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    .line 391
    const-string v11, "audio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioManager;

    iput-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 392
    const-string v11, "accessibility"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/accessibility/AccessibilityManager;

    iput-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 394
    new-instance v11, Lcom/android/systemui_ex/volume/VolumePanel$SecondaryIconTransition;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/android/systemui_ex/volume/VolumePanel$SecondaryIconTransition;-><init>(Lcom/android/systemui_ex/volume/VolumePanel;Lcom/android/systemui_ex/volume/VolumePanel$1;)V

    iput-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSecondaryIconTransition:Lcom/android/systemui_ex/volume/VolumePanel$SecondaryIconTransition;

    .line 395
    new-instance v11, Lcom/android/systemui_ex/volume/IconPulser;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/android/systemui_ex/volume/IconPulser;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mIconPulser:Lcom/android/systemui_ex/volume/IconPulser;

    .line 397
    iget-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mContext:Landroid/content/Context;

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 398
    .local v10, "wm":Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDisplay:Landroid/view/Display;

    .line 399
    iget-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDisplay:Landroid/view/Display;

    invoke-virtual {v11}, Landroid/view/Display;->getRotation()I

    move-result v11

    iput v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mRotation:I

    .line 401
    iget-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mContext:Landroid/content/Context;

    const-string v12, "display"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/display/DisplayManager;

    iput-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 402
    iget-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v12, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v11, v12, p0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 405
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 406
    .local v6, "res":Landroid/content/res/Resources;
    const v11, 0x1120013

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 407
    .local v8, "useMasterVolume":Z
    if-eqz v8, :cond_1

    .line 408
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v11, Lcom/android/systemui_ex/volume/VolumePanel;->STREAMS:[Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    array-length v11, v11

    if-ge v2, v11, :cond_1

    .line 409
    sget-object v11, Lcom/android/systemui_ex/volume/VolumePanel;->STREAMS:[Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    aget-object v7, v11, v2

    .line 410
    .local v7, "streamRes":Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;
    iget v11, v7, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->streamType:I

    const/16 v12, -0x64

    if-ne v11, v12, :cond_0

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, v7, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->show:Z

    .line 408
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 410
    :cond_0
    const/4 v11, 0x0

    goto :goto_1

    .line 413
    .end local v2    # "i":I
    .end local v7    # "streamRes":Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;
    :cond_1
    sget-boolean v11, Lcom/android/systemui_ex/volume/VolumePanel;->LOGD:Z

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v12, "new VolumePanel"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->loadResources()V

    .line 417
    const/high16 v11, 0x3f000000    # 0.5f

    iput v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDisabledAlpha:F

    .line 418
    iget-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 419
    iget-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [I

    const/4 v13, 0x0

    const v14, 0x1010033

    aput v14, v12, v13

    invoke-virtual {v11, v12}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 421
    .local v1, "arr":Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    iget v12, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDisabledAlpha:F

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    iput v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDisabledAlpha:F

    .line 422
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 425
    .end local v1    # "arr":Landroid/content/res/TypedArray;
    :cond_3
    new-instance v11, Lcom/android/systemui_ex/volume/VolumePanel$1;

    move-object/from16 v0, p1

    invoke-direct {v11, p0, v0}, Lcom/android/systemui_ex/volume/VolumePanel$1;-><init>(Lcom/android/systemui_ex/volume/VolumePanel;Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 437
    iget-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 438
    .local v9, "window":Landroid/view/Window;
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/view/Window;->requestFeature(I)Z

    .line 439
    const/16 v11, 0x33

    invoke-virtual {v9, v11}, Landroid/view/Window;->setGravity(I)V

    .line 440
    iget-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 441
    iget-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    const v12, 0x7f040067

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setContentView(I)V

    .line 442
    iget-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v12, Lcom/android/systemui_ex/volume/VolumePanel$2;

    invoke-direct {v12, p0}, Lcom/android/systemui_ex/volume/VolumePanel$2;-><init>(Lcom/android/systemui_ex/volume/VolumePanel;)V

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 453
    iget-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->create()V

    .line 455
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 456
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v11, 0x0

    iput-object v11, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 457
    const/16 v11, 0x7de

    iput v11, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 458
    const/4 v11, -0x3

    iput v11, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 459
    const v11, 0x7f0b002e

    iput v11, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 460
    const-string v11, "VolumePanel"

    invoke-virtual {v3, v11}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 461
    invoke-virtual {v9, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 462
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 463
    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroid/view/Window;->clearFlags(I)V

    .line 464
    const v11, 0x1040038

    invoke-virtual {v9, v11}, Landroid/view/Window;->addFlags(I)V

    .line 469
    const v11, 0x1020002

    invoke-virtual {v9, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mView:Landroid/view/View;

    .line 470
    iget-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mView:Landroid/view/View;

    new-instance v12, Lcom/android/systemui_ex/volume/VolumePanel$3;

    invoke-direct {v12, p0}, Lcom/android/systemui_ex/volume/VolumePanel$3;-><init>(Lcom/android/systemui_ex/volume/VolumePanel;)V

    invoke-static {v11, v12}, Lcom/android/systemui_ex/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui_ex/volume/Interaction$Callback;)V

    .line 477
    iget-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mView:Landroid/view/View;

    const v12, 0x7f0f0192

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 478
    iget-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mView:Landroid/view/View;

    const v12, 0x7f0f0193

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    .line 479
    iget-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mView:Landroid/view/View;

    const v12, 0x7f0f0199

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui_ex/volume/ZenModePanel;

    iput-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanel:Lcom/android/systemui_ex/volume/ZenModePanel;

    .line 480
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->initZenModePanel()V

    .line 482
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v11

    new-array v11, v11, [Landroid/media/ToneGenerator;

    iput-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 483
    const-string v11, "vibrator"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Vibrator;

    iput-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 484
    iget-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v11}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mHasVibrator:Z

    .line 485
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1120052

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mVoiceCapable:Z

    .line 487
    iget-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenController:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    if-eqz v11, :cond_4

    if-nez v8, :cond_4

    .line 488
    iget-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenController:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    invoke-interface {v11}, Lcom/android/systemui_ex/statusbar/policy/ZenModeController;->isZenAvailable()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenModeAvailable:Z

    .line 489
    iget-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenController:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    invoke-interface {v11}, Lcom/android/systemui_ex/statusbar/policy/ZenModeController;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mNotificationEffectsSuppressor:Landroid/content/ComponentName;

    .line 490
    iget-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenController:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    iget-object v12, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenCallback:Lcom/android/systemui_ex/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v11, v12}, Lcom/android/systemui_ex/statusbar/policy/ZenModeController;->addCallback(Lcom/android/systemui_ex/statusbar/policy/ZenModeController$Callback;)V

    .line 493
    :cond_4
    const v11, 0x1120013

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 494
    .local v5, "masterVolumeOnly":Z
    const v11, 0x1120014

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 495
    .local v4, "masterVolumeKeySounds":Z
    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    const/4 v11, 0x1

    :goto_3
    iput-boolean v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mPlayMasterStreamTones:Z

    .line 497
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->registerReceiver()V

    .line 499
    iget-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mBlurUiSettingObserver:Landroid/database/ContentObserver;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 500
    return-void

    .line 484
    .end local v4    # "masterVolumeKeySounds":Z
    .end local v5    # "masterVolumeOnly":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 495
    .restart local v4    # "masterVolumeKeySounds":Z
    .restart local v5    # "masterVolumeOnly":Z
    :cond_6
    const/4 v11, 0x0

    goto :goto_3
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui_ex/statusbar/policy/ZenModeController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "zenController"    # Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    .prologue
    .line 517
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui_ex/volume/VolumePanel;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui_ex/statusbar/policy/ZenModeController;)V

    .line 518
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/systemui_ex/volume/VolumePanel;->LOGD:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/systemui_ex/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui_ex/volume/VolumePanel;)Lcom/android/systemui_ex/volume/VolumePanel$SecondaryIconTransition;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/VolumePanel;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSecondaryIconTransition:Lcom/android/systemui_ex/volume/VolumePanel$SecondaryIconTransition;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui_ex/volume/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/VolumePanel;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui_ex/volume/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/VolumePanel;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->setupVolumePanelBlur()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui_ex/volume/VolumePanel;)Lcom/android/systemui_ex/volume/VolumePanel$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/VolumePanel;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mCallback:Lcom/android/systemui_ex/volume/VolumePanel$Callback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui_ex/volume/VolumePanel;)Lcom/android/systemui_ex/volume/ZenModePanel$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/VolumePanel;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanelCallback:Lcom/android/systemui_ex/volume/ZenModePanel$Callback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui_ex/volume/VolumePanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/VolumePanel;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanelExpanded:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui_ex/volume/VolumePanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/VolumePanel;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanelExpanded:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui_ex/volume/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/VolumePanel;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->updateTimeoutDelay()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui_ex/volume/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/VolumePanel;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->showSilentHint()V

    return-void
.end method

.method static synthetic access$200()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/systemui_ex/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/systemui_ex/volume/VolumePanel;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/VolumePanel;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mNotificationEffectsSuppressor:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$202(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/AlertDialog;

    .prologue
    .line 93
    sput-object p0, Lcom/android/systemui_ex/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui_ex/volume/VolumePanel;)Lcom/android/systemui_ex/statusbar/policy/ZenModeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/VolumePanel;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenController:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui_ex/volume/VolumePanel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/VolumePanel;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/systemui_ex/volume/VolumePanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/VolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mTimeoutDelay:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/systemui_ex/volume/VolumePanel;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/VolumePanel;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/systemui_ex/volume/VolumePanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/VolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mRotation:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/systemui_ex/volume/VolumePanel;)Landroid/view/Display;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/VolumePanel;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/volume/VolumePanel;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/VolumePanel;
    .param p1, "x1"    # J

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/volume/VolumePanel;->forceTimeout(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui_ex/volume/VolumePanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/VolumePanel;

    .prologue
    .line 93
    iget v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui_ex/volume/VolumePanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/VolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui_ex/volume/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/VolumePanel;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui_ex/volume/VolumePanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/VolumePanel;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/volume/VolumePanel;->setZenPanelVisible(Z)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/systemui_ex/volume/VolumePanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/volume/VolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDemoIcon:I

    return p1
.end method

.method private announceDialogShown()V
    .locals 2

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mView:Landroid/view/View;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1318
    return-void
.end method

.method private clearRemoteStreamController()V
    .locals 3

    .prologue
    .line 1399
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 1400
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    const/16 v2, -0xc8

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;

    .line 1401
    .local v0, "sc":Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 1402
    iget-object v1, v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v1, :cond_0

    .line 1403
    iget-object v1, v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 1404
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    .line 1408
    .end local v0    # "sc":Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method

.method private createSliders()V
    .locals 12

    .prologue
    .line 698
    iget-object v10, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 699
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v10, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 702
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v10, Landroid/util/SparseArray;

    sget-object v11, Lcom/android/systemui_ex/volume/VolumePanel;->STREAMS:[Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    array-length v11, v11

    invoke-direct {v10, v11}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v10, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    .line 704
    sget-object v3, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    .line 705
    .local v3, "notificationStream":Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v10, Lcom/android/systemui_ex/volume/VolumePanel;->STREAMS:[Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    array-length v10, v10

    if-ge v0, v10, :cond_7

    .line 706
    sget-object v10, Lcom/android/systemui_ex/volume/VolumePanel;->STREAMS:[Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    aget-object v8, v10, v0

    .line 708
    .local v8, "streamRes":Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;
    iget v9, v8, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->streamType:I

    .line 709
    .local v9, "streamType":I
    invoke-static {v9}, Lcom/android/systemui_ex/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v2

    .line 711
    .local v2, "isNotification":Z
    new-instance v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;

    const/4 v10, 0x0

    invoke-direct {v6, p0, v10}, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;-><init>(Lcom/android/systemui_ex/volume/VolumePanel;Lcom/android/systemui_ex/volume/VolumePanel$1;)V

    .line 712
    .local v6, "sc":Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;
    iput v9, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->streamType:I

    .line 713
    const v10, 0x7f040069

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 714
    iget-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 715
    iget-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v11, 0x7f0f0196

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 716
    iget-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 717
    iget-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v11, v8, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 718
    iget v10, v8, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->iconRes:I

    iput v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->iconRes:I

    .line 719
    iget v10, v8, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->iconMuteRes:I

    iput v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->iconMuteRes:I

    .line 720
    iget-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v11, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 721
    iget-object v11, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget-boolean v10, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mHasVibrator:Z

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 722
    if-eqz v2, :cond_1

    .line 723
    iget-boolean v10, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mHasVibrator:Z

    if-eqz v10, :cond_0

    .line 724
    iget-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 738
    :cond_0
    const v10, 0x7f020125

    iput v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->iconSuppressedRes:I

    .line 741
    :cond_1
    iget-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v11, 0x7f0f0195

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/systemui_ex/volume/VerticalProgressBar;

    iput-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    .line 743
    iget-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v11, 0x7f0f0194

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->suppressorView:Landroid/widget/TextView;

    .line 745
    iget-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->suppressorView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 746
    if-eqz v2, :cond_5

    iget-boolean v10, v3, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->show:Z

    if-eqz v10, :cond_5

    const/4 v7, 0x1

    .line 747
    .local v7, "showSecondary":Z
    :goto_2
    iget-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v11, 0x7f0f0197

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->divider:Landroid/view/View;

    .line 748
    iget-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v11, 0x7f0f0198

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    .line 750
    iget-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    const v11, 0x7f020124

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 751
    iget-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    iget v11, v3, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 752
    iget-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 754
    iget-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->divider:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 755
    iget-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 757
    if-eqz v7, :cond_2

    .line 758
    iget-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    new-instance v11, Lcom/android/systemui_ex/volume/VolumePanel$7;

    invoke-direct {v11, p0, v6}, Lcom/android/systemui_ex/volume/VolumePanel$7;-><init>(Lcom/android/systemui_ex/volume/VolumePanel;Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 765
    :cond_2
    const/4 v10, 0x6

    if-eq v9, v10, :cond_3

    if-nez v9, :cond_6

    :cond_3
    const/4 v4, 0x1

    .line 767
    .local v4, "plusOne":I
    :goto_3
    iget-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    invoke-direct {p0, v9}, Lcom/android/systemui_ex/volume/VolumePanel;->getStreamMaxVolume(I)I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v10, v11}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->setMax(I)V

    .line 769
    iget-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    iget-object v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSeekListener:Lcom/android/systemui_ex/volume/VerticalProgressBar$OnProgressBarChangeListener;

    invoke-virtual {v10, v11}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->setOnProgressBarChangeListener(Lcom/android/systemui_ex/volume/VerticalProgressBar$OnProgressBarChangeListener;)V

    .line 771
    iget-object v10, v6, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    invoke-virtual {v10, v6}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->setTag(Ljava/lang/Object;)V

    .line 772
    iget-object v10, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v10, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 705
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 721
    .end local v4    # "plusOne":I
    .end local v7    # "showSecondary":Z
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 746
    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 765
    .restart local v7    # "showSecondary":Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    .line 774
    .end local v2    # "isNotification":Z
    .end local v6    # "sc":Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;
    .end local v7    # "showSecondary":Z
    .end local v8    # "streamRes":Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;
    .end local v9    # "streamType":I
    :cond_7
    return-void
.end method

.method private static flagsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # I

    .prologue
    .line 1092
    if-nez p0, :cond_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/media/AudioManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private forceTimeout(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    const/4 v3, 0x5

    .line 1616
    sget-boolean v0, Lcom/android/systemui_ex/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceTimeout delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/volume/VolumePanel;->removeMessages(I)V

    .line 1618
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/systemui_ex/volume/VolumePanel;->sendEmptyMessageDelayed(IJ)Z

    .line 1619
    return-void
.end method

.method private getMuteAnimation()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMuteAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 1974
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mContext:Landroid/content/Context;

    const v1, 0x7f050089

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMuteAnimation:Landroid/view/animation/Animation;

    .line 1976
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMuteAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    .line 1456
    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    .line 1460
    iget-boolean v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mPlayMasterStreamTones:Z

    if-eqz v1, :cond_2

    .line 1461
    const/4 p1, 0x1

    .line 1466
    :cond_0
    monitor-enter p0

    .line 1467
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 1469
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1477
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    :goto_1
    return-object v1

    .line 1463
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1470
    :catch_0
    move-exception v0

    .line 1471
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-boolean v1, Lcom/android/systemui_ex/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    .line 1472
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1478
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getStreamMaxVolume(I)I
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 648
    const/16 v2, -0x64

    if-ne p1, v2, :cond_0

    .line 649
    iget-object v2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v2

    .line 660
    :goto_0
    return v2

    .line 650
    :cond_0
    const/16 v2, -0xc8

    if-ne p1, v2, :cond_2

    .line 651
    iget-object v2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 652
    iget-object v2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;

    .line 653
    .local v1, "sc":Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v2, :cond_1

    .line 654
    iget-object v2, v1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    .line 655
    .local v0, "ai":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v2

    goto :goto_0

    .line 658
    .end local v0    # "ai":Landroid/media/session/MediaController$PlaybackInfo;
    .end local v1    # "sc":Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 660
    :cond_2
    iget-object v2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 665
    const/16 v2, -0x64

    if-ne p1, v2, :cond_0

    .line 666
    iget-object v2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v2

    .line 677
    :goto_0
    return v2

    .line 667
    :cond_0
    const/16 v2, -0xc8

    if-ne p1, v2, :cond_2

    .line 668
    iget-object v2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 669
    iget-object v2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;

    .line 670
    .local v1, "sc":Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v2, :cond_1

    .line 671
    iget-object v2, v1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    .line 672
    .local v0, "ai":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v2

    goto :goto_0

    .line 675
    .end local v0    # "ai":Landroid/media/session/MediaController$PlaybackInfo;
    .end local v1    # "sc":Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 677
    :cond_2
    iget-object v2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    goto :goto_0
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "suppressor"    # Landroid/content/ComponentName;

    .prologue
    .line 863
    iget-object v5, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 865
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 866
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 867
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 868
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 869
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 870
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 878
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "VolumePanel"

    const-string v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 878
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private initZenModePanel()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanel:Lcom/android/systemui_ex/volume/ZenModePanel;

    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenController:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/volume/ZenModePanel;->init(Lcom/android/systemui_ex/statusbar/policy/ZenModeController;)V

    .line 574
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanel:Lcom/android/systemui_ex/volume/ZenModePanel;

    new-instance v1, Lcom/android/systemui_ex/volume/VolumePanel$5;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/volume/VolumePanel$5;-><init>(Lcom/android/systemui_ex/volume/VolumePanel;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/volume/ZenModePanel;->setCallback(Lcom/android/systemui_ex/volume/ZenModePanel$Callback;)V

    .line 602
    return-void
.end method

.method private isMuted(I)Z
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 637
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v0

    .line 643
    :goto_0
    return v0

    .line 639
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 641
    const/4 v0, 0x0

    goto :goto_0

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static isNotificationOrRing(I)Z
    .locals 1
    .param p0, "streamType"    # I

    .prologue
    .line 972
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowing()Z
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    goto :goto_0
.end method

.method private isZenPanelVisible()Z
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanel:Lcom/android/systemui_ex/volume/ZenModePanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanel:Lcom/android/systemui_ex/volume/ZenModePanel;

    invoke-virtual {v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadResources()V
    .locals 2

    .prologue
    .line 1764
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1765
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0d0083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMarginLong:I

    .line 1766
    const v1, 0x7f0d0089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMarginShort:I

    .line 1767
    const v1, 0x7f0d0088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSilderLongLength:I

    .line 1768
    const v1, 0x7f0d0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSliderShortLength:I

    .line 1769
    const v1, 0x7f0d0086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSliderShortLengthPort:I

    .line 1770
    const v1, 0x7f0d0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSliderShortLengthLand:I

    .line 1771
    const v1, 0x7f0d008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMarginIcon:I

    .line 1772
    return-void

    .line 1765
    :cond_0
    const v1, 0x7f0d0084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method private onPlaySound(I)V
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    const/4 v2, 0x3

    .line 1327
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/volume/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1328
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/volume/VolumePanel;->removeMessages(I)V

    .line 1330
    invoke-virtual {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->onStopSounds()V

    .line 1333
    :cond_0
    monitor-enter p0

    .line 1334
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/volume/VolumePanel;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 1335
    .local v0, "toneGen":Landroid/media/ToneGenerator;
    if-eqz v0, :cond_1

    .line 1336
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 1337
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui_ex/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1339
    :cond_1
    monitor-exit p0

    .line 1340
    return-void

    .line 1339
    .end local v0    # "toneGen":Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 610
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 611
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 612
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 613
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 614
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui_ex/volume/VolumePanel$6;

    invoke-direct {v2, p0}, Lcom/android/systemui_ex/volume/VolumePanel$6;-><init>(Lcom/android/systemui_ex/volume/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 634
    return-void
.end method

.method private reorderSliders(I)V
    .locals 4
    .param p1, "activeStreamType"    # I

    .prologue
    .line 788
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 790
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;

    .line 791
    .local v0, "active":Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 792
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing stream type! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mActiveStreamType:I

    .line 802
    :goto_0
    return-void

    .line 795
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 796
    iput p1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mActiveStreamType:I

    .line 797
    iget-object v1, v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 798
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/volume/VolumePanel;->updateSlider(Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;Z)V

    .line 799
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->updateTimeoutDelay()V

    .line 800
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->updateZenPanelVisible()V

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 8

    .prologue
    const/16 v7, 0xe

    const/4 v6, 0x5

    .line 1604
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    .line 1605
    .local v0, "touchExploration":Z
    sget-boolean v1, Lcom/android/systemui_ex/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetTimeout at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " delay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mTimeoutDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " touchExploration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :cond_0
    sget-object v1, Lcom/android/systemui_ex/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 1608
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/systemui_ex/volume/VolumePanel;->removeMessages(I)V

    .line 1609
    iget v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mTimeoutDelay:I

    int-to-long v2, v1

    invoke-virtual {p0, v6, v2, v3}, Lcom/android/systemui_ex/volume/VolumePanel;->sendEmptyMessageDelayed(IJ)Z

    .line 1610
    invoke-virtual {p0, v7}, Lcom/android/systemui_ex/volume/VolumePanel;->removeMessages(I)V

    .line 1611
    invoke-virtual {p0, v7}, Lcom/android/systemui_ex/volume/VolumePanel;->sendEmptyMessage(I)Z

    .line 1613
    :cond_2
    return-void
.end method

.method private setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 606
    invoke-virtual {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->updateStates()V

    .line 607
    return-void
.end method

.method private setMusicIcon(II)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "resMuteId"    # I

    .prologue
    .line 1487
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;

    .line 1488
    .local v0, "sc":Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 1489
    iput p1, v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->iconRes:I

    .line 1490
    iput p2, v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1491
    iget v1, v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/volume/VolumePanel;->isMuted(I)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;Z)V

    .line 1493
    :cond_0
    return-void
.end method

.method private setZenPanelVisible(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 998
    sget-boolean v3, Lcom/android/systemui_ex/volume/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setZenPanelVisible "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mZenPanel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanel:Lcom/android/systemui_ex/volume/ZenModePanel;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->isZenPanelVisible()Z

    move-result v3

    if-eq p1, v3, :cond_2

    move v0, v1

    .line 1000
    .local v0, "changing":Z
    :goto_0
    if-eqz p1, :cond_3

    .line 1001
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanel:Lcom/android/systemui_ex/volume/ZenModePanel;

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/volume/ZenModePanel;->setHidden(Z)V

    .line 1002
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->resetTimeout()V

    .line 1006
    :goto_1
    if-eqz v0, :cond_1

    .line 1007
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->updateTimeoutDelay()V

    .line 1008
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->resetTimeout()V

    .line 1010
    :cond_1
    return-void

    .end local v0    # "changing":Z
    :cond_2
    move v0, v2

    .line 999
    goto :goto_0

    .line 1004
    .restart local v0    # "changing":Z
    :cond_3
    iget-object v2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanel:Lcom/android/systemui_ex/volume/ZenModePanel;

    invoke-virtual {v2, v1}, Lcom/android/systemui_ex/volume/ZenModePanel;->setHidden(Z)V

    goto :goto_1
.end method

.method private setupVolumePanelBlur()V
    .locals 2

    .prologue
    .line 510
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    .line 513
    .local v0, "v":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private showSilentHint()V
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanel:Lcom/android/systemui_ex/volume/ZenModePanel;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanel:Lcom/android/systemui_ex/volume/ZenModePanel;

    invoke-virtual {v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->showSilentHint()V

    .line 959
    :cond_0
    return-void
.end method

.method private showVibrateHint()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 962
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;

    .line 963
    .local v0, "active":Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 964
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mIconPulser:Lcom/android/systemui_ex/volume/IconPulser;

    iget-object v2, v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/volume/IconPulser;->start(Landroid/view/View;)V

    .line 965
    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/volume/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 966
    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/systemui_ex/volume/VolumePanel;->sendEmptyMessageDelayed(IJ)Z

    .line 969
    :cond_0
    return-void
.end method

.method private static streamToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "stream"    # I

    .prologue
    .line 1096
    invoke-static {p0}, Landroid/media/AudioService;->streamToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateActiveSlider()V
    .locals 3

    .prologue
    .line 1021
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;

    .line 1022
    .local v0, "active":Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 1023
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/volume/VolumePanel;->updateSlider(Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;Z)V

    .line 1025
    :cond_0
    return-void
.end method

.method private updateDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 1802
    iget-object v4, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_1

    .line 1805
    iget v4, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mRotation:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mRotation:I

    if-ne v4, v6, :cond_2

    :cond_0
    iget v4, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSliderShortLengthPort:I

    :goto_0
    iput v4, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSliderShortLength:I

    .line 1809
    const/4 v2, 0x0

    .line 1810
    .local v2, "x":I
    const/4 v3, 0x0

    .line 1811
    .local v3, "y":I
    iget v4, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mRotation:I

    packed-switch v4, :pswitch_data_0

    .line 1837
    :goto_1
    iget-object v4, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1838
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1839
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1840
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1841
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1843
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "window":Landroid/view/Window;
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_1
    return-void

    .line 1805
    :cond_2
    iget v4, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSliderShortLengthLand:I

    goto :goto_0

    .line 1813
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :pswitch_0
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/android/systemui_ex/util/Utils;->getDisplayWidth(Landroid/content/Context;I)I

    move-result v4

    iget v5, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSilderLongLength:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMarginShort:I

    sub-int v2, v4, v5

    .line 1816
    :goto_2
    iget v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMarginLong:I

    .line 1817
    goto :goto_1

    .line 1813
    :cond_3
    iget v2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMarginShort:I

    goto :goto_2

    .line 1819
    :pswitch_1
    iget v2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMarginLong:I

    .line 1820
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMarginShort:I

    .line 1823
    :goto_3
    goto :goto_1

    .line 1820
    :cond_4
    iget-object v4, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/android/systemui_ex/util/Utils;->getDisplayHeight(Landroid/content/Context;I)I

    move-result v4

    iget v5, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSilderLongLength:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMarginShort:I

    sub-int v3, v4, v5

    goto :goto_3

    .line 1825
    :pswitch_2
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMarginShort:I

    .line 1828
    :goto_4
    iget-object v4, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/android/systemui_ex/util/Utils;->getDisplayHeight(Landroid/content/Context;I)I

    move-result v4

    iget v5, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSilderLongLength:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMarginLong:I

    sub-int v3, v4, v5

    .line 1829
    goto :goto_1

    .line 1825
    :cond_5
    iget-object v4, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/android/systemui_ex/util/Utils;->getDisplayWidth(Landroid/content/Context;I)I

    move-result v4

    iget v5, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSilderLongLength:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMarginShort:I

    sub-int v2, v4, v5

    goto :goto_4

    .line 1831
    :pswitch_3
    iget-object v4, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/android/systemui_ex/util/Utils;->getDisplayWidth(Landroid/content/Context;I)I

    move-result v4

    iget v5, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSilderLongLength:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMarginLong:I

    sub-int v2, v4, v5

    .line 1832
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/android/systemui_ex/util/Utils;->getDisplayHeight(Landroid/content/Context;I)I

    move-result v4

    iget v5, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSilderLongLength:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMarginShort:I

    sub-int v3, v4, v5

    :goto_5
    goto/16 :goto_1

    :cond_6
    iget v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMarginShort:I

    goto :goto_5

    .line 1811
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateIconPos(Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;)V
    .locals 11
    .param p1, "sc"    # Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;

    .prologue
    .line 1850
    iget-object v9, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1851
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x55

    .line 1852
    .local v1, "gravity":I
    const/4 v3, 0x0

    .line 1853
    .local v3, "left":I
    const/4 v8, 0x0

    .line 1854
    .local v8, "top":I
    const/4 v7, 0x0

    .line 1855
    .local v7, "right":I
    const/4 v0, 0x0

    .line 1856
    .local v0, "bottom":I
    iget-object v9, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1857
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iget v9, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSliderShortLength:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v6, v9, 0x2

    .line 1858
    .local v6, "marginV":I
    iget v9, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSliderShortLength:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v5, v9, 0x2

    .line 1860
    .local v5, "marginH":I
    iget v9, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mRotation:I

    packed-switch v9, :pswitch_data_0

    .line 1902
    :goto_0
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1903
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1904
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1905
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1906
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1907
    return-void

    .line 1862
    :pswitch_0
    iget v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMarginIcon:I

    .line 1863
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1864
    const/16 v1, 0x55

    .line 1865
    move v7, v5

    goto :goto_0

    .line 1867
    :cond_0
    const/16 v1, 0x53

    .line 1868
    move v3, v5

    .line 1870
    goto :goto_0

    .line 1872
    :pswitch_1
    iget v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMarginIcon:I

    .line 1873
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1874
    const/16 v1, 0x35

    .line 1875
    move v8, v6

    goto :goto_0

    .line 1877
    :cond_1
    const/16 v1, 0x55

    .line 1878
    move v0, v6

    .line 1880
    goto :goto_0

    .line 1882
    :pswitch_2
    iget v8, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMarginIcon:I

    .line 1883
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1884
    const/16 v1, 0x33

    .line 1885
    move v3, v5

    goto :goto_0

    .line 1887
    :cond_2
    const/16 v1, 0x35

    .line 1888
    move v7, v5

    .line 1890
    goto :goto_0

    .line 1892
    :pswitch_3
    iget v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMarginIcon:I

    .line 1893
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1894
    const/16 v1, 0x53

    .line 1895
    move v0, v6

    goto :goto_0

    .line 1897
    :cond_3
    const/16 v1, 0x33

    .line 1898
    move v8, v6

    goto :goto_0

    .line 1860
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateSlider(Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;Z)V
    .locals 3
    .param p1, "sc"    # Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;
    .param p2, "forceReloadIcon"    # Z

    .prologue
    .line 883
    const/4 v1, -0x1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui_ex/volume/VolumePanel;->updateSliderProgress(Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;I)V

    .line 884
    iget v1, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/volume/VolumePanel;->isMuted(I)Z

    move-result v0

    .line 885
    .local v0, "muted":Z
    if-eqz p2, :cond_0

    .line 886
    iget-object v1, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 888
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/systemui_ex/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;Z)V

    .line 889
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui_ex/volume/VolumePanel;->updateSliderEnabled(Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;ZZ)V

    .line 890
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/volume/VolumePanel;->updateSliderSuppressor(Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;)V

    .line 891
    return-void
.end method

.method private updateSliderEnabled(Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;ZZ)V
    .locals 9
    .param p1, "sc"    # Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;
    .param p2, "muted"    # Z
    .param p3, "fixedVolume"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 894
    iget-object v7, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    invoke-virtual {v7}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->isEnabled()Z

    move-result v4

    .line 895
    .local v4, "wasEnabled":Z
    iget v7, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v7}, Lcom/android/systemui_ex/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v2

    .line 896
    .local v2, "isRinger":Z
    const/4 v1, 0x1

    .line 897
    .local v1, "isProgressBarEnabled":Z
    const/high16 v0, 0x3f800000    # 1.0f

    .line 898
    .local v0, "iconAlpha":F
    iget v7, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v8, -0xc8

    if-ne v7, v8, :cond_2

    .line 901
    iget-object v7, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    if-nez p3, :cond_1

    :goto_0
    invoke-virtual {v7, v5}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->setEnabled(Z)V

    .line 924
    :goto_1
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 927
    if-eqz v1, :cond_8

    .line 928
    iget-object v5, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    iget-object v6, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020473

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 937
    :goto_2
    if-eqz v2, :cond_0

    iget-object v5, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    invoke-virtual {v5}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->isEnabled()Z

    move-result v5

    if-eq v4, v5, :cond_0

    .line 938
    iget-object v5, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    invoke-virtual {v5}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 939
    iget-object v5, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 940
    iget-object v5, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget-boolean v6, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mHasVibrator:Z

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 953
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v5, v6

    .line 901
    goto :goto_0

    .line 902
    :cond_2
    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mNotificationEffectsSuppressor:Landroid/content/ComponentName;

    if-eqz v7, :cond_3

    .line 903
    iget-object v7, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 904
    iget-object v5, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 905
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 906
    :cond_3
    if-eqz v2, :cond_4

    iget-object v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v7

    if-nez v7, :cond_4

    .line 908
    iget-object v5, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    invoke-virtual {v5, v6}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->setEnabled(Z)V

    .line 909
    iget-object v5, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 910
    iget-object v5, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 911
    iget v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDisabledAlpha:F

    .line 912
    const/4 v1, 0x0

    goto :goto_1

    .line 913
    :cond_4
    if-nez p3, :cond_6

    iget v7, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->streamType:I

    iget-object v8, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v8

    if-eq v7, v8, :cond_5

    if-nez v2, :cond_5

    if-nez p2, :cond_6

    :cond_5
    sget-object v7, Lcom/android/systemui_ex/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v7, :cond_7

    .line 916
    :cond_6
    iget-object v5, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    invoke-virtual {v5, v6}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->setEnabled(Z)V

    .line 917
    iget-object v5, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    goto/16 :goto_1

    .line 919
    :cond_7
    iget-object v6, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    invoke-virtual {v6, v5}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->setEnabled(Z)V

    .line 920
    iget-object v6, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 921
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 930
    :cond_8
    iget-object v5, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    iget-object v6, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020472

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 933
    :cond_9
    iget-object v5, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_2

    .line 942
    :cond_a
    new-instance v3, Lcom/android/systemui_ex/volume/VolumePanel$8;

    invoke-direct {v3, p0}, Lcom/android/systemui_ex/volume/VolumePanel$8;-><init>(Lcom/android/systemui_ex/volume/VolumePanel;)V

    .line 950
    .local v3, "showHintOnTouch":Landroid/view/View$OnTouchListener;
    iget-object v5, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_3
.end method

.method private updateSliderIcon(Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;Z)V
    .locals 4
    .param p1, "sc"    # Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;
    .param p2, "muted"    # Z

    .prologue
    const/4 v2, 0x1

    .line 819
    const/4 v1, 0x0

    .line 820
    .local v1, "suppressor":Landroid/content/ComponentName;
    iget v3, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v3}, Lcom/android/systemui_ex/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 821
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mNotificationEffectsSuppressor:Landroid/content/ComponentName;

    .line 822
    iget-object v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 823
    .local v0, "ringerMode":I
    if-nez v0, :cond_1

    .line 824
    iget v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mLastRingerMode:I

    .line 830
    :goto_0
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 831
    if-nez v0, :cond_0

    .line 832
    const/4 p2, 0x1

    .line 842
    .end local v0    # "ringerMode":I
    :cond_0
    :goto_1
    iget-object v3, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDemoIcon:I

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDemoIcon:I

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 846
    return-void

    .line 826
    .restart local v0    # "ringerMode":I
    :cond_1
    iput v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mLastRingerMode:I

    goto :goto_0

    .line 835
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mHasVibrator:Z

    if-eqz v3, :cond_4

    .line 836
    if-ne v0, v2, :cond_3

    move p2, v2

    :goto_3
    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    goto :goto_3

    .line 838
    :cond_4
    const/4 p2, 0x0

    goto :goto_1

    .line 842
    .end local v0    # "ringerMode":I
    :cond_5
    if-eqz v1, :cond_6

    iget v2, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->iconSuppressedRes:I

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_7

    iget v2, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->iconMuteRes:I

    goto :goto_2

    :cond_7
    iget v2, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->iconRes:I

    goto :goto_2
.end method

.method private updateSliderProgress(Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;I)V
    .locals 2
    .param p1, "sc"    # Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;
    .param p2, "progress"    # I

    .prologue
    .line 805
    iget v1, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v1}, Lcom/android/systemui_ex/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v0

    .line 806
    .local v0, "isRinger":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    if-nez v1, :cond_0

    .line 807
    iget p2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mLastRingerProgress:I

    .line 809
    :cond_0
    if-gez p2, :cond_1

    .line 810
    iget v1, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/volume/VolumePanel;->getStreamVolume(I)I

    move-result p2

    .line 812
    :cond_1
    iget-object v1, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    invoke-virtual {v1, p2}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->setProgress(I)V

    .line 813
    if-eqz v0, :cond_2

    .line 814
    iput p2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mLastRingerProgress:I

    .line 816
    :cond_2
    return-void
.end method

.method private updateSliderProgressSize(Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;)V
    .locals 12
    .param p1, "sc"    # Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;

    .prologue
    const/4 v9, 0x0

    .line 1916
    iget-object v5, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    .line 1917
    .local v5, "progressBar":Lcom/android/systemui_ex/volume/VerticalProgressBar;
    iget v10, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mRotation:I

    invoke-virtual {v5, v10}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->setViewRotation(I)V

    .line 1918
    iget v10, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSilderLongLength:I

    iget v11, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSliderShortLength:I

    sub-int v1, v10, v11

    .line 1919
    .local v1, "gap":I
    const/4 v2, 0x0

    .line 1920
    .local v2, "height":I
    const/4 v8, 0x0

    .line 1921
    .local v8, "width":I
    const/4 v3, 0x0

    .line 1922
    .local v3, "leftMargin":I
    const/4 v7, 0x0

    .line 1923
    .local v7, "topMargin":I
    const/4 v6, 0x0

    .line 1924
    .local v6, "rightMargin":I
    const/4 v0, 0x0

    .line 1925
    .local v0, "bottomMargin":I
    iget v10, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mRotation:I

    packed-switch v10, :pswitch_data_0

    .line 1963
    :goto_0
    invoke-virtual {v5}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1964
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1965
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1966
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1967
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1968
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1969
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1970
    return-void

    .line 1927
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_0
    iget v8, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSliderShortLength:I

    .line 1928
    iget v2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSilderLongLength:I

    .line 1929
    const/high16 v9, 0x43870000    # 270.0f

    invoke-virtual {v5, v9}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->setRotation(F)V

    .line 1931
    rem-int/lit8 v9, v1, 0x2

    if-eqz v9, :cond_0

    .line 1932
    div-int/lit8 v9, v1, 0x2

    add-int/lit8 v1, v9, 0x1

    .line 1935
    :cond_0
    move v7, v1

    .line 1936
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v9

    if-eqz v9, :cond_1

    move v3, v1

    .line 1937
    :goto_1
    goto :goto_0

    .line 1936
    :cond_1
    neg-int v3, v1

    goto :goto_1

    .line 1939
    :pswitch_1
    iget v8, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSilderLongLength:I

    .line 1940
    iget v2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSliderShortLength:I

    .line 1941
    const/high16 v10, 0x43340000    # 180.0f

    invoke-virtual {v5, v10}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->setRotation(F)V

    .line 1942
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v10

    if-eqz v10, :cond_2

    move v7, v9

    .line 1943
    :goto_2
    goto :goto_0

    :cond_2
    move v7, v1

    .line 1942
    goto :goto_2

    .line 1945
    :pswitch_2
    iget v8, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSliderShortLength:I

    .line 1946
    iget v2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSilderLongLength:I

    .line 1947
    const/high16 v9, 0x42b40000    # 90.0f

    invoke-virtual {v5, v9}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->setRotation(F)V

    .line 1949
    rem-int/lit8 v9, v1, 0x2

    if-eqz v9, :cond_3

    .line 1950
    div-int/lit8 v9, v1, 0x2

    add-int/lit8 v1, v9, 0x1

    .line 1953
    :cond_3
    move v7, v1

    .line 1954
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v9

    if-eqz v9, :cond_4

    neg-int v3, v1

    .line 1955
    :goto_3
    goto :goto_0

    :cond_4
    move v3, v1

    .line 1954
    goto :goto_3

    .line 1957
    :pswitch_3
    iget v8, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSilderLongLength:I

    .line 1958
    iget v2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSliderShortLength:I

    .line 1959
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->setRotation(F)V

    .line 1960
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v10

    if-eqz v10, :cond_5

    move v7, v1

    :goto_4
    goto :goto_0

    :cond_5
    move v7, v9

    goto :goto_4

    .line 1925
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateSliderSuppressor(Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;)V
    .locals 7
    .param p1, "sc"    # Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x0

    .line 849
    iget v1, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v1}, Lcom/android/systemui_ex/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mNotificationEffectsSuppressor:Landroid/content/ComponentName;

    .line 851
    .local v0, "suppressor":Landroid/content/ComponentName;
    :goto_0
    if-nez v0, :cond_1

    .line 852
    iget-object v1, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    invoke-virtual {v1, v6}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->setVisibility(I)V

    .line 853
    iget-object v1, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->suppressorView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 860
    :goto_1
    return-void

    .line 849
    .end local v0    # "suppressor":Landroid/content/ComponentName;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 855
    .restart local v0    # "suppressor":Landroid/content/ComponentName;
    :cond_1
    iget-object v1, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->setVisibility(I)V

    .line 856
    iget-object v1, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->suppressorView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 857
    iget-object v1, p1, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->suppressorView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mContext:Landroid/content/Context;

    const v3, 0x10406e2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/volume/VolumePanel;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateTimeoutDelay()V
    .locals 3

    .prologue
    const/16 v0, 0x2710

    .line 985
    iget v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDemoIcon:I

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iput v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mTimeoutDelay:I

    .line 991
    return-void

    .line 985
    :cond_1
    sget-object v1, Lcom/android/systemui_ex/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    const/16 v0, 0x1388

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mActiveStreamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    const/16 v0, 0x5dc

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanelExpanded:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->isZenPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x1194

    goto :goto_0

    :cond_4
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method private updateZenPanelVisible()V
    .locals 1

    .prologue
    .line 1028
    iget-boolean v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenModeAvailable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mActiveStreamType:I

    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/volume/VolumePanel;->setZenPanelVisible(Z)V

    .line 1029
    return-void

    .line 1028
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1627
    const-string v5, "volume"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1639
    :goto_0
    return-void

    .line 1628
    :cond_0
    const-string v5, "icon"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1629
    .local v1, "icon":Ljava/lang/String;
    const-string v5, "iconmute"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1630
    .local v2, "iconMute":Ljava/lang/String;
    if-eqz v2, :cond_2

    move v3, v6

    .line 1631
    .local v3, "mute":Z
    :goto_1
    if-eqz v3, :cond_1

    move-object v1, v2

    .line 1632
    :cond_1
    const-string v5, "Stream"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1633
    :goto_2
    invoke-static {v1}, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->valueOf(Ljava/lang/String;)Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    move-result-object v4

    .line 1634
    .local v4, "sr":Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;
    if-eqz v3, :cond_4

    iget v5, v4, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->iconMuteRes:I

    :goto_3
    iput v5, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDemoIcon:I

    .line 1635
    sget-object v5, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->MediaStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    iget v0, v5, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->streamType:I

    .line 1636
    .local v0, "forcedStreamType":I
    iget-object v5, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v0}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 1637
    iget-object v5, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v0, v7, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    .end local v0    # "forcedStreamType":I
    .end local v3    # "mute":Z
    .end local v4    # "sr":Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;
    :cond_2
    move v3, v7

    .line 1630
    goto :goto_1

    .line 1632
    .restart local v3    # "mute":Z
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "Stream"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1634
    .restart local v4    # "sr":Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;
    :cond_4
    iget v5, v4, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->iconRes:I

    goto :goto_3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 527
    const-string v3, "VolumePanel state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    const-string v3, "  mTag="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    const-string v3, "  mRingIsSilent="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mRingIsSilent:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 530
    const-string v3, "  mVoiceCapable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mVoiceCapable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 531
    const-string v3, "  mHasVibrator="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mHasVibrator:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 532
    const-string v3, "  mZenModeAvailable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenModeAvailable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 533
    const-string v3, "  mZenPanelExpanded="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanelExpanded:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 534
    const-string v3, "  mNotificationEffectsSuppressor="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mNotificationEffectsSuppressor:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 535
    const-string v3, "  mTimeoutDelay="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mTimeoutDelay:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 536
    const-string v3, "  mDisabledAlpha="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDisabledAlpha:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 537
    const-string v3, "  mLastRingerMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mLastRingerMode:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 538
    const-string v3, "  mLastRingerProgress="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mLastRingerProgress:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 539
    const-string v3, "  mPlayMasterStreamTones="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mPlayMasterStreamTones:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 540
    const-string v3, "  isShowing()="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->isShowing()Z

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 541
    const-string v3, "  mCallback="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mCallback:Lcom/android/systemui_ex/volume/VolumePanel$Callback;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 542
    const-string v3, "  sConfirmSafeVolumeDialog="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 543
    sget-object v3, Lcom/android/systemui_ex/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    const-string v3, "<not null>"

    :goto_0
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    const-string v3, "  mActiveStreamType="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mActiveStreamType:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 545
    const-string v3, "  mStreamControls="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 546
    iget-object v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v3, :cond_3

    .line 547
    const-string v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanel:Lcom/android/systemui_ex/volume/ZenModePanel;

    if-eqz v3, :cond_1

    .line 564
    iget-object v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanel:Lcom/android/systemui_ex/volume/ZenModePanel;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui_ex/volume/ZenModePanel;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 566
    :cond_1
    return-void

    .line 543
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 549
    :cond_3
    iget-object v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 550
    .local v0, "N":I
    const-string v3, "<size "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x3e

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 551
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 552
    iget-object v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;

    .line 553
    .local v2, "sc":Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;
    const-string v3, "    stream "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 554
    iget-object v3, v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    if-eqz v3, :cond_4

    .line 555
    const-string v3, " progress="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    invoke-virtual {v3}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->getProgress()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 556
    const-string v3, " of "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    invoke-virtual {v3}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->getMax()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 557
    iget-object v3, v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    invoke-virtual {v3}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, " (disabled)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 559
    :cond_4
    iget-object v3, v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, " (clickable)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 560
    :cond_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 551
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getZenController()Lcom/android/systemui_ex/statusbar/policy/ZenModeController;
    .locals 1

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenController:Lcom/android/systemui_ex/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 1508
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1601
    :cond_0
    :goto_0
    return-void

    .line 1511
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui_ex/volume/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 1516
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui_ex/volume/VolumePanel;->onMuteChanged(II)V

    goto :goto_0

    .line 1521
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 1526
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 1531
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/volume/VolumePanel;->onPlaySound(I)V

    goto :goto_0

    .line 1536
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->onVibrate()V

    goto :goto_0

    .line 1541
    :pswitch_6
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1542
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 1543
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1544
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->clearRemoteStreamController()V

    .line 1545
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mActiveStreamType:I

    .line 1546
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mCallback:Lcom/android/systemui_ex/volume/VolumePanel$Callback;

    if-eqz v1, :cond_1

    .line 1547
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mCallback:Lcom/android/systemui_ex/volume/VolumePanel$Callback;

    invoke-interface {v1, v0}, Lcom/android/systemui_ex/volume/VolumePanel$Callback;->onVisible(Z)V

    .line 1551
    :cond_1
    sget-object v1, Lcom/android/systemui_ex/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1552
    :try_start_0
    sget-object v0, Lcom/android/systemui_ex/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1553
    sget-boolean v0, Lcom/android/systemui_ex/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v2, "SafetyWarning timeout"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    :cond_2
    sget-object v0, Lcom/android/systemui_ex/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1556
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1563
    :pswitch_7
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1564
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->updateActiveSlider()V

    goto :goto_0

    .line 1570
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui_ex/volume/VolumePanel;->onRemoteVolumeChanged(Landroid/media/session/MediaController;I)V

    goto :goto_0

    .line 1575
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto :goto_0

    .line 1579
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui_ex/volume/VolumePanel;->onSliderVisibilityChanged(II)V

    goto :goto_0

    .line 1583
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/volume/VolumePanel;->onDisplaySafeVolumeWarning(I)V

    goto/16 :goto_0

    .line 1587
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/volume/VolumePanel;->setLayoutDirection(I)V

    goto/16 :goto_0

    .line 1591
    :pswitch_d
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenModeAvailable:Z

    .line 1592
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->updateZenPanelVisible()V

    goto/16 :goto_0

    .line 1596
    :pswitch_e
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mCallback:Lcom/android/systemui_ex/volume/VolumePanel$Callback;

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mCallback:Lcom/android/systemui_ex/volume/VolumePanel$Callback;

    invoke-interface {v0}, Lcom/android/systemui_ex/volume/VolumePanel$Callback;->onInteraction()V

    goto/16 :goto_0

    .line 1508
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanel:Lcom/android/systemui_ex/volume/ZenModePanel;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanel:Lcom/android/systemui_ex/volume/ZenModePanel;

    invoke-virtual {v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->updateLocale()V

    .line 524
    :cond_0
    return-void
.end method

.method protected onDisplaySafeVolumeWarning(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 1433
    and-int/lit16 v0, p1, 0x401

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1435
    :cond_0
    sget-object v1, Lcom/android/systemui_ex/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1436
    :try_start_0
    sget-object v0, Lcom/android/systemui_ex/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1437
    monitor-exit v1

    .line 1450
    :goto_0
    return-void

    .line 1439
    :cond_1
    new-instance v0, Lcom/android/systemui_ex/volume/VolumePanel$SafetyWarning;

    iget-object v2, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {v0, v2, p0, v3}, Lcom/android/systemui_ex/volume/VolumePanel$SafetyWarning;-><init>(Landroid/content/Context;Lcom/android/systemui_ex/volume/VolumePanel;Landroid/media/AudioManager;)V

    sput-object v0, Lcom/android/systemui_ex/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    .line 1440
    sget-object v0, Lcom/android/systemui_ex/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1441
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1442
    invoke-virtual {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->updateStates()V

    .line 1444
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1445
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/volume/VolumePanel;->removeMessages(I)V

    goto :goto_0

    .line 1441
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1447
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->updateTimeoutDelay()V

    .line 1448
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->resetTimeout()V

    goto :goto_0
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 1496
    monitor-enter p0

    .line 1497
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1498
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1499
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 1501
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1497
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1503
    :cond_1
    monitor-exit p0

    .line 1504
    return-void

    .line 1503
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onMuteChanged(II)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1136
    sget-boolean v1, Lcom/android/systemui_ex/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMuteChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/systemui_ex/volume/VolumePanel;->streamToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/android/systemui_ex/volume/VolumePanel;->flagsToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;

    .line 1140
    .local v0, "sc":Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;
    if-eqz v0, :cond_1

    .line 1141
    iget v1, v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/volume/VolumePanel;->isMuted(I)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui_ex/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;Z)V

    .line 1144
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui_ex/volume/VolumePanel;->onVolumeChanged(II)V

    .line 1145
    return-void
.end method

.method protected onRemoteVolumeChanged(Landroid/media/session/MediaController;I)V
    .locals 5
    .param p1, "controller"    # Landroid/media/session/MediaController;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/16 v3, -0xc8

    .line 1367
    sget-boolean v0, Lcom/android/systemui_ex/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoteVolumeChanged(controller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/systemui_ex/volume/VolumePanel;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1371
    :cond_1
    monitor-enter p0

    .line 1372
    :try_start_0
    iget v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mActiveStreamType:I

    if-eq v0, v3, :cond_2

    .line 1373
    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/volume/VolumePanel;->reorderSliders(I)V

    .line 1375
    :cond_2
    const/16 v0, -0xc8

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/systemui_ex/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    .line 1376
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1381
    :cond_3
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/volume/VolumePanel;->removeMessages(I)V

    .line 1382
    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui_ex/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1383
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->resetTimeout()V

    .line 1384
    return-void

    .line 1376
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1378
    :cond_4
    sget-boolean v0, Lcom/android/systemui_ex/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 3

    .prologue
    const/16 v2, -0xc8

    .line 1387
    sget-boolean v0, Lcom/android/systemui_ex/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 1391
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui_ex/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    .line 1393
    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(IILandroid/media/session/MediaController;)V
    .locals 10
    .param p1, "streamType"    # I
    .param p2, "flags"    # I
    .param p3, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 1148
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/volume/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 1150
    .local v0, "index":I
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mRingIsSilent:Z

    .line 1152
    sget-boolean v7, Lcom/android/systemui_ex/volume/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_0

    .line 1153
    iget-object v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onShowVolumeChanged(streamType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/systemui_ex/volume/VolumePanel;->streamToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", flags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Lcom/android/systemui_ex/volume/VolumePanel;->flagsToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/volume/VolumePanel;->getStreamMaxVolume(I)I

    move-result v1

    .line 1160
    .local v1, "max":I
    iget-object v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;

    .line 1162
    .local v4, "sc":Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;
    sparse-switch p1, :sswitch_data_0

    .line 1243
    :cond_1
    :goto_0
    :sswitch_0
    if-eqz v4, :cond_7

    .line 1244
    const/16 v7, -0xc8

    if-ne p1, v7, :cond_3

    iget-object v7, v4, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eq p3, v7, :cond_3

    .line 1245
    iget-object v7, v4, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v7, :cond_2

    .line 1246
    iget-object v7, v4, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    iget-object v8, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v7, v8}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 1248
    :cond_2
    iput-object p3, v4, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    .line 1249
    if-eqz p3, :cond_3

    .line 1250
    iget-object v7, v4, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    iget-object v8, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v7, v8}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 1253
    :cond_3
    iget-object v7, v4, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    invoke-virtual {v7}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->getMax()I

    move-result v7

    if-eq v7, v1, :cond_4

    .line 1254
    iget-object v7, v4, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    invoke-virtual {v7, v1}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->setMax(I)V

    .line 1256
    :cond_4
    invoke-direct {p0, v4, v0}, Lcom/android/systemui_ex/volume/VolumePanel;->updateSliderProgress(Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;I)V

    .line 1257
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/volume/VolumePanel;->isMuted(I)Z

    move-result v2

    .line 1258
    .local v2, "muted":Z
    and-int/lit8 v7, p2, 0x20

    if-eqz v7, :cond_13

    const/4 v7, 0x1

    :goto_1
    invoke-direct {p0, v4, v2, v7}, Lcom/android/systemui_ex/volume/VolumePanel;->updateSliderEnabled(Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;ZZ)V

    .line 1260
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1261
    if-eqz v2, :cond_5

    .line 1262
    iget-object v7, v4, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->getMuteAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1266
    :cond_5
    invoke-static {p1}, Lcom/android/systemui_ex/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1268
    iget-object v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSecondaryIconTransition:Lcom/android/systemui_ex/volume/VolumePanel$SecondaryIconTransition;

    invoke-virtual {v7}, Lcom/android/systemui_ex/volume/VolumePanel$SecondaryIconTransition;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1269
    iget-object v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSecondaryIconTransition:Lcom/android/systemui_ex/volume/VolumePanel$SecondaryIconTransition;

    invoke-virtual {v7}, Lcom/android/systemui_ex/volume/VolumePanel$SecondaryIconTransition;->cancel()V

    .line 1270
    iget-object v7, v4, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->setAlpha(F)V

    iget-object v7, v4, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->seekbarView:Lcom/android/systemui_ex/volume/VerticalProgressBar;

    invoke-virtual {v7}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1271
    iget-object v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanel:Lcom/android/systemui_ex/volume/ZenModePanel;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui_ex/volume/ZenModePanel;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mZenPanel:Lcom/android/systemui_ex/volume/ZenModePanel;

    invoke-virtual {v7}, Lcom/android/systemui_ex/volume/ZenModePanel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1273
    :cond_6
    invoke-direct {p0, v4, v2}, Lcom/android/systemui_ex/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;Z)V

    .line 1277
    .end local v2    # "muted":Z
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->isShowing()Z

    move-result v7

    if-nez v7, :cond_b

    .line 1278
    const/16 v7, -0xc8

    if-ne p1, v7, :cond_14

    const/4 v5, -0x1

    .line 1280
    .local v5, "stream":I
    :goto_2
    iget-object v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v5}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 1281
    invoke-direct {p0, v4}, Lcom/android/systemui_ex/volume/VolumePanel;->updateIconPos(Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;)V

    .line 1282
    invoke-direct {p0, v4}, Lcom/android/systemui_ex/volume/VolumePanel;->updateSliderProgressSize(Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;)V

    .line 1283
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->updateDialog()V

    .line 1284
    iget-object v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_8

    .line 1285
    iget-object v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 1287
    :cond_8
    const/16 v7, -0x64

    if-eq v5, v7, :cond_9

    .line 1288
    iget-object v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v5}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 1290
    :cond_9
    iget-object v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 1291
    iget-object v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mCallback:Lcom/android/systemui_ex/volume/VolumePanel$Callback;

    if-eqz v7, :cond_a

    .line 1292
    iget-object v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mCallback:Lcom/android/systemui_ex/volume/VolumePanel$Callback;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/android/systemui_ex/volume/VolumePanel$Callback;->onVisible(Z)V

    .line 1294
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->announceDialogShown()V

    .line 1298
    .end local v5    # "stream":I
    :cond_b
    const/16 v7, -0xc8

    if-eq p1, v7, :cond_c

    and-int/lit8 v7, p2, 0x10

    if-eqz v7, :cond_c

    invoke-static {p1}, Lcom/android/systemui_ex/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    .line 1302
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/android/systemui_ex/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x12c

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/systemui_ex/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1306
    :cond_c
    and-int/lit16 v7, p2, 0x80

    if-eqz v7, :cond_d

    .line 1307
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->showSilentHint()V

    .line 1311
    :cond_d
    and-int/lit16 v7, p2, 0x800

    if-eqz v7, :cond_e

    .line 1312
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->showVibrateHint()V

    .line 1314
    :cond_e
    return-void

    .line 1165
    :sswitch_1
    iget-object v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 1167
    .local v3, "ringuri":Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 1168
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 1175
    .end local v3    # "ringuri":Landroid/net/Uri;
    :sswitch_2
    iget-object v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v7

    and-int/lit16 v7, v7, 0x380

    if-eqz v7, :cond_f

    .line 1179
    const v7, 0x7f02008f

    const v8, 0x7f020090

    invoke-direct {p0, v7, v8}, Lcom/android/systemui_ex/volume/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 1181
    :cond_f
    const v7, 0x7f0200c3

    const v8, 0x7f020125

    invoke-direct {p0, v7, v8}, Lcom/android/systemui_ex/volume/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 1192
    :sswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 1193
    add-int/lit8 v1, v1, 0x1

    .line 1194
    goto/16 :goto_0

    .line 1202
    :sswitch_4
    iget-object v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 1204
    .restart local v3    # "ringuri":Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 1205
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 1216
    .end local v3    # "ringuri":Landroid/net/Uri;
    :sswitch_5
    add-int/lit8 v0, v0, 0x1

    .line 1217
    add-int/lit8 v1, v1, 0x1

    .line 1218
    goto/16 :goto_0

    .line 1222
    :sswitch_6
    if-nez p3, :cond_10

    if-eqz v4, :cond_10

    .line 1224
    iget-object p3, v4, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    .line 1226
    :cond_10
    if-nez p3, :cond_12

    .line 1228
    iget-object v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v8, "sent remote volume change without a controller!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_11
    :goto_3
    sget-boolean v7, Lcom/android/systemui_ex/volume/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showing remote volume "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " over "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1230
    :cond_12
    invoke-virtual {p3}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v6

    .line 1231
    .local v6, "vi":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual {v6}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v0

    .line 1232
    invoke-virtual {v6}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v1

    .line 1233
    invoke-virtual {v6}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v7

    and-int/lit8 v7, v7, 0x0

    if-eqz v7, :cond_11

    .line 1235
    or-int/lit8 p2, p2, 0x20

    goto :goto_3

    .line 1258
    .end local v6    # "vi":Landroid/media/session/MediaController$PlaybackInfo;
    .restart local v2    # "muted":Z
    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_1

    .end local v2    # "muted":Z
    :cond_14
    move v5, p1

    .line 1278
    goto/16 :goto_2

    .line 1162
    nop

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_6
        0x0 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "visible"    # I

    .prologue
    const/4 v1, 0x1

    .line 1418
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/android/systemui_ex/volume/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSliderVisibilityChanged(stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", visi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :cond_0
    if-ne p2, v1, :cond_2

    .line 1420
    .local v1, "isVisible":Z
    :goto_0
    sget-object v3, Lcom/android/systemui_ex/volume/VolumePanel;->STREAMS:[Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 1421
    sget-object v3, Lcom/android/systemui_ex/volume/VolumePanel;->STREAMS:[Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    aget-object v2, v3, v0

    .line 1422
    .local v2, "streamRes":Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;
    iget v3, v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_3

    .line 1423
    iput-boolean v1, v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->show:Z

    .line 1424
    if-nez v1, :cond_1

    iget v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_1

    .line 1425
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mActiveStreamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1430
    .end local v2    # "streamRes":Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;
    :cond_1
    monitor-exit p0

    return-void

    .line 1419
    .end local v0    # "i":I
    .end local v1    # "isVisible":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1420
    .restart local v0    # "i":I
    .restart local v1    # "isVisible":Z
    .restart local v2    # "streamRes":Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1418
    .end local v0    # "i":I
    .end local v1    # "isVisible":Z
    .end local v2    # "streamRes":Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 1344
    monitor-enter p0

    .line 1345
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1346
    .local v1, "numStreamTypes":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1347
    iget-object v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 1348
    .local v2, "toneGen":Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    .line 1349
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1346
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1352
    .end local v2    # "toneGen":Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    .line 1353
    return-void

    .line 1352
    .end local v0    # "i":I
    .end local v1    # "numStreamTypes":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected onVibrate()V
    .locals 4

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1364
    :cond_0
    :goto_0
    return-void

    .line 1361
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x12c

    sget-object v1, Lcom/android/systemui_ex/volume/VolumePanel;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 1106
    sget-boolean v0, Lcom/android/systemui_ex/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui_ex/volume/VolumePanel;->streamToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/systemui_ex/volume/VolumePanel;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 1110
    monitor-enter p0

    .line 1111
    :try_start_0
    iget v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mActiveStreamType:I

    if-eq v0, p1, :cond_1

    .line 1112
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/volume/VolumePanel;->reorderSliders(I)V

    .line 1114
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui_ex/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    .line 1115
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    :cond_2
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_3

    .line 1119
    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/volume/VolumePanel;->removeMessages(I)V

    .line 1120
    invoke-virtual {p0, v4, p1, p2}, Lcom/android/systemui_ex/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui_ex/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1123
    :cond_3
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_4

    .line 1124
    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/volume/VolumePanel;->removeMessages(I)V

    .line 1125
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/volume/VolumePanel;->removeMessages(I)V

    .line 1126
    invoke-virtual {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->onStopSounds()V

    .line 1129
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/systemui_ex/volume/VolumePanel;->removeMessages(I)V

    .line 1130
    invoke-virtual {p0, v5}, Lcom/android/systemui_ex/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui_ex/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1131
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->resetTimeout()V

    .line 1132
    return-void

    .line 1115
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postDismiss(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 1083
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/volume/VolumePanel;->forceTimeout(J)V

    .line 1084
    return-void
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    const/16 v1, 0xb

    .line 1078
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    :goto_0
    return-void

    .line 1079
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui_ex/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postLayoutDirection(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    const/16 v1, 0xc

    .line 1087
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/volume/VolumePanel;->removeMessages(I)V

    .line 1088
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui_ex/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1089
    return-void
.end method

.method public postMasterMuteChanged(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1074
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui_ex/volume/VolumePanel;->postMuteChanged(II)V

    .line 1075
    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1059
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui_ex/volume/VolumePanel;->postVolumeChanged(II)V

    .line 1060
    return-void
.end method

.method public postMuteChanged(II)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1063
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    :goto_0
    return-void

    .line 1064
    :cond_0
    monitor-enter p0

    .line 1065
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 1066
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->createSliders()V

    .line 1068
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1069
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/volume/VolumePanel;->removeMessages(I)V

    .line 1070
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui_ex/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1068
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postRemoteSliderVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 1054
    const/16 v1, 0xa

    const/16 v2, -0xc8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui_ex/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1056
    return-void

    .line 1054
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRemoteVolumeChanged(Landroid/media/session/MediaController;I)V
    .locals 2
    .param p1, "controller"    # Landroid/media/session/MediaController;
    .param p2, "flags"    # I

    .prologue
    const/16 v1, 0x8

    .line 1043
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    :goto_0
    return-void

    .line 1044
    :cond_0
    monitor-enter p0

    .line 1045
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 1046
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->createSliders()V

    .line 1048
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1049
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/volume/VolumePanel;->removeMessages(I)V

    .line 1050
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p2, v0, p1}, Lcom/android/systemui_ex/volume/VolumePanel;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1048
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postVolumeChanged(II)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 1032
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    :goto_0
    return-void

    .line 1033
    :cond_0
    monitor-enter p0

    .line 1034
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 1035
    invoke-direct {p0}, Lcom/android/systemui_ex/volume/VolumePanel;->createSliders()V

    .line 1037
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1038
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/volume/VolumePanel;->removeMessages(I)V

    .line 1039
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/systemui_ex/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1037
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setCallback(Lcom/android/systemui_ex/volume/VolumePanel$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui_ex/volume/VolumePanel$Callback;

    .prologue
    .line 977
    iput-object p1, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mCallback:Lcom/android/systemui_ex/volume/VolumePanel$Callback;

    .line 978
    return-void
.end method

.method public updateStates()V
    .locals 4

    .prologue
    .line 1013
    iget-object v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1014
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1015
    iget-object v3, p0, Lcom/android/systemui_ex/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;

    .line 1016
    .local v2, "sc":Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/systemui_ex/volume/VolumePanel;->updateSlider(Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;Z)V

    .line 1014
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1018
    .end local v2    # "sc":Lcom/android/systemui_ex/volume/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method
