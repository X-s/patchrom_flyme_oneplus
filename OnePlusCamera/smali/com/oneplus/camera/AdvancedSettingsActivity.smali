.class public final Lcom/oneplus/camera/AdvancedSettingsActivity;
.super Lcom/oneplus/base/BaseActivity;
.source "AdvancedSettingsActivity.java"

# interfaces
.implements Lcom/oneplus/camera/OnActionBarTitleChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;,
        Lcom/oneplus/camera/AdvancedSettingsActivity$AgreementFragment;,
        Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;,
        Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment;,
        Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-BaseActivity$ThemeModeSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-ui-CameraPreviewGrid$GridTypeSwitchesValues:[I = null

.field public static final EXTRA_IS_ACTIVE_PICTURE_INFO_OPTIONS_VISIBLE:Ljava/lang/String; = "IsActivePictureInfoOptionsVisible"

.field public static final EXTRA_IS_BOKEH_ORIGINAL_SUPPORTED:Ljava/lang/String; = "IsBokehOriginalPictureSupported"

.field public static final EXTRA_IS_MANUAL_CAPTURE_OPTIONS_VISIBLE:Ljava/lang/String; = "IsManualCaptureOptionsVisible"

.field public static final EXTRA_IS_MIRROR_SUPPORTED:Ljava/lang/String; = "IsMirrorSupported"

.field public static final EXTRA_IS_RAW_CAPTURE_OPTION_VISIBLE:Ljava/lang/String; = "IsRawCaptureVisible"

.field public static final EXTRA_IS_SERVICE_MODE:Ljava/lang/String; = "IsServiceMode"

.field public static final EXTRA_IS_SMILE_CAPTURE_OPTION_VISIBLE:Ljava/lang/String; = "IsSmileCaptureVisible"

.field public static final EXTRA_IS_VIDEO_FRAME_RATE_OPTION_VISIBLE:Ljava/lang/String; = "IsVideFrameRateVisible"

.field public static final EXTRA_OUTPUT_URI:Ljava/lang/String; = "OutputUri"

.field public static final EXTRA_SETTINGS_IS_VOLATILE:Ljava/lang/String; = "Settings.IsVolatile"

.field public static final EXTRA_SETTINGS_NAME:Ljava/lang/String; = "Settings.Name"

.field public static final EXTRA_START_MODE:Ljava/lang/String; = "StartMode"

.field private static final FRAGMENT_MODE_ABOUT:I = 0x1

.field private static final FRAGMENT_MODE_AGREEMENT:I = 0x2

.field private static final FRAGMENT_MODE_GRID:I = 0x3

.field private static final FRAGMENT_MODE_TOP:I = 0x0

.field private static final FRAGMENT_MODE_WATERMARK:I = 0x4

.field private static final FRAGMENT_TAG_ABOUT:Ljava/lang/String; = "About"

.field private static final FRAGMENT_TAG_AGREEMENT:Ljava/lang/String; = "Agreement"

.field private static final FRAGMENT_TAG_ALERT_DIALOG:Ljava/lang/String; = "AlertDialog"

.field private static final FRAGMENT_TAG_GRID:Ljava/lang/String; = "Grid"

.field private static final FRAGMENT_TAG_WATERMARK:Ljava/lang/String; = "Watermark"

.field private static final STATE_KEY_PREFIX:Ljava/lang/String; = "FragmentMode"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_AboutMenuItem:Lcom/oneplus/camera/ui/menu/AboutMenuItem;

.field private m_ActionBar:Landroid/widget/Toolbar;

.field private m_ActionBarTitle:Landroid/widget/TextView;

.field private m_BackButton:Landroid/widget/ImageButton;

.field private m_BokehOriginalMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private m_FragmentMode:I

.field private m_GridMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private m_HasActivePictureInfoSetting:Z

.field private m_HasBokehOriginalSetting:Z

.field private m_HasManualCaptureSetting:Z

.field private m_HasRawCaptureSetting:Z

.field private m_HasSmileCaptureSetting:Z

.field private m_HasVideoFrameRateSetting:Z

.field private m_IsMirrorSupported:Z

.field private m_IsMirroredMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private m_IsServiceMode:Z

.field private m_LocationMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private m_ManualHistogramItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private m_ManualHorizontalLineItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private m_ManualPictureInformationItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private final m_MenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/ui/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_MenuListView:Lcom/oneplus/camera/ui/menu/MenuListView;

.field private m_OutputUriStr:Ljava/lang/String;

.field private m_QuickCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private m_RawCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private m_Settings:Lcom/oneplus/base/Settings;

.field private m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private m_ShutterSoundMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private m_SimpleUIModeMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private m_SmileCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private m_StartMode:Lcom/oneplus/camera/StartMode;

.field private m_StorageManager:Lcom/oneplus/io/StorageManager;

.field private m_StorageManagerCallBack:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/io/Storage;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private m_TemporaryStatusBarSpacingView:Landroid/view/View;

.field private m_ThemeMode:Lcom/oneplus/base/BaseActivity$ThemeMode;

.field private m_VersionName:Ljava/lang/String;

.field private m_VideoFrameRateMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private m_WatermarkMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/AdvancedSettingsActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/AdvancedSettingsActivity;)Lcom/oneplus/camera/ui/menu/MenuListView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuListView:Lcom/oneplus/camera/ui/menu/MenuListView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/AdvancedSettingsActivity;)Lcom/oneplus/base/Settings;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/camera/AdvancedSettingsActivity;)Lcom/oneplus/base/BaseActivity$ThemeMode;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ThemeMode:Lcom/oneplus/base/BaseActivity$ThemeMode;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-base-BaseActivity$ThemeModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity;->-com-oneplus-base-BaseActivity$ThemeModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity;->-com-oneplus-base-BaseActivity$ThemeModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseActivity$ThemeMode;->values()[Lcom/oneplus/base/BaseActivity$ThemeMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/BaseActivity$ThemeMode;->ANDROID:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$ThemeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/BaseActivity$ThemeMode;->DARK:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$ThemeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/BaseActivity$ThemeMode;->LIGHT:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$ThemeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/BaseActivity$ThemeMode;->UNKNOWN:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$ThemeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity;->-com-oneplus-base-BaseActivity$ThemeModeSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-ui-CameraPreviewGrid$GridTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity;->-com-oneplus-camera-ui-CameraPreviewGrid$GridTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity;->-com-oneplus-camera-ui-CameraPreviewGrid$GridTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->values()[Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->GOLDEN_RATIO:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->NONE:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->UNIFORM_3x3:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->UNIFORM_4x4:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity;->-com-oneplus-camera-ui-CameraPreviewGrid$GridTypeSwitchesValues:[I

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

.method static synthetic -wrap0(Lcom/oneplus/camera/AdvancedSettingsActivity;Z)Z
    .locals 1
    .param p1, "checkEditText"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/AdvancedSettingsActivity;->closeWatermarkFragment(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/AdvancedSettingsActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->isSecureMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/AdvancedSettingsActivity;)Lcom/oneplus/base/Settings;
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Landroid/content/Context;Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gridType"    # Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    .prologue
    invoke-static {p0, p1}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getGridTypeDescription(Landroid/content/Context;Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/AdvancedSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->disableLayoutFullscreen()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/AdvancedSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->handleStorageMenuItem()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/AdvancedSettingsActivity;Lcom/oneplus/camera/ui/menu/MenuItem;)V
    .locals 0
    .param p1, "menuItem"    # Lcom/oneplus/camera/ui/menu/MenuItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/AdvancedSettingsActivity;->onMenuItemClicked(Lcom/oneplus/camera/ui/menu/MenuItem;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/AdvancedSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->openAgreementFragment()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const-class v0, Lcom/oneplus/camera/AdvancedSettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/oneplus/base/BaseActivity;-><init>()V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    .line 83
    return-void
.end method

.method private closeAboutFragment()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 929
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 930
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const-string/jumbo v2, "About"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 931
    .local v0, "fragment":Landroid/app/Fragment;
    if-nez v0, :cond_0

    .line 932
    return v4

    .line 935
    :cond_0
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 937
    const/16 v3, 0x1003

    .line 935
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 941
    iput v4, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_FragmentMode:I

    .line 944
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBarTitle:Landroid/widget/TextView;

    const v3, 0x7f0d000e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 947
    const/4 v2, 0x1

    return v2
.end method

.method private closeAgreementFragment()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 955
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 956
    .local v2, "fragmentManager":Landroid/app/FragmentManager;
    const-string/jumbo v3, "Agreement"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 957
    .local v1, "agreementFragment":Landroid/app/Fragment;
    if-nez v1, :cond_0

    .line 958
    const/4 v3, 0x0

    return v3

    .line 961
    :cond_0
    const-string/jumbo v3, "About"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 962
    .local v0, "aboutFragment":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 963
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 966
    :cond_1
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 968
    const/16 v4, 0x1003

    .line 966
    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 972
    iput v5, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_FragmentMode:I

    .line 975
    iget-object v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBarTitle:Landroid/widget/TextView;

    const v4, 0x7f0d0023

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 978
    return v5
.end method

.method private closeGridFragment()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 986
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 987
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const-string/jumbo v2, "Grid"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 988
    .local v0, "fragment":Landroid/app/Fragment;
    if-nez v0, :cond_0

    .line 989
    return v4

    .line 992
    :cond_0
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 994
    const/16 v3, 0x1003

    .line 992
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 998
    iput v4, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_FragmentMode:I

    .line 1001
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBarTitle:Landroid/widget/TextView;

    const v3, 0x7f0d000e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1002
    iget-object v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_GridMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v4, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_SUBTITLE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v5, "Grid.Type"

    const-class v6, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    invoke-virtual {v2, v5, v6}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    invoke-static {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getGridTypeDescription(Landroid/content/Context;Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1005
    const/4 v2, 0x1

    return v2
.end method

.method private closeWatermarkFragment(Z)Z
    .locals 8
    .param p1, "checkEditText"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1013
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 1014
    .local v2, "fragmentManager":Landroid/app/FragmentManager;
    const-string/jumbo v4, "Watermark"

    invoke-virtual {v2, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 1015
    .local v1, "fragment":Landroid/app/Fragment;
    if-nez v1, :cond_0

    .line 1016
    return v6

    :cond_0
    move-object v3, v1

    .line 1017
    check-cast v3, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;

    .line 1020
    .local v3, "watermarkFragment":Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;
    if-eqz p1, :cond_2

    invoke-virtual {v3}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->isEditTextEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1023
    const-string/jumbo v4, "AlertDialog"

    invoke-virtual {v2, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1024
    return v7

    .line 1026
    :cond_1
    sget-object v4, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "closeWatermarkFragment() - Edit text is empty"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    new-instance v0, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;

    invoke-direct {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;-><init>()V

    .line 1030
    .local v0, "dialogFragment":Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;
    const-string/jumbo v4, "AlertDialog"

    invoke-virtual {v0, v2, v4}, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1051
    .end local v0    # "dialogFragment":Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;
    :goto_0
    return v7

    .line 1035
    :cond_2
    invoke-static {v3}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->-wrap0(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)V

    .line 1038
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 1040
    const/16 v5, 0x1003

    .line 1038
    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 1044
    iput v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_FragmentMode:I

    .line 1047
    iget-object v4, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBarTitle:Landroid/widget/TextView;

    const v5, 0x7f0d000e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private disableLayoutFullscreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1059
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_TemporaryStatusBarSpacingView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_TemporaryStatusBarSpacingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1061
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 1062
    .local v0, "visibility":I
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    and-int/lit16 v2, v0, -0x401

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1063
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_TemporaryStatusBarSpacingView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1064
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1056
    .end local v0    # "visibility":I
    :cond_0
    return-void
.end method

.method private static getGridTypeDescription(Landroid/content/Context;Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gridType"    # Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    .prologue
    const v2, 0x7f0d0015

    .line 1106
    if-nez p1, :cond_0

    .line 1107
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1108
    :cond_0
    invoke-static {}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-getcom-oneplus-camera-ui-CameraPreviewGrid$GridTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1117
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1111
    :pswitch_0
    const v0, 0x7f0d00dd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1113
    :pswitch_1
    const v0, 0x7f0d00de

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1115
    :pswitch_2
    const v0, 0x7f0d0014

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSettings()Lcom/oneplus/base/Settings;
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    return-object v0
.end method

.method private handleStorageMenuItem()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1072
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    sget-object v1, Lcom/oneplus/io/Storage$Type;->SD_CARD:Lcom/oneplus/io/Storage$Type;

    invoke-static {v0, v1}, Lcom/oneplus/io/StorageUtils;->findStorage(Lcom/oneplus/io/StorageManager;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1074
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    if-eqz v0, :cond_1

    .line 1076
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->setStoragePosition()V

    .line 1088
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_OutputUriStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1070
    :cond_0
    :goto_1
    return-void

    .line 1080
    :cond_1
    new-instance v0, Lcom/oneplus/camera/ui/menu/StorageMenuItem;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v2, "StorageType"

    iget-object v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/camera/ui/menu/StorageMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;Lcom/oneplus/io/StorageManager;)V

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 1081
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v2, 0x7f0d0022

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1082
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->setStoragePosition()V

    .line 1084
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 1093
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    if-eqz v0, :cond_4

    .line 1095
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1097
    :cond_4
    iput-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 1098
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v1, "StorageType"

    sget-object v2, Lcom/oneplus/io/Storage$Type;->INTERNAL:Lcom/oneplus/io/Storage$Type;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private isSecureMode()Z
    .locals 3

    .prologue
    .line 1132
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    if-nez v1, :cond_0

    .line 1134
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1135
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "StartMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/StartMode;

    iput-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    .line 1137
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    sget-object v2, Lcom/oneplus/camera/StartMode;->SECURE_PHOTO:Lcom/oneplus/camera/StartMode;

    if-ne v1, v2, :cond_1

    .line 1138
    const/4 v1, 0x1

    return v1

    .line 1140
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private onMenuItemClicked(Lcom/oneplus/camera/ui/menu/MenuItem;)V
    .locals 3
    .param p1, "menuItem"    # Lcom/oneplus/camera/ui/menu/MenuItem;

    .prologue
    .line 1274
    sget-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMenuItemClicked() - title : "

    sget-object v2, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1277
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_WatermarkMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    if-ne p1, v0, :cond_1

    .line 1279
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->disableLayoutFullscreen()V

    .line 1280
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->openWatermarkFragment()V

    .line 1272
    :cond_0
    :goto_0
    return-void

    .line 1282
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_GridMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    if-ne p1, v0, :cond_2

    .line 1283
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->openGridFragment()V

    goto :goto_0

    .line 1284
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_AboutMenuItem:Lcom/oneplus/camera/ui/menu/AboutMenuItem;

    if-ne p1, v0, :cond_0

    .line 1285
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->openAboutFragment()V

    goto :goto_0
.end method

.method private openAboutFragment()V
    .locals 5

    .prologue
    .line 1364
    iget v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_FragmentMode:I

    if-eqz v2, :cond_0

    .line 1365
    return-void

    .line 1367
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1368
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const-string/jumbo v2, "About"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1369
    .local v0, "fragment":Landroid/app/Fragment;
    if-nez v0, :cond_1

    .line 1371
    new-instance v0, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_VersionName:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;-><init>(Ljava/lang/String;)V

    .line 1372
    .restart local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1373
    const-string/jumbo v3, "About"

    const v4, 0x7f0a001c

    .line 1372
    invoke-virtual {v2, v4, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1374
    const/16 v3, 0x1003

    .line 1372
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 1378
    const/4 v2, 0x1

    iput v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_FragmentMode:I

    .line 1381
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBarTitle:Landroid/widget/TextView;

    const v3, 0x7f0d0023

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1361
    :cond_1
    return-void
.end method

.method private openAgreementFragment()V
    .locals 6

    .prologue
    .line 1390
    iget v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_FragmentMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1391
    return-void

    .line 1393
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 1394
    .local v2, "fragmentManager":Landroid/app/FragmentManager;
    const-string/jumbo v3, "Agreement"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 1395
    .local v1, "agreementFragment":Landroid/app/Fragment;
    if-nez v1, :cond_1

    .line 1398
    new-instance v1, Lcom/oneplus/camera/AdvancedSettingsActivity$AgreementFragment;

    .end local v1    # "agreementFragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/oneplus/camera/AdvancedSettingsActivity$AgreementFragment;-><init>()V

    .line 1399
    .restart local v1    # "agreementFragment":Landroid/app/Fragment;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 1400
    const-string/jumbo v4, "Agreement"

    const v5, 0x7f0a001c

    .line 1399
    invoke-virtual {v3, v5, v1, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 1404
    const/4 v3, 0x2

    iput v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_FragmentMode:I

    .line 1407
    const-string/jumbo v3, "About"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1408
    .local v0, "aboutFragment":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 1410
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1387
    .end local v0    # "aboutFragment":Landroid/app/Fragment;
    :cond_1
    return-void
.end method

.method private openGridFragment()V
    .locals 5

    .prologue
    .line 1422
    iget v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_FragmentMode:I

    if-eqz v2, :cond_0

    .line 1423
    return-void

    .line 1425
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1426
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const-string/jumbo v2, "Grid"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1427
    .local v0, "fragment":Landroid/app/Fragment;
    if-nez v0, :cond_1

    .line 1429
    new-instance v0, Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity$GridFragment;-><init>()V

    .line 1430
    .restart local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1431
    const-string/jumbo v3, "Grid"

    const v4, 0x7f0a001e

    .line 1430
    invoke-virtual {v2, v4, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1432
    const/16 v3, 0x1003

    .line 1430
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 1436
    const/4 v2, 0x3

    iput v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_FragmentMode:I

    .line 1439
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBarTitle:Landroid/widget/TextView;

    const v3, 0x7f0d0013

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1419
    :cond_1
    return-void
.end method

.method private openWatermarkFragment()V
    .locals 5

    .prologue
    .line 1448
    iget v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_FragmentMode:I

    if-eqz v2, :cond_0

    .line 1449
    return-void

    .line 1451
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1452
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const-string/jumbo v2, "Watermark"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1453
    .local v0, "fragment":Landroid/app/Fragment;
    if-nez v0, :cond_1

    .line 1455
    new-instance v0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;-><init>()V

    .line 1456
    .restart local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1457
    const-string/jumbo v3, "Watermark"

    const v4, 0x7f0a001f

    .line 1456
    invoke-virtual {v2, v4, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1458
    const/16 v3, 0x1003

    .line 1456
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 1462
    const/4 v2, 0x4

    iput v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_FragmentMode:I

    .line 1465
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBarTitle:Landroid/widget/TextView;

    const v3, 0x7f0d0028

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1445
    :cond_1
    return-void
.end method

.method private registerReceivers()V
    .locals 4

    .prologue
    .line 1473
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->isSecureMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1475
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 1477
    sget-object v2, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerReceivers() - Shutdown receiver"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    new-instance v2, Lcom/oneplus/camera/AdvancedSettingsActivity$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$2;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity;)V

    iput-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 1492
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1493
    .local v0, "filterScreenOff":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1496
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1497
    .local v1, "filterUserUnlock":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/camera/AdvancedSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1471
    .end local v0    # "filterScreenOff":Landroid/content/IntentFilter;
    .end local v1    # "filterUserUnlock":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private setStoragePosition()V
    .locals 5

    .prologue
    .line 1506
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    iget-object v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    sget-object v4, Lcom/oneplus/io/Storage$Type;->INTERNAL:Lcom/oneplus/io/Storage$Type;

    invoke-static {v2, v3, v4}, Lcom/oneplus/io/StorageUtils;->findStorageFromSettings(Lcom/oneplus/io/StorageManager;Lcom/oneplus/base/Settings;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;

    move-result-object v1

    .line 1507
    .local v1, "storage":Lcom/oneplus/io/Storage;
    const/4 v0, 0x0

    .line 1508
    .local v0, "isChecked":Z
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/oneplus/io/Storage;->getType()Lcom/oneplus/io/Storage$Type;

    move-result-object v2

    sget-object v3, Lcom/oneplus/io/Storage$Type;->SD_CARD:Lcom/oneplus/io/Storage$Type;

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lcom/oneplus/io/Storage;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1509
    const/4 v0, 0x1

    .line 1510
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v3, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1504
    return-void
.end method

.method private setupMenuItems()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1518
    new-instance v0, Lcom/oneplus/camera/ui/menu/DividerMenuItem;

    invoke-direct {v0}, Lcom/oneplus/camera/ui/menu/DividerMenuItem;-><init>()V

    .line 1519
    .local v0, "cameraItem":Lcom/oneplus/camera/ui/menu/DividerMenuItem;
    sget-object v6, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v7, 0x7f0d002e

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/oneplus/camera/ui/menu/DividerMenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1520
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1523
    new-instance v6, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v8, "Location.Save"

    invoke-direct {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_LocationMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 1524
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_LocationMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v8, 0x7f0d0016

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1525
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_LocationMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_DIVIDER_STYLE:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;->INDENTED:Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1526
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_LocationMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1529
    new-instance v6, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v8, "ShutterSound"

    invoke-direct {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutterSoundMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 1530
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutterSoundMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v8, 0x7f0d001c

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1531
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutterSoundMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_DIVIDER_STYLE:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;->INDENTED:Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1532
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutterSoundMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1535
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "emergency_affordance_needed"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1536
    .local v5, "value":I
    if-nez v5, :cond_10

    const/4 v3, 0x1

    .line 1537
    .local v3, "showQuickCapture":Z
    :goto_0
    sget-object v6, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setupMenuItems() - emergency_affordance_needed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    if-eqz v3, :cond_2

    .line 1540
    new-instance v6, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v8, "IsQuickCaptureEnabled"

    invoke-direct {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_QuickCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 1541
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_QuickCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v8, 0x7f0d0019

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1542
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_QuickCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_SUBTITLE:Lcom/oneplus/base/PropertyKey;

    const v8, 0x7f0d001a

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1543
    iget-boolean v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsServiceMode:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasRawCaptureSetting:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasSmileCaptureSetting:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasVideoFrameRateSetting:Z

    if-eqz v6, :cond_1

    .line 1544
    :cond_0
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_QuickCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_DIVIDER_STYLE:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;->INDENTED:Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1545
    :cond_1
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_QuickCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1549
    :cond_2
    new-instance v6, Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-direct {v6}, Lcom/oneplus/camera/ui/menu/MenuItem;-><init>()V

    iput-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_GridMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 1550
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_GridMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v8, 0x7f0d0013

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1551
    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_GridMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v8, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_SUBTITLE:Lcom/oneplus/base/PropertyKey;

    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v9, "Grid.Type"

    const-class v10, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    invoke-virtual {v6, v9, v10}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    invoke-static {p0, v6}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getGridTypeDescription(Landroid/content/Context;Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1552
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_GridMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_DIVIDER_STYLE:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;->INDENTED:Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1553
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_GridMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1556
    iget-boolean v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsServiceMode:Z

    if-nez v6, :cond_5

    .line 1558
    new-instance v6, Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-direct {v6}, Lcom/oneplus/camera/ui/menu/MenuItem;-><init>()V

    iput-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_WatermarkMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 1559
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_WatermarkMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v8, 0x7f0d0028

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1560
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_WatermarkMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_SUBTITLE:Lcom/oneplus/base/PropertyKey;

    const v8, 0x7f0d0029

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1561
    iget-boolean v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasRawCaptureSetting:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasSmileCaptureSetting:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasVideoFrameRateSetting:Z

    if-eqz v6, :cond_4

    .line 1562
    :cond_3
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_WatermarkMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_DIVIDER_STYLE:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;->INDENTED:Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1563
    :cond_4
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_WatermarkMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1567
    :cond_5
    iget-boolean v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasRawCaptureSetting:Z

    if-eqz v6, :cond_8

    .line 1569
    new-instance v6, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v8, "RawCapture"

    invoke-direct {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_RawCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 1570
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_RawCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v8, 0x7f0d001b

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1571
    iget-boolean v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasSmileCaptureSetting:Z

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasVideoFrameRateSetting:Z

    if-eqz v6, :cond_7

    .line 1572
    :cond_6
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_RawCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_DIVIDER_STYLE:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;->INDENTED:Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1573
    :cond_7
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_RawCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1577
    :cond_8
    iget-boolean v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasSmileCaptureSetting:Z

    if-eqz v6, :cond_a

    .line 1580
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v7, "CameraLensFacing"

    invoke-virtual {v6, v7}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "front"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1581
    const-string/jumbo v4, "SmileCapture.Front"

    .line 1584
    .local v4, "smileFacingKey":Ljava/lang/String;
    :goto_1
    new-instance v6, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    invoke-direct {v6, v7, v4}, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_SmileCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 1585
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_SmileCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v8, 0x7f0d001f

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1586
    iget-boolean v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasVideoFrameRateSetting:Z

    if-eqz v6, :cond_9

    .line 1587
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_SmileCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_DIVIDER_STYLE:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;->INDENTED:Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1588
    :cond_9
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_SmileCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1591
    .end local v4    # "smileFacingKey":Ljava/lang/String;
    :cond_a
    iget-boolean v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasVideoFrameRateSetting:Z

    if-eqz v6, :cond_b

    .line 1593
    new-instance v6, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v8, "VideoFrameRate"

    invoke-direct {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_VideoFrameRateMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 1594
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_VideoFrameRateMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v8, 0x7f0d0021

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1595
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_VideoFrameRateMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1599
    :cond_b
    iget-boolean v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsMirrorSupported:Z

    if-eqz v6, :cond_c

    .line 1602
    new-instance v1, Lcom/oneplus/camera/ui/menu/DividerMenuItem;

    invoke-direct {v1}, Lcom/oneplus/camera/ui/menu/DividerMenuItem;-><init>()V

    .line 1603
    .local v1, "manualItem":Lcom/oneplus/camera/ui/menu/DividerMenuItem;
    sget-object v6, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v7, 0x7f0d004e

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/oneplus/camera/ui/menu/DividerMenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1604
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1606
    new-instance v6, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v8, "IsMirrored"

    invoke-direct {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsMirroredMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 1607
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsMirroredMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v8, 0x7f0d0012

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1608
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsMirroredMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1612
    .end local v1    # "manualItem":Lcom/oneplus/camera/ui/menu/DividerMenuItem;
    :cond_c
    iget-boolean v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasBokehOriginalSetting:Z

    if-eqz v6, :cond_d

    .line 1615
    new-instance v1, Lcom/oneplus/camera/ui/menu/DividerMenuItem;

    invoke-direct {v1}, Lcom/oneplus/camera/ui/menu/DividerMenuItem;-><init>()V

    .line 1616
    .restart local v1    # "manualItem":Lcom/oneplus/camera/ui/menu/DividerMenuItem;
    sget-object v6, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v7, 0x7f0d000f

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/oneplus/camera/ui/menu/DividerMenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1617
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1620
    new-instance v6, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v8, "BokehOriginalPicture"

    invoke-direct {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_BokehOriginalMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 1621
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_BokehOriginalMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v8, 0x7f0d0010

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1622
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_BokehOriginalMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_SUBTITLE:Lcom/oneplus/base/PropertyKey;

    const v8, 0x7f0d0011

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1623
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_BokehOriginalMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1627
    .end local v1    # "manualItem":Lcom/oneplus/camera/ui/menu/DividerMenuItem;
    :cond_d
    iget-boolean v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasManualCaptureSetting:Z

    if-eqz v6, :cond_f

    .line 1630
    new-instance v1, Lcom/oneplus/camera/ui/menu/DividerMenuItem;

    invoke-direct {v1}, Lcom/oneplus/camera/ui/menu/DividerMenuItem;-><init>()V

    .line 1631
    .restart local v1    # "manualItem":Lcom/oneplus/camera/ui/menu/DividerMenuItem;
    sget-object v6, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v7, 0x7f0d0048

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/oneplus/camera/ui/menu/DividerMenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1632
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1635
    iget-boolean v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasActivePictureInfoSetting:Z

    if-eqz v6, :cond_e

    .line 1637
    new-instance v6, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v8, "PictureInformation"

    invoke-direct {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ManualPictureInformationItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 1638
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ManualPictureInformationItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v8, 0x7f0d0025

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1639
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ManualPictureInformationItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_DIVIDER_STYLE:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;->INDENTED:Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1640
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ManualPictureInformationItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1644
    :cond_e
    new-instance v6, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v8, "Histogram"

    invoke-direct {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ManualHistogramItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 1645
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ManualHistogramItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v8, 0x7f0d0027

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1646
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ManualHistogramItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_DIVIDER_STYLE:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;->INDENTED:Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1647
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ManualHistogramItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1650
    new-instance v6, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v8, "HorizontalReferenceLine"

    invoke-direct {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ManualHorizontalLineItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 1651
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ManualHorizontalLineItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v8, 0x7f0d0026

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1652
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ManualHorizontalLineItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_DIVIDER_STYLE:Lcom/oneplus/base/PropertyKey;

    sget-object v8, Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;->INDENTED:Lcom/oneplus/camera/ui/menu/MenuItem$DividerStyle;

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1653
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ManualHorizontalLineItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1656
    new-instance v6, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v8, "ManualModeUI.IsSimpleUIModeEnabled"

    invoke-direct {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_SimpleUIModeMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 1657
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_SimpleUIModeMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v8, 0x7f0d001d

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1658
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_SimpleUIModeMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_SUBTITLE:Lcom/oneplus/base/PropertyKey;

    const v8, 0x7f0d001e

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1659
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_SimpleUIModeMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1663
    .end local v1    # "manualItem":Lcom/oneplus/camera/ui/menu/DividerMenuItem;
    :cond_f
    new-instance v2, Lcom/oneplus/camera/ui/menu/DividerMenuItem;

    invoke-direct {v2}, Lcom/oneplus/camera/ui/menu/DividerMenuItem;-><init>()V

    .line 1664
    .local v2, "otherItem":Lcom/oneplus/camera/ui/menu/DividerMenuItem;
    sget-object v6, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v7, 0x7f0d0024

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/oneplus/camera/ui/menu/DividerMenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1665
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1668
    new-instance v6, Lcom/oneplus/camera/ui/menu/AboutMenuItem;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/ui/menu/AboutMenuItem;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_AboutMenuItem:Lcom/oneplus/camera/ui/menu/AboutMenuItem;

    .line 1669
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_AboutMenuItem:Lcom/oneplus/camera/ui/menu/AboutMenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v8, 0x7f0d0023

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/AboutMenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1670
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_AboutMenuItem:Lcom/oneplus/camera/ui/menu/AboutMenuItem;

    sget-object v7, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_SUBTITLE:Lcom/oneplus/base/PropertyKey;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_VersionName:Ljava/lang/String;

    aput-object v9, v8, v11

    const v9, 0x7f0d0087

    invoke-virtual {p0, v9, v8}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/camera/ui/menu/AboutMenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1671
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_AboutMenuItem:Lcom/oneplus/camera/ui/menu/AboutMenuItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1674
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuListView:Lcom/oneplus/camera/ui/menu/MenuListView;

    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/oneplus/camera/ui/menu/MenuListView;->setMenuItems(Ljava/util/List;)V

    .line 1515
    return-void

    .line 1536
    .end local v2    # "otherItem":Lcom/oneplus/camera/ui/menu/DividerMenuItem;
    .end local v3    # "showQuickCapture":Z
    :cond_10
    const/4 v3, 0x0

    .restart local v3    # "showQuickCapture":Z
    goto/16 :goto_0

    .line 1583
    :cond_11
    const-string/jumbo v4, "SmileCapture.Back"

    .restart local v4    # "smileFacingKey":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private setupUI()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1682
    const-string/jumbo v7, "adv_settings_action_bar_background"

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v0

    .line 1683
    .local v0, "actionBarColor":I
    const v7, 0x7f0a0017

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar;

    iput-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBar:Landroid/widget/Toolbar;

    .line 1684
    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBar:Landroid/widget/Toolbar;

    invoke-virtual {v7, v0}, Landroid/widget/Toolbar;->setBackgroundColor(I)V

    .line 1687
    const v7, 0x7f0a001b

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1688
    .local v2, "dividerView":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1693
    new-instance v3, Lcom/oneplus/base/ScreenSize;

    invoke-direct {v3, p0, v9}, Lcom/oneplus/base/ScreenSize;-><init>(Landroid/content/Context;Z)V

    .line 1694
    .local v3, "screenSize":Lcom/oneplus/base/ScreenSize;
    invoke-virtual {v3}, Lcom/oneplus/base/ScreenSize;->getStatusBarSize()I

    move-result v5

    .line 1695
    .local v5, "statusBarHeight":I
    const v7, 0x7f0a0016

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_TemporaryStatusBarSpacingView:Landroid/view/View;

    .line 1696
    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_TemporaryStatusBarSpacingView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v5, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1697
    const-string/jumbo v7, "adv_settings_status_bar_background"

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v4

    .line 1698
    .local v4, "statusBarColor":I
    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_TemporaryStatusBarSpacingView:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1699
    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBar:Landroid/widget/Toolbar;

    invoke-virtual {v7}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v7, v8, v5, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1702
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v6

    .line 1703
    .local v6, "visibility":I
    or-int/lit16 v6, v6, 0x400

    .line 1704
    invoke-static {}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-getcom-oneplus-base-BaseActivity$ThemeModeSwitchesValues()[I

    move-result-object v8

    sget-object v7, Lcom/oneplus/camera/AdvancedSettingsActivity;->PROP_THEME_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {v7}, Lcom/oneplus/base/BaseActivity$ThemeMode;->ordinal()I

    move-result v7

    aget v7, v8, v7

    packed-switch v7, :pswitch_data_0

    .line 1715
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1716
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1719
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->isSecureMode()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1720
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, 0x80000

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 1723
    :cond_0
    const v7, 0x7f0a001a

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBarTitle:Landroid/widget/TextView;

    .line 1724
    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBarTitle:Landroid/widget/TextView;

    const-string/jumbo v8, "adv_settings_action_bar_title"

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1725
    const v7, 0x7f0a0019

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_BackButton:Landroid/widget/ImageButton;

    .line 1726
    const-string/jumbo v7, "actionbar_button_back"

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getThemeDrawableResId(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1727
    .local v1, "backButtonDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 1728
    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_BackButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1729
    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_BackButton:Landroid/widget/ImageButton;

    new-instance v8, Lcom/oneplus/camera/AdvancedSettingsActivity$3;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$3;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1739
    const v7, 0x7f0a001d

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/ui/menu/MenuListView;

    iput-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuListView:Lcom/oneplus/camera/ui/menu/MenuListView;

    .line 1740
    iget-object v7, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuListView:Lcom/oneplus/camera/ui/menu/MenuListView;

    new-instance v8, Lcom/oneplus/camera/AdvancedSettingsActivity$4;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$4;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity;)V

    invoke-virtual {v7, v8}, Lcom/oneplus/camera/ui/menu/MenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1679
    return-void

    .line 1708
    .end local v1    # "backButtonDrawable":Landroid/graphics/drawable/Drawable;
    :pswitch_0
    and-int/lit16 v6, v6, -0x2001

    .line 1709
    goto :goto_0

    .line 1712
    :pswitch_1
    or-int/lit16 v6, v6, 0x2000

    .line 1713
    goto :goto_0

    .line 1704
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private unregisterReceivers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1754
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->isSecureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1758
    sget-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterReceivers() - Shutdown receiver"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1760
    iput-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 1752
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1148
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->closeGridFragment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1149
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->closeAgreementFragment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 1150
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->closeAboutFragment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1151
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->closeWatermarkFragment(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1153
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 1163
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1165
    sget-object v2, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCreate() - Activity: "

    invoke-static {v2, v3, p0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1167
    sget-object v2, Lcom/oneplus/camera/AdvancedSettingsActivity;->PROP_THEME_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/BaseActivity$ThemeMode;

    iput-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ThemeMode:Lcom/oneplus/base/BaseActivity$ThemeMode;

    .line 1168
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ThemeMode:Lcom/oneplus/base/BaseActivity$ThemeMode;

    sget-object v3, Lcom/oneplus/base/BaseActivity$ThemeMode;->DARK:Lcom/oneplus/base/BaseActivity$ThemeMode;

    if-ne v2, v3, :cond_3

    .line 1169
    const v2, 0x7f0c001e

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->setTheme(I)V

    .line 1176
    :goto_0
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->setContentView(I)V

    .line 1179
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->setupUI()V

    .line 1182
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->registerReceivers()V

    .line 1185
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1188
    .local v1, "extras":Landroid/os/Bundle;
    new-instance v2, Lcom/oneplus/base/Settings;

    const-string/jumbo v3, "Settings.Name"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Settings.IsVolatile"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-direct {v2, p0, v3, v4}, Lcom/oneplus/base/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    .line 1191
    const-string/jumbo v2, "IsActivePictureInfoOptionsVisible"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasActivePictureInfoSetting:Z

    .line 1192
    const-string/jumbo v2, "IsBokehOriginalPictureSupported"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasBokehOriginalSetting:Z

    .line 1193
    const-string/jumbo v2, "IsManualCaptureOptionsVisible"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasManualCaptureSetting:Z

    .line 1194
    iput-boolean v5, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasRawCaptureSetting:Z

    .line 1197
    const-string/jumbo v2, "IsVideFrameRateVisible"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasVideoFrameRateSetting:Z

    .line 1198
    const-string/jumbo v2, "OutputUri"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_OutputUriStr:Ljava/lang/String;

    .line 1200
    invoke-static {}, Lcom/oneplus/camera/CameraApplication;->current()Lcom/oneplus/camera/CameraApplication;

    move-result-object v2

    const-class v3, Lcom/oneplus/io/StorageManager;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/io/StorageManager;

    iput-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    .line 1201
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    if-eqz v2, :cond_0

    .line 1203
    new-instance v2, Lcom/oneplus/camera/AdvancedSettingsActivity$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$1;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity;)V

    iput-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManagerCallBack:Lcom/oneplus/base/PropertyChangedCallback;

    .line 1212
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    sget-object v3, Lcom/oneplus/io/StorageManager;->PROP_STORAGE_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManagerCallBack:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/io/StorageManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1216
    :cond_0
    const-string/jumbo v2, "IsMirrorSupported"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsMirrorSupported:Z

    .line 1219
    const-string/jumbo v2, "IsServiceMode"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsServiceMode:Z

    .line 1224
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_VersionName:Ljava/lang/String;

    .line 1226
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_VersionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_1

    .line 1228
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_VersionName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_VersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1237
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->setupMenuItems()V

    .line 1240
    if-eqz p1, :cond_2

    .line 1241
    const-string/jumbo v2, "FragmentMode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_FragmentMode:I

    .line 1160
    :cond_2
    return-void

    .line 1170
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ThemeMode:Lcom/oneplus/base/BaseActivity$ThemeMode;

    sget-object v3, Lcom/oneplus/base/BaseActivity$ThemeMode;->ANDROID:Lcom/oneplus/base/BaseActivity$ThemeMode;

    if-ne v2, v3, :cond_4

    .line 1171
    const v2, 0x7f0c0016

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->setTheme(I)V

    goto/16 :goto_0

    .line 1173
    :cond_4
    const v2, 0x7f0c0015

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->setTheme(I)V

    goto/16 :goto_0

    .line 1232
    .restart local v1    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 1233
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCreate - getPackageInfo failed"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 1249
    sget-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroy() - Activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->unregisterReceivers()V

    .line 1255
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    sget-object v1, Lcom/oneplus/io/StorageManager;->PROP_STORAGE_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManagerCallBack:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/io/StorageManager;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1259
    :cond_0
    invoke-super {p0}, Lcom/oneplus/base/BaseActivity;->onDestroy()V

    .line 1247
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1267
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 1294
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ThemeMode:Lcom/oneplus/base/BaseActivity$ThemeMode;

    sget-object v2, Lcom/oneplus/camera/AdvancedSettingsActivity;->PROP_THEME_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 1295
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->recreate()V

    .line 1298
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_LocationMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v2, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v4, "Location.Save"

    invoke-virtual {v3, v4}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1299
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutterSoundMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v2, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v4, "ShutterSound"

    invoke-virtual {v3, v4}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1300
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_QuickCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    if-eqz v1, :cond_1

    .line 1301
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_QuickCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v2, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v4, "IsQuickCaptureEnabled"

    invoke-virtual {v3, v4}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1302
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasBokehOriginalSetting:Z

    if-eqz v1, :cond_2

    .line 1303
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_BokehOriginalMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v2, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v4, "BokehOriginalPicture"

    invoke-virtual {v3, v4}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1304
    :cond_2
    iget-boolean v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasRawCaptureSetting:Z

    if-eqz v1, :cond_3

    .line 1305
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_RawCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v2, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v4, "RawCapture"

    invoke-virtual {v3, v4}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1306
    :cond_3
    iget-boolean v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasSmileCaptureSetting:Z

    if-eqz v1, :cond_4

    .line 1309
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v2, "CameraLensFacing"

    invoke-virtual {v1, v2}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "front"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1310
    const-string/jumbo v0, "SmileCapture.Front"

    .line 1313
    .local v0, "smileFacingKey":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_SmileCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v2, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    invoke-virtual {v3, v0}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1315
    .end local v0    # "smileFacingKey":Ljava/lang/String;
    :cond_4
    iget-boolean v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasVideoFrameRateSetting:Z

    if-eqz v1, :cond_5

    .line 1316
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_VideoFrameRateMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v2, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v4, "VideoFrameRate"

    invoke-virtual {v3, v4}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1317
    :cond_5
    iget-boolean v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasManualCaptureSetting:Z

    if-eqz v1, :cond_7

    .line 1319
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ManualPictureInformationItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    if-eqz v1, :cond_6

    .line 1320
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ManualPictureInformationItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v2, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v4, "PictureInformation"

    invoke-virtual {v3, v4}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1321
    :cond_6
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ManualHorizontalLineItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v2, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v4, "HorizontalReferenceLine"

    invoke-virtual {v3, v4}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1322
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ManualHistogramItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v2, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v4, "Histogram"

    invoke-virtual {v3, v4}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1323
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_SimpleUIModeMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v2, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v4, "ManualModeUI.IsSimpleUIModeEnabled"

    invoke-virtual {v3, v4}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1325
    :cond_7
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_GridMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v3, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_SUBTITLE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v4, "Grid.Type"

    const-class v5, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    invoke-virtual {v1, v4, v5}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    invoke-static {p0, v1}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getGridTypeDescription(Landroid/content/Context;Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1328
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->handleStorageMenuItem()V

    .line 1331
    iget-boolean v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsMirrorSupported:Z

    if-eqz v1, :cond_8

    .line 1332
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsMirroredMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v2, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v4, "IsMirrored"

    invoke-virtual {v3, v4}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1335
    :cond_8
    invoke-super {p0}, Lcom/oneplus/base/BaseActivity;->onResume()V

    .line 1291
    return-void

    .line 1312
    :cond_9
    const-string/jumbo v0, "SmileCapture.Back"

    .restart local v0    # "smileFacingKey":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1344
    const-string/jumbo v0, "FragmentMode"

    iget v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_FragmentMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1347
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1341
    return-void
.end method

.method public onTitleChanged(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBarTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBarTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1353
    :cond_0
    return-void
.end method
