.class public Lcom/android/settings_ex/DevelopmentSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;
    }
.end annotation


# static fields
.field private static final ANIMATOR_DURATION_SCALE_KEY:Ljava/lang/String; = "animator_duration_scale"

.field private static final APP_PROCESS_LIMIT_KEY:Ljava/lang/String; = "app_process_limit"

.field private static final BT_HCI_SNOOP_LOG:Ljava/lang/String; = "bt_hci_snoop_log"

.field private static final BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final BUGREPORT_IN_POWER_KEY:Ljava/lang/String; = "bugreport_in_power"

.field private static final CHOOSE_LOCK_GENERIC_REQUEST:I = 0x66

.field private static final CLEAR_ADB_KEYS:Ljava/lang/String; = "clear_adb_keys"

.field private static final CONFIRM_REQUEST:I = 0x65

.field private static final DEBUG_APP_KEY:Ljava/lang/String; = "debug_app"

.field private static final DEBUG_BASE_CATEGORY_KEY:Ljava/lang/String; = "debug_base_category"

.field private static final DEBUG_DEBUGGING_CATEGORY_KEY:Ljava/lang/String; = "debug_debugging_category"

.field private static final DEBUG_HW_OVERDRAW_KEY:Ljava/lang/String; = "debug_hw_overdraw"

.field private static final DEBUG_LAYOUT_KEY:Ljava/lang/String; = "debug_layout"

.field private static final DEBUG_VIEW_ATTRIBUTES:Ljava/lang/String; = "debug_view_attributes"

.field private static DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String; = null

.field private static final DISABLE_OVERLAYS_KEY:Ljava/lang/String; = "disable_overlays"

.field private static final ENABLE_ADB:Ljava/lang/String; = "enable_adb"

.field private static final ENABLE_DEVELOPMENT_SETTINGS:Ljava/lang/String; = "development_settings"

.field private static final ENABLE_MULTI_WINDOW_KEY:Ljava/lang/String; = "enable_multi_window"

.field private static final ENABLE_OEM_UNLOCK:Ljava/lang/String; = "oem_unlock_enable"

.field private static final ENABLE_REQUIRE_PASSWORD_TO_POWERON:Ljava/lang/String; = "require_password_to_poweron"

.field private static final ENABLE_TERMINAL:Ljava/lang/String; = "enable_terminal"

.field private static final FORCE_HARDWARE_UI_KEY:Ljava/lang/String; = "force_hw_ui"

.field private static final FORCE_MSAA_KEY:Ljava/lang/String; = "force_msaa"

.field private static final FORCE_RTL_LAYOUT_KEY:Ljava/lang/String; = "force_rtl_layout_all_locales"

.field private static final HARDWARE_UI_PROPERTY:Ljava/lang/String; = "persist.sys.ui.hw"

.field private static final HDCP_CHECKING_KEY:Ljava/lang/String; = "hdcp_checking"

.field private static final HDCP_CHECKING_PROPERTY:Ljava/lang/String; = "persist.sys.hdcp_checking"

.field private static final IMMEDIATELY_DESTROY_ACTIVITIES_KEY:Ljava/lang/String; = "immediately_destroy_activities"

.field private static final INACTIVE_APPS_KEY:Ljava/lang/String; = "inactive_apps"

.field private static final KEEP_SCREEN_ON:Ljava/lang/String; = "keep_screen_on"

.field private static final LOCAL_BACKUP_PASSWORD:Ljava/lang/String; = "local_backup_password"

.field private static final MOBILE_DATA_ALWAYS_ON:Ljava/lang/String; = "mobile_data_always_on"

.field private static final MOCK_LOCATION_APP_KEY:Ljava/lang/String; = "mock_location_app"

.field private static final MOCK_LOCATION_APP_OPS:[I

.field private static final MSAA_PROPERTY:Ljava/lang/String; = "debug.egl.force_msaa"

.field private static final MULTI_WINDOW_SYSTEM_PROPERTY:Ljava/lang/String; = "persist.sys.debug.multi_window"

.field private static final ONEPLUS_GET_LOGS:Ljava/lang/String; = "getlogs"

.field private static final OPENGL_TRACES_KEY:Ljava/lang/String; = "enable_opengl_traces"

.field private static final OPENGL_TRACES_PROPERTY:Ljava/lang/String; = "debug.egl.trace"

.field private static final OVERLAY_DISPLAY_DEVICES_KEY:Ljava/lang/String; = "overlay_display_devices"

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final POINTER_LOCATION_KEY:Ljava/lang/String; = "pointer_location"

.field public static final PREF_FILE:Ljava/lang/String; = "development"

.field public static final PREF_SHOW:Ljava/lang/String; = "show"

.field private static final REQUEST_CODE_ENABLE_OEM_UNLOCK:I = 0x0

.field private static final RESULT_DEBUG_APP:I = 0x3e8

.field private static final RESULT_MOCK_LOCATION_APP:I = 0x3e9

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SELECT_LOGD_DEFAULT_SIZE_PROPERTY:Ljava/lang/String; = "ro.logd.size"

.field private static final SELECT_LOGD_SIZE_KEY:Ljava/lang/String; = "select_logd_size"

.field private static final SELECT_LOGD_SIZE_PROPERTY:Ljava/lang/String; = "persist.logd.size"

.field private static final SHOW_ALL_ANRS_KEY:Ljava/lang/String; = "show_all_anrs"

.field private static final SHOW_CPU_USAGE_KEY:Ljava/lang/String; = "show_cpu_usage"

.field private static final SHOW_HW_LAYERS_UPDATES_KEY:Ljava/lang/String; = "show_hw_layers_udpates"

.field private static final SHOW_HW_SCREEN_UPDATES_KEY:Ljava/lang/String; = "show_hw_screen_udpates"

.field private static final SHOW_NON_RECTANGULAR_CLIP_KEY:Ljava/lang/String; = "show_non_rect_clip"

.field private static final SHOW_SCREEN_UPDATES_KEY:Ljava/lang/String; = "show_screen_updates"

.field private static final SHOW_TOUCHES_KEY:Ljava/lang/String; = "show_touches"

.field private static final SIMULATE_COLOR_SPACE:Ljava/lang/String; = "simulate_color_space"

.field private static final STRICT_MODE_KEY:Ljava/lang/String; = "strict_mode"

.field private static final TAG:Ljava/lang/String; = "DevelopmentSettings"

.field private static final TERMINAL_APP_PACKAGE:Ljava/lang/String; = "com.android.terminal"

.field private static final TRACK_FRAME_TIME_KEY:Ljava/lang/String; = "track_frame_time"

.field private static final TRANSITION_ANIMATION_SCALE_KEY:Ljava/lang/String; = "transition_animation_scale"

.field private static final TUNER_UI_KEY:Ljava/lang/String; = "tuner_ui"

.field private static final USB_AUDIO_KEY:Ljava/lang/String; = "usb_audio"

.field private static final USB_CONFIGURATION_KEY:Ljava/lang/String; = "select_usb_configuration"

.field private static final VERIFY_APPS_OVER_USB_KEY:Ljava/lang/String; = "verify_apps_over_usb"

.field private static final WAIT_FOR_DEBUGGER_KEY:Ljava/lang/String; = "wait_for_debugger"

.field private static final WIFI_AGGRESSIVE_HANDOVER_KEY:Ljava/lang/String; = "wifi_aggressive_handover"

.field private static final WIFI_ALLOW_SCAN_WITH_TRAFFIC_KEY:Ljava/lang/String; = "wifi_allow_scan_with_traffic"

.field private static final WIFI_DISPLAY_CERTIFICATION_KEY:Ljava/lang/String; = "wifi_display_certification"

.field private static final WIFI_LEGACY_DHCP_CLIENT_KEY:Ljava/lang/String; = "legacy_dhcp_client"

.field private static final WIFI_VERBOSE_LOGGING_KEY:Ljava/lang/String; = "wifi_verbose_logging"

.field private static final WINDOW_ANIMATION_SCALE_KEY:Ljava/lang/String; = "window_animation_scale"


# instance fields
.field private mAdbDialog:Landroid/app/Dialog;

.field private mAdbKeysDialog:Landroid/app/Dialog;

.field private final mAllPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorDurationScale:Landroid/preference/ListPreference;

.field private mAppProcessLimit:Landroid/preference/ListPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBtHciSnoopLog:Landroid/preference/SwitchPreference;

.field private mBugreport:Landroid/preference/Preference;

.field private mBugreportInPower:Landroid/preference/SwitchPreference;

.field private mChallenge:J

.field mCheckPasswordSuccess:Z

.field private mClearAdbKeys:Landroid/preference/Preference;

.field private mDebugApp:Ljava/lang/String;

.field private mDebugAppPref:Landroid/preference/Preference;

.field private mDebugBaseCategory:Landroid/preference/PreferenceCategory;

.field private mDebugHwOverdraw:Landroid/preference/ListPreference;

.field private mDebugLayout:Landroid/preference/SwitchPreference;

.field private mDebugViewAttributes:Landroid/preference/SwitchPreference;

.field private mDialogClicked:Z

.field private mDisableOverlays:Landroid/preference/SwitchPreference;

.field private final mDisabledPrefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mDontPokeProperties:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableAdb:Landroid/preference/SwitchPreference;

.field private mEnableDialog:Landroid/app/Dialog;

.field private mEnableMultiWindow:Landroid/preference/SwitchPreference;

.field private mEnableOemUnlock:Landroid/preference/SwitchPreference;

.field private mEnableTerminal:Landroid/preference/SwitchPreference;

.field private mEnabledDevelopmentSettings:Landroid/preference/SwitchPreference;

.field private mEnabledRequirePasswordToPowerOn:Landroid/preference/SwitchPreference;

.field private mForceHardwareUi:Landroid/preference/SwitchPreference;

.field private mForceMsaa:Landroid/preference/SwitchPreference;

.field private mForceRtlLayout:Landroid/preference/SwitchPreference;

.field private mHaveDebugSettings:Z

.field private mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

.field private mKeepScreenOn:Landroid/preference/SwitchPreference;

.field private mLastEnabledState:Z

.field private mLegacyDhcpClient:Landroid/preference/SwitchPreference;

.field private mLogdSize:Landroid/preference/ListPreference;

.field private mLogsPreference:Landroid/preference/Preference;

.field private mMobileDataAlwaysOn:Landroid/preference/SwitchPreference;

.field private mMockLocationApp:Ljava/lang/String;

.field private mMockLocationAppPref:Landroid/preference/Preference;

.field private mOpenGLTraces:Landroid/preference/ListPreference;

.field private mOverlayDisplayDevices:Landroid/preference/ListPreference;

.field private mPassword:Landroid/preference/PreferenceScreen;

.field private mPointerLocation:Landroid/preference/SwitchPreference;

.field private final mResetSwitchPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/SwitchPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mShowAllANRs:Landroid/preference/SwitchPreference;

.field private mShowCpuUsage:Landroid/preference/SwitchPreference;

.field private mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

.field private mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

.field private mShowNonRectClip:Landroid/preference/ListPreference;

.field private mShowScreenUpdates:Landroid/preference/SwitchPreference;

.field private mShowTouches:Landroid/preference/SwitchPreference;

.field private mSimulateColorSpace:Landroid/preference/ListPreference;

.field private mStrictMode:Landroid/preference/SwitchPreference;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mTrackFrameTime:Landroid/preference/ListPreference;

.field private mTransitionAnimationScale:Landroid/preference/ListPreference;

.field private mUSBAudio:Landroid/preference/SwitchPreference;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbConfiguration:Landroid/preference/ListPreference;

.field private mUsbReceiver:Landroid/content/BroadcastReceiver;

.field private mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

.field private mWaitForDebugger:Landroid/preference/SwitchPreference;

.field private mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

.field private mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

.field private mWifiDisplayCertification:Landroid/preference/SwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiVerboseLogging:Landroid/preference/SwitchPreference;

.field private mWindowAnimationScale:Landroid/preference/ListPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 187
    const-string v0, "262144"

    sput-object v0, Lcom/android/settings_ex/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    .line 189
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3a

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    .line 2222
    new-instance v0, Lcom/android/settings_ex/DevelopmentSettings$9;

    invoke-direct {v0}, Lcom/android/settings_ex/DevelopmentSettings$9;-><init>()V

    sput-object v0, Lcom/android/settings_ex/DevelopmentSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    .line 274
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    .line 1743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mCheckPasswordSuccess:Z

    .line 2132
    new-instance v0, Lcom/android/settings_ex/DevelopmentSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DevelopmentSettings$8;-><init>(Lcom/android/settings_ex/DevelopmentSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 2152
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/DevelopmentSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DevelopmentSettings;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/DevelopmentSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DevelopmentSettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/DevelopmentSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DevelopmentSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DevelopmentSettings;->setEnableMultiWindow(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/DevelopmentSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DevelopmentSettings;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->launchChooseOrConfirmLock()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/DevelopmentSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DevelopmentSettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledRequirePasswordToPowerOn:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/DevelopmentSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DevelopmentSettings;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateUsbConfigurationValues()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/DevelopmentSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DevelopmentSettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/android/settings_ex/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/android/settings_ex/DevelopmentSettings;->showEnableMultiWindowPreference()Z

    move-result v0

    return v0
.end method

.method private addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;
    .locals 2
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 448
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 449
    .local v0, "pref":Landroid/preference/ListPreference;
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 451
    return-object v0
.end method

.method private confirmEnableMultiWindowMode()V
    .locals 3

    .prologue
    .line 1659
    new-instance v0, Lcom/android/settings_ex/DevelopmentSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DevelopmentSettings$4;-><init>(Lcom/android/settings_ex/DevelopmentSettings;)V

    .line 1668
    .local v0, "onConfirmListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0ac7

    invoke-virtual {v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0ac8

    invoke-virtual {v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c07a2

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/app/OPAlertDialog;->show()V

    .line 1674
    return-void
.end method

.method private confirmEnableOemUnlock()V
    .locals 5

    .prologue
    .line 1621
    new-instance v1, Lcom/android/settings_ex/DevelopmentSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/DevelopmentSettings$1;-><init>(Lcom/android/settings_ex/DevelopmentSettings;)V

    .line 1629
    .local v1, "onConfirmListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/settings_ex/DevelopmentSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DevelopmentSettings$2;-><init>(Lcom/android/settings_ex/DevelopmentSettings;)V

    .line 1638
    .local v0, "onCancelListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/settings_ex/DevelopmentSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/DevelopmentSettings$3;-><init>(Lcom/android/settings_ex/DevelopmentSettings;)V

    .line 1649
    .local v2, "onTouchOutsideListener":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v3, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0875

    invoke-virtual {v3, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c0876

    invoke-virtual {v3, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c07a2

    invoke-virtual {v3, v4, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4, v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/app/OPAlertDialog;->show()V

    .line 1656
    return-void
.end method

.method private confirmEnabledRequirePasswordToPowerOnMode()V
    .locals 5

    .prologue
    .line 1677
    new-instance v1, Lcom/android/settings_ex/DevelopmentSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/DevelopmentSettings$5;-><init>(Lcom/android/settings_ex/DevelopmentSettings;)V

    .line 1684
    .local v1, "onConfirmListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/settings_ex/DevelopmentSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DevelopmentSettings$6;-><init>(Lcom/android/settings_ex/DevelopmentSettings;)V

    .line 1694
    .local v0, "onCancelListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/settings_ex/DevelopmentSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/DevelopmentSettings$7;-><init>(Lcom/android/settings_ex/DevelopmentSettings;)V

    .line 1706
    .local v2, "onTouchOutsideListener":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v3, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0275

    invoke-virtual {v3, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c0277

    invoke-virtual {v3, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c07a2

    invoke-virtual {v3, v4, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4, v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/app/OPAlertDialog;->show()V

    .line 1713
    return-void
.end method

.method private static currentStrictModeActiveIndex()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 965
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 970
    .local v0, "enabled":Z
    :goto_0
    return v1

    .line 968
    .end local v0    # "enabled":Z
    :cond_0
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 970
    .restart local v0    # "enabled":Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private disableForUser(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 455
    if-eqz p1, :cond_0

    .line 456
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 457
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_0
    return-void
.end method

.method private dismissDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2051
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2052
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2053
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 2055
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 2056
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2057
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    .line 2059
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 2060
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2061
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 2063
    :cond_2
    return-void
.end method

.method private enableVerifierSetting()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 886
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 887
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "adb_enabled"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1

    .line 905
    :cond_0
    :goto_0
    return v4

    .line 890
    :cond_1
    const-string v6, "package_verifier_enable"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    .line 894
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 895
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 897
    .local v3, "verification":Landroid/content/Intent;
    const-string v6, "application/vnd.android.package-archive"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 899
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 901
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 905
    goto :goto_0
.end method

.method private findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 462
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 463
    .local v0, "pref":Landroid/preference/SwitchPreference;
    if-nez v0, :cond_0

    .line 464
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find preference with key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 467
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    return-object v0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2183
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 2185
    :cond_0
    :goto_0
    return v1

    .line 2184
    :catch_0
    move-exception v0

    .line 2185
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private launchChooseOrConfirmLock()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 2013
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2015
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 2016
    .local v1, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    const/16 v2, 0x65

    const v3, 0x7f0c0132

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mChallenge:J

    move-object v5, v4

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2019
    const-string v2, "com.android.settings"

    const-class v3, Lcom/android/settings_ex/ChooseLockGeneric;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2020
    const-string v2, "minimum_quality"

    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2022
    const-string v2, "hide_disabled_prefs"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2024
    const-string v2, "has_challenge"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2025
    const-string v2, "challenge"

    iget-wide v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mChallenge:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2026
    const-string v2, "for_password_toggle_to_poweron"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2027
    const/16 v2, 0x66

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2029
    :cond_0
    return-void
.end method

.method private removePreference(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 497
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 498
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 499
    return-void
.end method

.method private removePreferenceForProduction(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 488
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 490
    const/4 v0, 0x1

    .line 492
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetDangerousOptions()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 677
    iput-boolean v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDontPokeProperties:Z

    .line 678
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 679
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 681
    .local v0, "cb":Landroid/preference/SwitchPreference;
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 682
    if-eqz v0, :cond_1

    const-string v2, "require_password_to_poweron"

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 678
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 685
    :cond_1
    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 686
    invoke-virtual {p0, v4, v0}, Lcom/android/settings_ex/DevelopmentSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto :goto_1

    .line 689
    .end local v0    # "cb":Landroid/preference/SwitchPreference;
    :cond_2
    invoke-static {}, Lcom/android/settings_ex/DevelopmentSettings;->resetDebuggerOptions()V

    .line 690
    invoke-direct {p0, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    .line 691
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v2, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 692
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v6, v2, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 693
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 695
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->usingDevelopmentColorSpace()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 696
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    .line 698
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    .line 699
    invoke-direct {p0, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 700
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 701
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAllOptions()V

    .line 702
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDontPokeProperties:Z

    .line 703
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 704
    return-void
.end method

.method private static resetDebuggerOptions()V
    .locals 4

    .prologue
    .line 800
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    :goto_0
    return-void

    .line 801
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setEnableMultiWindow(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 922
    const-string v0, "persist.sys.debug.multi_window"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 925
    return-void
.end method

.method private setPrefsEnabledState(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 502
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 503
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 505
    .local v2, "pref":Landroid/preference/Preference;
    if-eqz v2, :cond_0

    const-string v3, "require_password_to_poweron"

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 502
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 508
    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    move v3, v5

    goto :goto_2

    .line 510
    .end local v2    # "pref":Landroid/preference/Preference;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAllOptions()V

    .line 511
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledDevelopmentSettings:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_3

    .line 512
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledDevelopmentSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 514
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledDevelopmentSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 515
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "adb_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 516
    .local v1, "mEnableAdbVal":I
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    :goto_3
    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 519
    .end local v1    # "mEnableAdbVal":I
    :cond_3
    return-void

    .restart local v1    # "mEnableAdbVal":I
    :cond_4
    move v4, v5

    .line 516
    goto :goto_3
.end method

.method private static showEnableMultiWindowPreference()Z
    .locals 2

    .prologue
    .line 918
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static showEnableOemUnlockPreference()Z
    .locals 2

    .prologue
    .line 914
    const-string v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showKeyguardConfirmation(Landroid/content/res/Resources;I)Z
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "requestCode"    # I

    .prologue
    .line 1939
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v1, 0x7f0c0873

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private showVerifierSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 909
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_setting_visible"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startInactiveAppsFragment()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1932
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    const-class v1, Lcom/android/settings_ex/fuelgauge/InactiveApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0d62

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1935
    return-void
.end method

.method private updateAllOptions()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 601
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 602
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 603
    .local v1, "cr":Landroid/content/ContentResolver;
    iput-boolean v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 613
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 614
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v6, "com.android.terminal"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 619
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 621
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    const-string v2, "stay_on_while_plugged_in"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 623
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    const-string v2, "bluetooth_hci_log"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_3
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 625
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 626
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "oem.unlock.support"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 628
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/Utils;->isOemUnlockEnabled(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 632
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    const-string v5, "debug_view_attributes"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    :goto_4
    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 634
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateHdcpValues()V

    .line 635
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updatePasswordSummary()V

    .line 636
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebuggerOptions()V

    .line 637
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateMockLocation()V

    .line 638
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateStrictModeVisualOptions()V

    .line 639
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updatePointerLocationOptions()V

    .line 640
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowTouchesOptions()V

    .line 641
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateFlingerOptions()V

    .line 642
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateCpuUsageOptions()V

    .line 643
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateHardwareUiOptions()V

    .line 644
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateMsaaOptions()V

    .line 645
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 646
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 647
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowHwScreenUpdatesOptions()V

    .line 648
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowHwLayersUpdatesOptions()V

    .line 649
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 650
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebugLayoutOptions()V

    .line 651
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleOptions()V

    .line 652
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 653
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 654
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    const-string v3, "persist.sys.debug.multi_window"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 658
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 659
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    .line 660
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAppProcessLimitOptions()V

    .line 661
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowAllANRsOptions()V

    .line 662
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 663
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateBugreportOptions()V

    .line 664
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateForceRtlOptions()V

    .line 665
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateLogdSizeValues()V

    .line 666
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWifiDisplayCertificationOptions()V

    .line 667
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWifiVerboseLoggingOptions()V

    .line 668
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWifiAggressiveHandoverOptions()V

    .line 669
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWifiAllowScansWithTrafficOptions()V

    .line 670
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateLegacyDhcpClientOptions()V

    .line 671
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateMobileDataAlwaysOnOptions()V

    .line 672
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSimulateColorSpace()V

    .line 673
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateUSBAudioOptions()V

    .line 674
    return-void

    :cond_3
    move v2, v4

    .line 614
    goto/16 :goto_0

    :cond_4
    move v2, v4

    .line 619
    goto/16 :goto_1

    :cond_5
    move v2, v4

    .line 621
    goto/16 :goto_2

    :cond_6
    move v2, v4

    .line 623
    goto/16 :goto_3

    :cond_7
    move v3, v4

    .line 632
    goto/16 :goto_4
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    .prologue
    .line 1508
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 1509
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 1510
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 1511
    return-void
.end method

.method private updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    .locals 6
    .param p1, "which"    # I
    .param p2, "pref"    # Landroid/preference/ListPreference;

    .prologue
    .line 1488
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    .line 1489
    .local v1, "scale":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    .line 1490
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1492
    :cond_0
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1493
    .local v3, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1494
    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1495
    .local v2, "val":F
    cmpg-float v4, v1, v2

    if-gtz v4, :cond_1

    .line 1496
    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1497
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1505
    .end local v0    # "i":I
    .end local v1    # "scale":F
    .end local v2    # "val":F
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1493
    .restart local v0    # "i":I
    .restart local v1    # "scale":F
    .restart local v2    # "val":F
    .restart local v3    # "values":[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1501
    .end local v2    # "val":F
    :cond_2
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1502
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1503
    .end local v0    # "i":I
    .end local v1    # "scale":F
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateAppProcessLimitOptions()V
    .locals 7

    .prologue
    .line 1578
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v1

    .line 1579
    .local v1, "limit":I
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1580
    .local v3, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1581
    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1582
    .local v2, "val":I
    if-lt v2, v1, :cond_1

    .line 1583
    if-eqz v0, :cond_0

    .line 1584
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1586
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1587
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1596
    .end local v0    # "i":I
    .end local v1    # "limit":I
    .end local v2    # "val":I
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1580
    .restart local v0    # "i":I
    .restart local v1    # "limit":I
    .restart local v2    # "val":I
    .restart local v3    # "values":[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1592
    .end local v2    # "val":I
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1593
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1594
    .end local v0    # "i":I
    .end local v1    # "limit":I
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateBugreportOptions()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 928
    new-instance v1, Landroid/content/ComponentName;

    const-string v5, "com.android.shell"

    const-string v6, "com.android.shell.BugreportStorageProvider"

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    .local v1, "bugreportStorageProviderComponentName":Landroid/content/ComponentName;
    const-string v5, "user"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 932
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 933
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v5, "adb_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 935
    .local v0, "adbEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 936
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 937
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 938
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 957
    .end local v0    # "adbEnabled":Z
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :goto_1
    return-void

    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    move v0, v4

    .line 933
    goto :goto_0

    .line 942
    .restart local v0    # "adbEnabled":Z
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 943
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 944
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 945
    const-string v3, "bugreport_in_power_menu"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 947
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_1

    .line 952
    .end local v0    # "adbEnabled":Z
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 953
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_1
.end method

.method private updateCpuUsageOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1454
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1457
    return-void
.end method

.method private updateDebugHwOverdrawOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1170
    const-string v3, "debug.hwui.overdraw"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1172
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1173
    const-string v1, ""

    .line 1176
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1177
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1178
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1179
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1180
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1186
    :goto_1
    return-void

    .line 1177
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1184
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1185
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateDebugLayoutOptions()V
    .locals 3

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    const-string v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1198
    return-void
.end method

.method private updateDebuggerOptions()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 806
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "debug_app"

    invoke-static {v4, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 808
    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "wait_for_debugger"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {p0, v7, v4}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 811
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 814
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    const/16 v8, 0x200

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 817
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 819
    .local v2, "lab":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 823
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "lab":Ljava/lang/CharSequence;
    .local v3, "label":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0a98

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v3, v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 825
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 826
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 832
    .end local v3    # "label":Ljava/lang/String;
    :goto_2
    return-void

    :cond_0
    move v4, v6

    .line 808
    goto :goto_0

    .line 819
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "lab":Ljava/lang/CharSequence;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 820
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "lab":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 821
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_1

    .line 828
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "label":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0c0a97

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 830
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateFlingerOptions()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1011
    :try_start_0
    const-string v10, "SurfaceFlinger"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1012
    .local v3, "flinger":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 1013
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1014
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1015
    .local v4, "reply":Landroid/os/Parcel;
    const-string v10, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1016
    const/16 v10, 0x3f2

    const/4 v11, 0x0

    invoke-interface {v3, v10, v0, v4, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1018
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1020
    .local v6, "showCpu":I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1021
    .local v2, "enableGL":I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1022
    .local v7, "showUpdates":I
    iget-object v11, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_1

    move v10, v8

    :goto_0
    invoke-virtual {p0, v11, v10}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1024
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1025
    .local v5, "showBackground":I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1026
    .local v1, "disableOverlays":I
    iget-object v10, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p0, v10, v8}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1027
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "enableGL":I
    .end local v3    # "flinger":Landroid/os/IBinder;
    .end local v4    # "reply":Landroid/os/Parcel;
    .end local v5    # "showBackground":I
    .end local v6    # "showCpu":I
    .end local v7    # "showUpdates":I
    :cond_0
    :goto_2
    return-void

    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "enableGL":I
    .restart local v3    # "flinger":Landroid/os/IBinder;
    .restart local v4    # "reply":Landroid/os/Parcel;
    .restart local v6    # "showCpu":I
    .restart local v7    # "showUpdates":I
    :cond_1
    move v10, v9

    .line 1022
    goto :goto_0

    .restart local v1    # "disableOverlays":I
    .restart local v5    # "showBackground":I
    :cond_2
    move v8, v9

    .line 1026
    goto :goto_1

    .line 1030
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "enableGL":I
    .end local v3    # "flinger":Landroid/os/IBinder;
    .end local v4    # "reply":Landroid/os/Parcel;
    .end local v5    # "showBackground":I
    .end local v6    # "showCpu":I
    .end local v7    # "showUpdates":I
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private updateForceRtlOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1283
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug.force_rtl"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1286
    return-void
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1072
    return-void
.end method

.method private updateHdcpValues()V
    .locals 8

    .prologue
    .line 707
    const-string v6, "hdcp_checking"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 708
    .local v1, "hdcpChecking":Landroid/preference/ListPreference;
    if-eqz v1, :cond_1

    .line 709
    const-string v6, "persist.sys.hdcp_checking"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, "currentValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a004a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 712
    .local v5, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a004b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 714
    .local v4, "summaries":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 716
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 717
    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 718
    move v3, v2

    .line 722
    :cond_0
    aget-object v6, v5, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 723
    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 724
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 726
    .end local v0    # "currentValue":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "summaries":[Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_1
    return-void

    .line 716
    .restart local v0    # "currentValue":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "index":I
    .restart local v4    # "summaries":[Ljava/lang/String;
    .restart local v5    # "values":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateImmediatelyDestroyActivitiesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1481
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_finish_activities"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1484
    return-void
.end method

.method private updateLegacyDhcpClientOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1341
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLegacyDhcpClient:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "legacy_dhcp_client"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1344
    return-void
.end method

.method private updateLogdSizeValues()V
    .locals 9

    .prologue
    const v8, 0x7f0a0046

    .line 1365
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    if-eqz v6, :cond_4

    .line 1366
    const-string v6, "persist.logd.size"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1368
    .local v0, "currentValue":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1369
    const-string v6, "ro.logd.size"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1371
    if-nez v0, :cond_0

    .line 1372
    const-string v0, "256K"

    .line 1375
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0047

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1377
    .local v5, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0045

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1379
    .local v4, "titles":[Ljava/lang/String;
    const-string v6, "ro.config.low_ram"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1380
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1381
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1384
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1386
    .local v3, "summaries":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 1387
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_3

    .line 1388
    aget-object v6, v5, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v4, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1390
    :cond_2
    move v2, v1

    .line 1394
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1395
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1396
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1398
    .end local v0    # "currentValue":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "summaries":[Ljava/lang/String;
    .end local v4    # "titles":[Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_4
    return-void

    .line 1387
    .restart local v0    # "currentValue":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    .restart local v3    # "summaries":[Ljava/lang/String;
    .restart local v4    # "titles":[Ljava/lang/String;
    .restart local v5    # "values":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateMobileDataAlwaysOnOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1353
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data_always_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1356
    return-void
.end method

.method private updateMockLocation()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 835
    const-string v7, "appops"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 837
    .local v2, "appOpsManager":Landroid/app/AppOpsManager;
    sget-object v7, Lcom/android/settings_ex/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    invoke-virtual {v2, v7}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v6

    .line 839
    .local v6, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v6, :cond_1

    .line 840
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 841
    .local v5, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v7

    if-nez v7, :cond_0

    .line 842
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 848
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 849
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 851
    .local v4, "label":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    const/16 v9, 0x200

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 854
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 856
    .local v1, "appLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 857
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 863
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appLabel":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationAppPref:Landroid/preference/Preference;

    const v8, 0x7f0c087b

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v4, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/settings_ex/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 865
    iput-boolean v11, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 870
    .end local v4    # "label":Ljava/lang/String;
    :goto_1
    return-void

    .line 867
    :cond_3
    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationAppPref:Landroid/preference/Preference;

    const v8, 0x7f0c087a

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 859
    .restart local v4    # "label":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private updateMsaaOptions()V
    .locals 3

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    const-string v1, "debug.egl.force_msaa"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1083
    return-void
.end method

.method private updateOpenGLTracesOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1552
    const-string v3, "debug.egl.trace"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1553
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1554
    const-string v1, ""

    .line 1557
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1558
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1559
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1560
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1561
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1567
    :goto_1
    return-void

    .line 1558
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1565
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1566
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateOverlayDisplayDevicesOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1525
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "overlay_display_devices"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1527
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1528
    const-string v1, ""

    .line 1531
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1532
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1533
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1534
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1535
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1543
    :goto_1
    return-void

    .line 1532
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1540
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1541
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updatePasswordSummary()V
    .locals 2

    .prologue
    .line 730
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c0a1e

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 740
    :goto_0
    return-void

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c0a1d

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 737
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 992
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pointer_location"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 995
    return-void
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1615
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anr_show_background"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1618
    return-void
.end method

.method private updateShowHwLayersUpdatesOptions()V
    .locals 3

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    const-string v1, "debug.hwui.show_layers_updates"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1160
    return-void
.end method

.method private updateShowHwScreenUpdatesOptions()V
    .locals 3

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    const-string v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1147
    return-void
.end method

.method private updateShowNonRectClipOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1117
    const-string v3, "debug.hwui.show_non_rect_clip"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1119
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1120
    const-string v1, "hide"

    .line 1123
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1124
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1125
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1126
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1127
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1133
    :goto_1
    return-void

    .line 1124
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1131
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1132
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateShowTouchesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1003
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_touches"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1006
    return-void
.end method

.method private updateSimulateColorSpace()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 1207
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1208
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    .line 1210
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1211
    const-string v6, "accessibility_display_daltonizer"

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1214
    .local v3, "mode":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1215
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 1216
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 1218
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    const v7, 0x7f0c08c7

    new-array v4, v4, [Ljava/lang/Object;

    const v8, 0x7f0c08c3

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {p0, v7, v4}, Lcom/android/settings_ex/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1229
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :goto_1
    return-void

    .end local v1    # "enabled":Z
    :cond_0
    move v1, v5

    .line 1208
    goto :goto_0

    .line 1223
    .restart local v1    # "enabled":Z
    .restart local v2    # "index":I
    .restart local v3    # "mode":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    const-string v5, "%s"

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1226
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateStrictModeVisualOptions()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 982
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/settings_ex/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 983
    return-void

    .line 982
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTrackFrameTimeOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1092
    const-string v3, "debug.hwui.profile"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1093
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1094
    const-string v1, ""

    .line 1097
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1098
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1099
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1100
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1101
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1107
    :goto_1
    return-void

    .line 1098
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1105
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1106
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateUSBAudioOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1271
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usb_audio_automatic_routing_disabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1274
    return-void
.end method

.method private updateUsbConfigurationValues()V
    .locals 7

    .prologue
    .line 1421
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    if-eqz v5, :cond_1

    .line 1422
    const-string v5, "usb"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 1424
    .local v2, "manager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a006f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1426
    .local v4, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a006e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1428
    .local v3, "titles":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1429
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 1430
    aget-object v5, v4, v0

    invoke-virtual {v2, v5}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1431
    move v1, v0

    .line 1435
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1436
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1437
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1439
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "manager":Landroid/hardware/usb/UsbManager;
    .end local v3    # "titles":[Ljava/lang/String;
    .end local v4    # "values":[Ljava/lang/String;
    :cond_1
    return-void

    .line 1429
    .restart local v0    # "i":I
    .restart local v1    # "index":I
    .restart local v2    # "manager":Landroid/hardware/usb/UsbManager;
    .restart local v3    # "titles":[Ljava/lang/String;
    .restart local v4    # "values":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateVerifyAppsOverUsbOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 873
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "verifier_verify_adb_installs"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 876
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->enableVerifierSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 877
    return-void

    .line 873
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiAggressiveHandoverOptions()V
    .locals 2

    .prologue
    .line 1321
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAggressiveHandover()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1322
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1323
    return-void

    .line 1321
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiAllowScansWithTrafficOptions()V
    .locals 2

    .prologue
    .line 1331
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAllowScansWithTraffic()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1332
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1333
    return-void

    .line 1331
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiDisplayCertificationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1299
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_certification_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1302
    return-void
.end method

.method private updateWifiVerboseLoggingOptions()V
    .locals 2

    .prologue
    .line 1311
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1312
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1313
    return-void

    .line 1311
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private usingDevelopmentColorSpace()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1236
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1237
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    .line 1239
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1240
    const-string v6, "accessibility_display_daltonizer"

    const/4 v7, -0x1

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1243
    .local v3, "mode":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 1244
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 1249
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :goto_1
    return v4

    .end local v1    # "enabled":Z
    :cond_0
    move v1, v5

    .line 1237
    goto :goto_0

    .restart local v1    # "enabled":Z
    :cond_1
    move v4, v5

    .line 1249
    goto :goto_1
.end method

.method private writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V
    .locals 2
    .param p1, "which"    # I
    .param p2, "pref"    # Landroid/preference/ListPreference;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1516
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1518
    .local v0, "scale":F
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 1519
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1522
    .end local v0    # "scale":F
    :goto_1
    return-void

    .line 1516
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1520
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1600
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1602
    .local v0, "limit":I
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 1603
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1606
    .end local v0    # "limit":I
    :goto_1
    return-void

    .line 1600
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1604
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeBtHciSnoopLogOptions()V
    .locals 4

    .prologue
    .line 743
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 744
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->configHciSnoopLog(Z)Z

    .line 745
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_hci_log"

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 748
    return-void

    .line 745
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeCpuUsageOptions()V
    .locals 5

    .prologue
    .line 1460
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 1461
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_processes"

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1463
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.LoadAverageService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1465
    .local v0, "service":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 1466
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1470
    :goto_1
    return-void

    .line 1461
    .end local v0    # "service":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1468
    .restart local v0    # "service":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private writeDebugHwOverdrawOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1189
    const-string v1, "debug.hwui.overdraw"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1192
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 1193
    return-void

    .line 1189
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeDebugLayoutOptions()V
    .locals 2

    .prologue
    .line 1201
    const-string v1, "debug.layout"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1204
    return-void

    .line 1201
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeDebuggerOptions()V
    .locals 4

    .prologue
    .line 752
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :goto_0
    return-void

    .line 754
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeDevelopmentSettings(Ljava/lang/Object;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 2190
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2192
    .local v0, "val":Z
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "val : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLastEnabledState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2195
    iget-boolean v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    if-eq v0, v1, :cond_1

    .line 2196
    if-eqz v0, :cond_2

    .line 2197
    iput-boolean v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    .line 2198
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 2199
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 2200
    :cond_0
    new-instance v1, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setCancelable(Z)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0892

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0891

    invoke-virtual {v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2, p0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, p0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->show()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 2203
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2217
    :cond_1
    :goto_0
    return-void

    .line 2205
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->resetDangerousOptions()V

    .line 2206
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "development_settings_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2208
    iput-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    .line 2209
    iget-boolean v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 2211
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledDevelopmentSettings:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 2212
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledDevelopmentSettings:Landroid/preference/SwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private writeDisableOverlaysOption()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1053
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1054
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_1

    .line 1055
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1056
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1057
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 1059
    .local v1, "disableOverlays":I
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1060
    const/16 v3, 0x3f0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1063
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "flinger":Landroid/os/IBinder;
    :cond_1
    :goto_0
    return-void

    .line 1065
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private writeForceRtlOptions()V
    .locals 4

    .prologue
    .line 1289
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 1290
    .local v0, "value":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug.force_rtl"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1292
    const-string v2, "debug.force_rtl"

    if-eqz v0, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/android/settings_ex/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 1296
    return-void

    .line 1290
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1292
    :cond_1
    const-string v1, "0"

    goto :goto_1
.end method

.method private writeHardwareUiOptions()V
    .locals 2

    .prologue
    .line 1075
    const-string v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1078
    return-void

    .line 1075
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeImmediatelyDestroyActivitiesOptions()V
    .locals 2

    .prologue
    .line 1474
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1478
    :goto_0
    return-void

    .line 1476
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeLegacyDhcpClientOptions()V
    .locals 3

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "legacy_dhcp_client"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLegacyDhcpClient:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1350
    return-void

    .line 1347
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeLogdSizeOption(Ljava/lang/Object;)V
    .locals 7
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1401
    const-string v4, "ro.logd.size"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1403
    .local v0, "currentValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1404
    sput-object v0, Lcom/android/settings_ex/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    .line 1406
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1408
    .local v3, "size":Ljava/lang/String;
    :goto_0
    const-string v4, "persist.logd.size"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1411
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "logcat -b all -G "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 1412
    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 1413
    const-string v4, "DevelopmentSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Logcat ring buffer sizes set to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1417
    .end local v2    # "p":Ljava/lang/Process;
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateLogdSizeValues()V

    .line 1418
    return-void

    .line 1406
    .end local v3    # "size":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/settings_ex/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    goto :goto_0

    .line 1414
    .restart local v3    # "size":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1415
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "DevelopmentSettings"

    const-string v5, "Cannot set logcat ring buffer sizes"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private writeMobileDataAlwaysOnOptions()V
    .locals 3

    .prologue
    .line 1359
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data_always_on"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1362
    return-void

    .line 1359
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeMockLocation()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 759
    const-string v6, "appops"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 762
    .local v1, "appOpsManager":Landroid/app/AppOpsManager;
    sget-object v6, Lcom/android/settings_ex/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    invoke-virtual {v1, v6}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v5

    .line 764
    .local v5, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v5, :cond_1

    .line 767
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 768
    .local v4, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v6

    if-eq v6, v10, :cond_0

    .line 769
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 771
    .local v3, "oldMockLocationApp":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x200

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 774
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/16 v6, 0x3a

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v8, 0x2

    invoke-virtual {v1, v6, v7, v3, v8}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 777
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 785
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "oldMockLocationApp":Ljava/lang/String;
    .end local v4    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 787
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    const/16 v8, 0x200

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 790
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    const/16 v6, 0x3a

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 796
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_1
    return-void

    .line 792
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private writeMsaaOptions()V
    .locals 2

    .prologue
    .line 1086
    const-string v1, "debug.egl.force_msaa"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1089
    return-void

    .line 1086
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeOpenGLTracesOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1570
    const-string v1, "debug.egl.trace"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1573
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 1574
    return-void

    .line 1570
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1546
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "overlay_display_devices"

    check-cast p1, Ljava/lang/String;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1548
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 1549
    return-void
.end method

.method private writePointerLocationOptions()V
    .locals 3

    .prologue
    .line 986
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 989
    return-void

    .line 986
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowAllANRsOptions()V
    .locals 3

    .prologue
    .line 1609
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1612
    return-void

    .line 1609
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwLayersUpdatesOptions()V
    .locals 2

    .prologue
    .line 1163
    const-string v1, "debug.hwui.show_layers_updates"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1167
    return-void

    .line 1163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwScreenUpdatesOptions()V
    .locals 2

    .prologue
    .line 1150
    const-string v1, "debug.hwui.show_dirty_regions"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1153
    return-void

    .line 1150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowNonRectClipOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1136
    const-string v1, "debug.hwui.show_non_rect_clip"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1140
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 1141
    return-void

    .line 1136
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    .prologue
    .line 998
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1000
    return-void

    .line 998
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowUpdatesOption()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1036
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1037
    .local v1, "flinger":Landroid/os/IBinder;
    if-eqz v1, :cond_1

    .line 1038
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1039
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1040
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1041
    .local v2, "showUpdates":I
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1042
    const/16 v3, 0x3ea

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1045
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "flinger":Landroid/os/IBinder;
    .end local v2    # "showUpdates":I
    :cond_1
    :goto_0
    return-void

    .line 1047
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private writeSimulateColorSpace(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1253
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1254
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1255
    .local v1, "newMode":I
    if-gez v1, :cond_0

    .line 1256
    const-string v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1268
    :goto_0
    return-void

    .line 1261
    :cond_0
    const-string v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1265
    const-string v2, "accessibility_display_daltonizer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private writeStrictModeVisualOptions()V
    .locals 2

    .prologue
    .line 975
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 979
    :goto_1
    return-void

    .line 975
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 977
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private writeTrackFrameTimeOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1110
    const-string v1, "debug.hwui.profile"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1113
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 1114
    return-void

    .line 1110
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeUSBAudioOptions()V
    .locals 3

    .prologue
    .line 1277
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_audio_automatic_routing_disabled"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1280
    return-void

    .line 1277
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeUsbConfigurationOption(Ljava/lang/Object;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1442
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "usb"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    .line 1444
    .local v1, "manager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1445
    .local v0, "function":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 1446
    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1447
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    .line 1451
    :goto_0
    return-void

    .line 1449
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    goto :goto_0
.end method

.method private writeVerifyAppsOverUsbOptions()V
    .locals 3

    .prologue
    .line 880
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_verify_adb_installs"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 883
    return-void

    .line 880
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiAggressiveHandoverOptions()V
    .locals 2

    .prologue
    .line 1326
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableAggressiveHandover(I)V

    .line 1328
    return-void

    .line 1326
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiAllowScansWithTrafficOptions()V
    .locals 2

    .prologue
    .line 1336
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setAllowScansWithTraffic(I)V

    .line 1338
    return-void

    .line 1336
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiDisplayCertificationOptions()V
    .locals 3

    .prologue
    .line 1305
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_certification_on"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1308
    return-void

    .line 1305
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiVerboseLoggingOptions()V
    .locals 2

    .prologue
    .line 1316
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableVerboseLogging(I)V

    .line 1318
    return-void

    .line 1316
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 285
    const/16 v0, 0x27

    return v0
.end method

.method public hasSetPassword()Z
    .locals 3

    .prologue
    .line 2032
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2033
    .local v0, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    .line 2035
    .local v1, "passwordQuality":I
    sparse-switch v1, :sswitch_data_0

    .line 2044
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 2042
    :sswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 2035
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 474
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 476
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 478
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 479
    iget-boolean v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUnavailable:Z

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 485
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 1746
    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    .line 1748
    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 1773
    :cond_1
    :goto_0
    return-void

    .line 1750
    :cond_2
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_3

    .line 1751
    if-ne p2, v1, :cond_1

    .line 1752
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 1753
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeDebuggerOptions()V

    .line 1754
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebuggerOptions()V

    goto :goto_0

    .line 1756
    :cond_3
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_4

    .line 1757
    if-ne p2, v1, :cond_1

    .line 1758
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 1759
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeMockLocation()V

    .line 1760
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateMockLocation()V

    goto :goto_0

    .line 1762
    :cond_4
    if-nez p1, :cond_6

    .line 1763
    if-ne p2, v1, :cond_1

    .line 1764
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1765
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto :goto_0

    .line 1767
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    .line 1771
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 2066
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_2

    .line 2067
    if-ne p2, v4, :cond_1

    .line 2068
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    .line 2069
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2071
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 2072
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 2073
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateBugreportOptions()V

    .line 2101
    :cond_0
    :goto_0
    return-void

    .line 2076
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 2078
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_3

    .line 2079
    if-ne p2, v4, :cond_0

    .line 2081
    :try_start_0
    const-string v3, "usb"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2082
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    .line 2083
    .local v2, "service":Landroid/hardware/usb/IUsbManager;
    invoke-interface {v2}, Landroid/hardware/usb/IUsbManager;->clearUsbDebuggingKeys()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2084
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "service":Landroid/hardware/usb/IUsbManager;
    :catch_0
    move-exception v1

    .line 2085
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "DevelopmentSettings"

    const-string v4, "Unable to clear adb keys"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2088
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_0

    .line 2089
    if-ne p2, v4, :cond_4

    .line 2090
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    .line 2091
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "development_settings_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2093
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    .line 2094
    iget-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0

    .line 2097
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 2098
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledDevelopmentSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 290
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 292
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 294
    const-string v5, "backup"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 296
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 298
    const-string v5, "user"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    .line 300
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 302
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    const-string v6, "no_debugging_features"

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "device_provisioned"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    .line 308
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUnavailable:Z

    .line 309
    new-instance v5, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6, v8}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 445
    :goto_0
    return-void

    .line 313
    :cond_1
    const v5, 0x7f080018

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 315
    const-string v5, "debug_debugging_category"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 316
    .local v0, "debugDebuggingCategory":Landroid/preference/PreferenceGroup;
    const-string v5, "development_settings"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledDevelopmentSettings:Landroid/preference/SwitchPreference;

    .line 317
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledDevelopmentSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 318
    const-string v5, "require_password_to_poweron"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledRequirePasswordToPowerOn:Landroid/preference/SwitchPreference;

    .line 319
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledRequirePasswordToPowerOn:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->hasSetPassword()Z

    move-result v5

    if-nez v5, :cond_2

    .line 321
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledRequirePasswordToPowerOn:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 323
    :cond_2
    const-string v5, "ro.board.platform"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "platform":Ljava/lang/String;
    const-string v5, "msm8996"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 325
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledRequirePasswordToPowerOn:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 327
    :cond_3
    const-string v5, "enable_adb"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    .line 328
    const-string v5, "clear_adb_keys"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    .line 329
    const-string v5, "ro.adb.secure"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_4

    .line 330
    if-eqz v0, :cond_4

    .line 331
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 334
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    const-string v5, "enable_terminal"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    .line 336
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.terminal"

    invoke-static {v5, v6}, Lcom/android/settings_ex/DevelopmentSettings;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 337
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 338
    iput-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    .line 343
    :cond_5
    const-string v5, "getlogs"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogsPreference:Landroid/preference/Preference;

    .line 345
    const-string v5, "bugreport"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    .line 346
    const-string v5, "bugreport_in_power"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    .line 347
    const-string v5, "keep_screen_on"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    .line 348
    const-string v5, "bt_hci_snoop_log"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    .line 349
    const-string v5, "oem_unlock_enable"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    .line 350
    invoke-static {}, Lcom/android/settings_ex/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v5

    if-nez v5, :cond_6

    .line 351
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 352
    iput-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    .line 355
    :cond_6
    const-string v5, "debug_view_attributes"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    .line 356
    const-string v5, "local_backup_password"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    .line 357
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 360
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 361
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 362
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 363
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 366
    :cond_7
    const-string v5, "debug_app"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    .line 367
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    const-string v5, "wait_for_debugger"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    .line 370
    const-string v5, "mock_location_app"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationAppPref:Landroid/preference/Preference;

    .line 371
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationAppPref:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    const-string v5, "verify_apps_over_usb"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    .line 374
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->showVerifierSetting()Z

    move-result v5

    if-nez v5, :cond_8

    .line 375
    if-eqz v0, :cond_b

    .line 376
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 381
    :cond_8
    :goto_1
    const-string v5, "strict_mode"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    .line 382
    const-string v5, "pointer_location"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    .line 383
    const-string v5, "show_touches"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    .line 384
    const-string v5, "show_screen_updates"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    .line 385
    const-string v5, "disable_overlays"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    .line 386
    const-string v5, "show_cpu_usage"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    .line 387
    const-string v5, "force_hw_ui"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    .line 388
    const-string v5, "force_msaa"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    .line 389
    const-string v5, "track_frame_time"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    .line 390
    const-string v5, "show_non_rect_clip"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    .line 391
    const-string v5, "show_hw_screen_udpates"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    .line 392
    const-string v5, "show_hw_layers_udpates"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    .line 393
    const-string v5, "debug_layout"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    .line 394
    const-string v5, "force_rtl_layout_all_locales"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    .line 395
    const-string v5, "debug_hw_overdraw"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    .line 396
    const-string v5, "wifi_display_certification"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    .line 397
    const-string v5, "wifi_verbose_logging"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    .line 398
    const-string v5, "wifi_aggressive_handover"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    .line 399
    const-string v5, "wifi_allow_scan_with_traffic"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    .line 400
    const-string v5, "legacy_dhcp_client"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLegacyDhcpClient:Landroid/preference/SwitchPreference;

    .line 401
    const-string v5, "mobile_data_always_on"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/preference/SwitchPreference;

    .line 402
    const-string v5, "select_logd_size"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    .line 403
    const-string v5, "select_usb_configuration"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    .line 405
    const-string v5, "window_animation_scale"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    .line 406
    const-string v5, "transition_animation_scale"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    .line 407
    const-string v5, "animator_duration_scale"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    .line 408
    const-string v5, "overlay_display_devices"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    .line 409
    const-string v5, "enable_multi_window"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    .line 410
    invoke-static {}, Lcom/android/settings_ex/DevelopmentSettings;->showEnableMultiWindowPreference()Z

    move-result v5

    if-nez v5, :cond_9

    .line 411
    const-string v5, "debug_drawing_category"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 412
    .local v1, "drawingGroup":Landroid/preference/PreferenceGroup;
    if-eqz v1, :cond_c

    .line 413
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 417
    :goto_2
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 418
    iput-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    .line 420
    .end local v1    # "drawingGroup":Landroid/preference/PreferenceGroup;
    :cond_9
    const-string v5, "enable_opengl_traces"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    .line 421
    const-string v5, "simulate_color_space"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    .line 422
    const-string v5, "usb_audio"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    .line 424
    const-string v5, "immediately_destroy_activities"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    .line 425
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    const-string v5, "app_process_limit"

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    .line 430
    const-string v5, "show_all_anrs"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    .line 431
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    const-string v5, "hdcp_checking"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 435
    .local v3, "hdcpChecking":Landroid/preference/Preference;
    if-eqz v3, :cond_a

    .line 436
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->removePreferenceForProduction(Landroid/preference/Preference;)Z

    .line 441
    :cond_a
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 442
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 378
    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "hdcpChecking":Landroid/preference/Preference;
    :cond_b
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 415
    .restart local v1    # "drawingGroup":Landroid/preference/PreferenceGroup;
    :cond_c
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 581
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 2120
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 2121
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2122
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 2123
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 586
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroyView()V

    .line 588
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 593
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 592
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2105
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 2106
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_0

    .line 2107
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 2109
    :cond_0
    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 2116
    :cond_1
    :goto_0
    return-void

    .line 2110
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 2111
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_3

    .line 2112
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 2114
    :cond_3
    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 574
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 575
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1947
    const-string v3, "hdcp_checking"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1948
    const-string v2, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateHdcpValues()V

    .line 1950
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 2002
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v1

    .line 1952
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_1

    .line 1953
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    goto :goto_0

    .line 1955
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_2

    .line 1956
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeUsbConfigurationOption(Ljava/lang/Object;)V

    goto :goto_0

    .line 1958
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_3

    .line 1959
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v3, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1961
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_4

    .line 1962
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1964
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_5

    .line 1965
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v3, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1967
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_6

    .line 1968
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1970
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_7

    .line 1971
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeOpenGLTracesOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1973
    :cond_7
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_8

    .line 1974
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeTrackFrameTimeOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1976
    :cond_8
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_9

    .line 1977
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeDebugHwOverdrawOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1979
    :cond_9
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_a

    .line 1980
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowNonRectClipOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1982
    :cond_a
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_b

    .line 1983
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1985
    :cond_b
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_c

    .line 1986
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    goto :goto_0

    .line 1988
    :cond_c
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledDevelopmentSettings:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_d

    .line 1989
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeDevelopmentSettings(Ljava/lang/Object;)V

    goto :goto_0

    .line 1991
    :cond_d
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledRequirePasswordToPowerOn:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_f

    .line 1994
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1995
    .local v0, "value":Z
    if-eqz v0, :cond_e

    .line 1996
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->confirmEnabledRequirePasswordToPowerOnMode()V

    goto :goto_0

    .line 1998
    :cond_e
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->launchChooseOrConfirmLock()V

    goto/16 :goto_0

    .end local v0    # "value":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_f
    move v1, v2

    .line 2002
    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1778
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1928
    :cond_0
    :goto_0
    return v3

    .line 1784
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getlogs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1792
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.oem.oemlogkit.startlog"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1793
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v4, 0x30000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1794
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1800
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_5

    .line 1801
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1802
    iput-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    .line 1803
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_3

    .line 1804
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 1805
    :cond_3
    new-instance v2, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c088f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f0c088e

    invoke-virtual {v2, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v2

    const v4, 0x1040013

    invoke-virtual {v2, v4, p0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v2

    const v4, 0x1040009

    invoke-virtual {v2, v4, p0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->show()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1812
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 1814
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "adb_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1816
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1817
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1818
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateBugreportOptions()V

    goto/16 :goto_0

    .line 1820
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    if-ne p2, v4, :cond_7

    .line 1821
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_6

    .line 1822
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 1823
    :cond_6
    new-instance v2, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0890

    invoke-virtual {v2, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v2

    const v4, 0x104000a

    invoke-virtual {v2, v4, p0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v2

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->show()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1827
    :cond_7
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_9

    .line 1828
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1829
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v4, "com.android.terminal"

    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_2
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_8
    move v2, v3

    goto :goto_2

    .line 1833
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_9
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_b

    .line 1834
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bugreport_in_power_menu"

    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_a

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_a
    move v2, v3

    goto :goto_3

    .line 1837
    :cond_b
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_d

    .line 1838
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "stay_on_while_plugged_in"

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x3

    :goto_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_c
    move v2, v3

    goto :goto_4

    .line 1843
    :cond_d
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_e

    .line 1844
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeBtHciSnoopLogOptions()V

    goto/16 :goto_0

    .line 1845
    :cond_e
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_10

    .line 1846
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "oem.unlock.support"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1848
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/DevelopmentSettings;->showKeyguardConfirmation(Landroid/content/res/Resources;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1850
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1851
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto/16 :goto_0

    .line 1853
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/settings_ex/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 1857
    :cond_10
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationAppPref:Landroid/preference/Preference;

    if-ne p2, v4, :cond_11

    .line 1858
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v4, Lcom/android/settings_ex/AppPicker;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1859
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings.extra.REQUESTIING_PERMISSION"

    const-string v4, "android.permission.ACCESS_MOCK_LOCATION"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1861
    const/16 v2, 0x3e9

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1862
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_11
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_13

    .line 1863
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "debug_view_attributes"

    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_12

    :goto_5
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_12
    move v2, v3

    goto :goto_5

    .line 1866
    :cond_13
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    if-ne p2, v4, :cond_14

    .line 1867
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settings_ex/AppPicker;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1868
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v4, "com.android.settings.extra.DEBUGGABLE"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1869
    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1870
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_14
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_15

    .line 1871
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeDebuggerOptions()V

    goto/16 :goto_0

    .line 1872
    :cond_15
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_16

    .line 1873
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeVerifyAppsOverUsbOptions()V

    goto/16 :goto_0

    .line 1874
    :cond_16
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_17

    .line 1875
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeStrictModeVisualOptions()V

    goto/16 :goto_0

    .line 1876
    :cond_17
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_18

    .line 1877
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_0

    .line 1878
    :cond_18
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_19

    .line 1879
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_0

    .line 1880
    :cond_19
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1a

    .line 1881
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowUpdatesOption()V

    goto/16 :goto_0

    .line 1882
    :cond_1a
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1b

    .line 1883
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeDisableOverlaysOption()V

    goto/16 :goto_0

    .line 1884
    :cond_1b
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1d

    .line 1885
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1886
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->confirmEnableMultiWindowMode()V

    goto/16 :goto_0

    .line 1888
    :cond_1c
    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->setEnableMultiWindow(Z)V

    goto/16 :goto_0

    .line 1890
    :cond_1d
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1e

    .line 1891
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeCpuUsageOptions()V

    goto/16 :goto_0

    .line 1892
    :cond_1e
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1f

    .line 1893
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions()V

    goto/16 :goto_0

    .line 1894
    :cond_1f
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_20

    .line 1895
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowAllANRsOptions()V

    goto/16 :goto_0

    .line 1896
    :cond_20
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_21

    .line 1897
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeHardwareUiOptions()V

    goto/16 :goto_0

    .line 1898
    :cond_21
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_22

    .line 1899
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeMsaaOptions()V

    goto/16 :goto_0

    .line 1900
    :cond_22
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_23

    .line 1901
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowHwScreenUpdatesOptions()V

    goto/16 :goto_0

    .line 1902
    :cond_23
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_24

    .line 1903
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowHwLayersUpdatesOptions()V

    goto/16 :goto_0

    .line 1904
    :cond_24
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_25

    .line 1905
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeDebugLayoutOptions()V

    goto/16 :goto_0

    .line 1906
    :cond_25
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_26

    .line 1907
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeForceRtlOptions()V

    goto/16 :goto_0

    .line 1908
    :cond_26
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_27

    .line 1909
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeWifiDisplayCertificationOptions()V

    goto/16 :goto_0

    .line 1910
    :cond_27
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_28

    .line 1911
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeWifiVerboseLoggingOptions()V

    goto/16 :goto_0

    .line 1912
    :cond_28
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_29

    .line 1913
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeWifiAggressiveHandoverOptions()V

    goto/16 :goto_0

    .line 1914
    :cond_29
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2a

    .line 1915
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeWifiAllowScansWithTrafficOptions()V

    goto/16 :goto_0

    .line 1916
    :cond_2a
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLegacyDhcpClient:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2b

    .line 1917
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeLegacyDhcpClientOptions()V

    goto/16 :goto_0

    .line 1918
    :cond_2b
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2c

    .line 1919
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeMobileDataAlwaysOnOptions()V

    goto/16 :goto_0

    .line 1920
    :cond_2c
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2d

    .line 1921
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeUSBAudioOptions()V

    goto/16 :goto_0

    .line 1922
    :cond_2d
    const-string v2, "inactive_apps"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1923
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->startInactiveAppsFragment()V

    goto/16 :goto_0

    .line 1925
    :cond_2e
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto/16 :goto_0

    .line 1795
    :catch_0
    move-exception v4

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 523
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 525
    iget-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUnavailable:Z

    if-eqz v3, :cond_1

    .line 527
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 529
    .local v1, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 530
    if-eqz v1, :cond_0

    .line 531
    const v3, 0x7f0c0866

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 570
    .end local v1    # "emptyView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_3

    .line 541
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 546
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 547
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "development_settings_enabled"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 548
    .local v2, "enableValue":I
    if-eqz v2, :cond_4

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    .line 549
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    iget-boolean v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 550
    iget-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 552
    const-string v3, "DevelopmentSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ddj enableValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";mHaveDebugSettings="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mLastEnabledState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v6, "DevelopmentSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ddj (mHaveDebugSettings && !mLastEnabledState)="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    if-nez v3, :cond_5

    move v3, v4

    :goto_3
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    if-nez v3, :cond_2

    .line 560
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "development_settings_enabled"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 562
    iput-boolean v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    .line 563
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    iget-boolean v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 564
    iget-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 567
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledRequirePasswordToPowerOn:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "require_password_to_decrypt"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_6

    :goto_4
    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 543
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "enableValue":I
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v2    # "enableValue":I
    :cond_4
    move v3, v5

    .line 548
    goto/16 :goto_2

    :cond_5
    move v3, v5

    .line 554
    goto :goto_3

    :cond_6
    move v4, v5

    .line 567
    goto :goto_4
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1717
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 1741
    :cond_0
    :goto_0
    return-void

    .line 1720
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    if-eq p2, v0, :cond_0

    .line 1721
    if-eqz p2, :cond_3

    .line 1722
    iput-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    .line 1723
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 1724
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 1725
    :cond_2
    new-instance v0, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0892

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0891

    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->show()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 1732
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 1734
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->resetDangerousOptions()V

    .line 1735
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1737
    iput-boolean p2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    .line 1738
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0
.end method

.method pokeSystemProperties()V
    .locals 2

    .prologue
    .line 2126
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDontPokeProperties:Z

    if-nez v0, :cond_0

    .line 2128
    new-instance v0, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2130
    :cond_0
    return-void
.end method

.method updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V
    .locals 1
    .param p1, "switchPreference"    # Landroid/preference/SwitchPreference;
    .param p2, "value"    # Z

    .prologue
    .line 596
    invoke-virtual {p1, p2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 597
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 598
    return-void
.end method
