.class public Lcom/android/settings_ex/DevelopmentSettings;
.super Lcom/android/settings_ex/RestrictedSettingsFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DevelopmentSettings$1;,
        Lcom/android/settings_ex/DevelopmentSettings$2;,
        Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;
    }
.end annotation


# static fields
.field private static final ACTUAL_LOGPERSIST_PROPERTY:Ljava/lang/String; = "logd.logpersistd"

.field private static final ACTUAL_LOGPERSIST_PROPERTY_BUFFER:Ljava/lang/String; = "logd.logpersistd.buffer"

.field private static final ACTUAL_LOGPERSIST_PROPERTY_ENABLE:Ljava/lang/String; = "logd.logpersistd.enable"

.field private static final ADVANCED_REBOOT_KEY:Ljava/lang/String; = "advanced_reboot"

.field private static final ANIMATOR_DURATION_SCALE_KEY:Ljava/lang/String; = "animator_duration_scale"

.field private static final APP_PROCESS_LIMIT_KEY:Ljava/lang/String; = "app_process_limit"

.field private static final APTX_HD_SUPPORT:Ljava/lang/String; = "aptx_hd_support"

.field private static final BACKGROUND_CHECK_KEY:Ljava/lang/String; = "background_check"

.field private static final BLUETOOTH_DISABLE_ABSOLUTE_VOLUME_KEY:Ljava/lang/String; = "bluetooth_disable_absolute_volume"

.field private static final BLUETOOTH_DISABLE_ABSOLUTE_VOLUME_PROPERTY:Ljava/lang/String; = "persist.bluetooth.disableabsvol"

.field private static final BT_HCI_SNOOP_LOG:Ljava/lang/String; = "bt_hci_snoop_log"

.field private static final BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final BUGREPORT_IN_POWER_KEY:Ljava/lang/String; = "bugreport_in_power"

.field private static final CLEAR_ADB_KEYS:Ljava/lang/String; = "clear_adb_keys"

.field private static final COLOR_TEMPERATURE_KEY:Ljava/lang/String; = "color_temperature"

.field private static final COLOR_TEMPERATURE_PROPERTY:Ljava/lang/String; = "persist.sys.debug.color_temp"

.field private static final DEBUG_APP_KEY:Ljava/lang/String; = "debug_app"

.field private static final DEBUG_DEBUGGING_CATEGORY_KEY:Ljava/lang/String; = "debug_debugging_category"

.field private static final DEBUG_HW_OVERDRAW_KEY:Ljava/lang/String; = "debug_hw_overdraw"

.field private static final DEBUG_LAYOUT_KEY:Ljava/lang/String; = "debug_layout"

.field private static final DEBUG_VIEW_ATTRIBUTES:Ljava/lang/String; = "debug_view_attributes"

.field private static final DISABLE_DOZE_KEY:Ljava/lang/String; = "disable_doze"

.field private static final DISABLE_OVERLAYS_KEY:Ljava/lang/String; = "disable_overlays"

.field private static final ENABLE_ADB:Ljava/lang/String; = "enable_adb"

.field private static final ENABLE_OEM_UNLOCK:Ljava/lang/String; = "oem_unlock_enable"

.field private static final ENABLE_TERMINAL:Ljava/lang/String; = "enable_terminal"

.field private static final FLASH_LOCKED_PROP:Ljava/lang/String; = "ro.boot.flash.locked"

.field private static final FORCE_ALLOW_ON_EXTERNAL_KEY:Ljava/lang/String; = "force_allow_on_external"

.field private static final FORCE_HARDWARE_UI_KEY:Ljava/lang/String; = "force_hw_ui"

.field private static final FORCE_MSAA_KEY:Ljava/lang/String; = "force_msaa"

.field private static final FORCE_RESIZABLE_KEY:Ljava/lang/String; = "force_resizable_activities"

.field private static final FORCE_RTL_LAYOUT_KEY:Ljava/lang/String; = "force_rtl_layout_all_locales"

.field private static final HARDWARE_UI_PROPERTY:Ljava/lang/String; = "persist.sys.ui.hw"

.field private static final HDCP_CHECKING_KEY:Ljava/lang/String; = "hdcp_checking"

.field private static final HDCP_CHECKING_PROPERTY:Ljava/lang/String; = "persist.sys.hdcp_checking"

.field private static final IMMEDIATELY_DESTROY_ACTIVITIES_KEY:Ljava/lang/String; = "immediately_destroy_activities"

.field private static final INACTIVE_APPS_KEY:Ljava/lang/String; = "inactive_apps"

.field private static final KEEP_SCREEN_ON:Ljava/lang/String; = "keep_screen_on"

.field private static final KEY_COLOR_MODE:Ljava/lang/String; = "color_mode"

.field private static final KEY_CONVERT_FBE:Ljava/lang/String; = "convert_to_file_encryption"

.field private static final LOCAL_BACKUP_PASSWORD:Ljava/lang/String; = "local_backup_password"

.field private static final MOBILE_DATA_ALWAYS_ON:Ljava/lang/String; = "mobile_data_always_on"

.field private static final MOCK_LOCATION_APP_KEY:Ljava/lang/String; = "mock_location_app"

.field private static final MOCK_LOCATION_APP_OPS:[I

.field private static final MSAA_PROPERTY:Ljava/lang/String; = "debug.egl.force_msaa"

.field private static final ONEPLUS_GET_LOGS:Ljava/lang/String; = "getlogs"

.field private static final OPENGL_TRACES_PROPERTY:Ljava/lang/String; = "debug.egl.trace"

.field private static final OP_WIFI_VERBOSE_MULTI_BROADCAST:Ljava/lang/String; = "op_enable_wifi_multi_broadcast"

.field private static final OP_WIFI_VERBOSE_MULTI_BROADCAST_KEY:Ljava/lang/String; = "op_wifi_verbose_multi_broadcast"

.field private static final OP_WIRELESS_ADB_DEBUGGING_KEY:Ljava/lang/String; = "op_wireless_adb_debugging"

.field private static final OP_WIRELESS_ADB_DEBUGGING_PROPERTY:Ljava/lang/String; = "service.adb.tcp.port"

.field private static final OP_WIRELESS_ADB_DEBUGGING_PROPERTY_DISENABLE:Ljava/lang/String; = "-1"

.field private static final OP_WIRELESS_ADB_DEBUGGING_PROPERTY_ENABLE:Ljava/lang/String; = "5555"

.field private static final OTA_DISABLE_AUTOMATIC_UPDATE_KEY:Ljava/lang/String; = "ota_disable_automatic_update"

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

.field private static final SELECT_LOGD_DEFAULT_SIZE_VALUE:Ljava/lang/String; = "262144"

.field private static final SELECT_LOGD_MINIMUM_SIZE_VALUE:Ljava/lang/String; = "65536"

.field private static final SELECT_LOGD_OFF_SIZE_MARKER_VALUE:Ljava/lang/String; = "32768"

.field private static final SELECT_LOGD_RUNTIME_SNET_TAG_PROPERTY:Ljava/lang/String; = "log.tag.snet_event_log"

.field private static final SELECT_LOGD_SIZE_KEY:Ljava/lang/String; = "select_logd_size"

.field private static final SELECT_LOGD_SIZE_PROPERTY:Ljava/lang/String; = "persist.logd.size"

.field private static final SELECT_LOGD_SNET_TAG_PROPERTY:Ljava/lang/String; = "persist.log.tag.snet_event_log"

.field private static final SELECT_LOGD_SVELTE_DEFAULT_SIZE_VALUE:Ljava/lang/String; = "65536"

.field private static final SELECT_LOGD_TAG_PROPERTY:Ljava/lang/String; = "persist.log.tag"

.field private static final SELECT_LOGD_TAG_SILENCE:Ljava/lang/String; = "Settings"

.field private static final SELECT_LOGPERSIST_KEY:Ljava/lang/String; = "select_logpersist"

.field private static final SELECT_LOGPERSIST_PROPERTY:Ljava/lang/String; = "persist.logd.logpersistd"

.field private static final SELECT_LOGPERSIST_PROPERTY_BUFFER:Ljava/lang/String; = "persist.logd.logpersistd.buffer"

.field private static final SELECT_LOGPERSIST_PROPERTY_CLEAR:Ljava/lang/String; = "clear"

.field private static final SELECT_LOGPERSIST_PROPERTY_SERVICE:Ljava/lang/String; = "logcatd"

.field private static final SELECT_LOGPERSIST_PROPERTY_STOP:Ljava/lang/String; = "stop"

.field private static final SHORTCUT_MANAGER_RESET_KEY:Ljava/lang/String; = "reset_shortcut_manager_throttling"

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

.field private static final WEBVIEW_MULTIPROCESS_KEY:Ljava/lang/String; = "enable_webview_multiprocess"

.field private static final WEBVIEW_PROVIDER_KEY:Ljava/lang/String; = "select_webview_provider"

.field private static final WIFI_AGGRESSIVE_HANDOVER_KEY:Ljava/lang/String; = "wifi_aggressive_handover"

.field private static final WIFI_ALLOW_SCAN_WITH_TRAFFIC_KEY:Ljava/lang/String; = "wifi_allow_scan_with_traffic"

.field private static final WIFI_DISPLAY_CERTIFICATION_KEY:Ljava/lang/String; = "wifi_display_certification"

.field private static final WIFI_VERBOSE_LOGGING_KEY:Ljava/lang/String; = "wifi_verbose_logging"

.field private static final WINDOW_ANIMATION_SCALE_KEY:Ljava/lang/String; = "window_animation_scale"


# instance fields
.field private mAdbDialog:Landroid/app/Dialog;

.field private mAdbKeysDialog:Landroid/app/Dialog;

.field private mAdvancedReboot:Landroid/support/v14/preference/SwitchPreference;

.field private final mAllPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

.field private mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

.field private mAptxHdSupportSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBluetoothDisableAbsVolume:Landroid/support/v14/preference/SwitchPreference;

.field private mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

.field private mBugreport:Landroid/support/v7/preference/Preference;

.field private mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

.field private mClearAdbKeys:Landroid/support/v7/preference/Preference;

.field private mColorModePreference:Lcom/android/settings_ex/ColorModePreference;

.field private mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mDebugApp:Ljava/lang/String;

.field private mDebugAppPref:Landroid/support/v7/preference/Preference;

.field private mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

.field private mDebugLayout:Landroid/support/v14/preference/SwitchPreference;

.field private mDebugViewAttributes:Landroid/support/v14/preference/SwitchPreference;

.field private mDialogClicked:Z

.field private mDisableDozeSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mDisableOverlays:Landroid/support/v14/preference/SwitchPreference;

.field private final mDisabledPrefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mDontPokeProperties:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

.field private mEnableDialog:Landroid/app/Dialog;

.field private mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

.field private mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

.field private mForceAllowOnExternal:Landroid/support/v14/preference/SwitchPreference;

.field private mForceHardwareUi:Landroid/support/v14/preference/SwitchPreference;

.field private mForceMsaa:Landroid/support/v14/preference/SwitchPreference;

.field private mForceResizable:Landroid/support/v14/preference/SwitchPreference;

.field private mForceRtlLayout:Landroid/support/v14/preference/SwitchPreference;

.field private mHaveDebugSettings:Z

.field private mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

.field private mIsUnlocked:Z

.field private mKeepScreenOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

.field private mLastEnabledState:Z

.field private mLogdSize:Landroid/support/v7/preference/ListPreference;

.field private mLogpersist:Landroid/support/v7/preference/ListPreference;

.field private mLogpersistClearDialog:Landroid/app/Dialog;

.field private mLogpersistCleared:Z

.field private mLogsPreference:Landroid/support/v7/preference/Preference;

.field private mMobileDataAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

.field private mMockLocationApp:Ljava/lang/String;

.field private mMockLocationAppPref:Landroid/support/v7/preference/Preference;

.field private mOemUnlockManager:Landroid/service/persistentdata/PersistentDataBlockManager;

.field private mOtaDisableAutomaticUpdate:Landroid/support/v14/preference/SwitchPreference;

.field private mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

.field private mPassword:Landroid/support/v7/preference/PreferenceScreen;

.field private mPointerLocation:Landroid/support/v14/preference/SwitchPreference;

.field private final mResetSwitchPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v14/preference/SwitchPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

.field private mShowCpuUsage:Landroid/support/v14/preference/SwitchPreference;

.field private mShowHwLayersUpdates:Landroid/support/v14/preference/SwitchPreference;

.field private mShowHwScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

.field private mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

.field private mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

.field private mShowTouches:Landroid/support/v14/preference/SwitchPreference;

.field private mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

.field private mStrictMode:Landroid/support/v14/preference/SwitchPreference;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

.field private mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

.field private mUSBAudio:Landroid/support/v14/preference/SwitchPreference;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

.field private mUsbReceiver:Landroid/content/BroadcastReceiver;

.field private mVerboseMultiBroadcastSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

.field private mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

.field private mWebViewMultiprocess:Landroid/support/v14/preference/SwitchPreference;

.field private mWebViewProvider:Landroid/support/v7/preference/ListPreference;

.field private mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

.field private mWifiAggressiveHandover:Landroid/support/v14/preference/SwitchPreference;

.field private mWifiAllowScansWithTraffic:Landroid/support/v14/preference/SwitchPreference;

.field private mWifiDisplayCertification:Landroid/support/v14/preference/SwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiVerboseLogging:Landroid/support/v14/preference/SwitchPreference;

.field private mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private mWirelessAdbDebuggingSwitch:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -set0(Lcom/android/settings_ex/DevelopmentSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mIsUnlocked:Z

    return p1
.end method

.method static synthetic -wrap0()Z
    .locals 1

    invoke-static {}, Lcom/android/settings_ex/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/DevelopmentSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/DevelopmentSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateUsbConfigurationValues()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 239
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3a

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings_ex/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    .line 2510
    new-instance v0, Lcom/android/settings_ex/DevelopmentSettings$2;

    invoke-direct {v0}, Lcom/android/settings_ex/DevelopmentSettings$2;-><init>()V

    .line 2509
    sput-object v0, Lcom/android/settings_ex/DevelopmentSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 109
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 367
    const-string/jumbo v0, "no_debugging_features"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 328
    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    .line 331
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    .line 2465
    new-instance v0, Lcom/android/settings_ex/DevelopmentSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DevelopmentSettings$1;-><init>(Lcom/android/settings_ex/DevelopmentSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 366
    return-void
.end method

.method private addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;
    .locals 2
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 610
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 611
    .local v0, "pref":Landroid/support/v7/preference/ListPreference;
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 613
    return-object v0
.end method

.method private confirmEnableOemUnlock()V
    .locals 5

    .prologue
    .line 2041
    new-instance v0, Lcom/android/settings_ex/DevelopmentSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DevelopmentSettings$3;-><init>(Lcom/android/settings_ex/DevelopmentSettings;)V

    .line 2050
    .local v0, "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/settings_ex/DevelopmentSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/DevelopmentSettings$4;-><init>(Lcom/android/settings_ex/DevelopmentSettings;)V

    .line 2060
    .local v1, "onDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2061
    const v3, 0x7f0e00ad

    .line 2060
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2062
    const v3, 0x7f0e00ae

    .line 2060
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2063
    const v3, 0x7f0e09e2

    .line 2060
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2064
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    .line 2060
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 2040
    return-void
.end method

.method private static currentStrictModeActiveIndex()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1256
    const-string/jumbo v1, "persist.sys.strictmode.visual"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1257
    return v2

    .line 1259
    :cond_0
    const-string/jumbo v1, "persist.sys.strictmode.visual"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1260
    .local v0, "enabled":Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private defaultLogdSizeValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1650
    const-string/jumbo v1, "ro.logd.size"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1651
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1652
    :cond_0
    const-string/jumbo v1, "ro.config.low_ram"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1653
    const-string/jumbo v0, "65536"

    .line 1658
    :cond_1
    :goto_0
    return-object v0

    .line 1655
    :cond_2
    const-string/jumbo v0, "262144"

    goto :goto_0
.end method

.method private disableForUser(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 617
    if-eqz p1, :cond_0

    .line 618
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 619
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_0
    return-void
.end method

.method private dismissDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2374
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2375
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2376
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 2378
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 2379
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2380
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    .line 2382
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 2383
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2384
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 2386
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 2387
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2388
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    .line 2373
    :cond_3
    return-void
.end method

.method private enableOemUnlockPreference()Z
    .locals 1

    .prologue
    .line 1213
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->isBootloaderUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->isOemUnlockAllowed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableVerifierSetting()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1184
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1185
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "adb_enabled"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 1186
    return v5

    .line 1188
    :cond_0
    const-string/jumbo v4, "package_verifier_enable"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    .line 1189
    return v5

    .line 1191
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1192
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1193
    .local v3, "verification":Landroid/content/Intent;
    const-string/jumbo v4, "application/vnd.android.package-archive"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1194
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1195
    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1196
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 1197
    return v5

    .line 1200
    :cond_2
    return v6
.end method

.method private findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 624
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 625
    .local v0, "pref":Landroid/support/v14/preference/SwitchPreference;
    if-nez v0, :cond_0

    .line 626
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot find preference with key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 628
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    return-object v0
.end method

.method private isBootloaderUnlocked()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2601
    const/4 v0, -0x1

    .line 2602
    .local v0, "flashLockState":I
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOemUnlockManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-eqz v2, :cond_0

    .line 2603
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOemUnlockManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v2}, Landroid/service/persistentdata/PersistentDataBlockManager;->getFlashLockState()I

    move-result v0

    .line 2606
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isOemUnlockAllowed()Z
    .locals 3

    .prologue
    .line 2615
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 2616
    .local v0, "userHandle":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v2, "no_oem_unlock"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2617
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v2, "no_factory_reset"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    .line 2616
    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2499
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

    :cond_0
    return v1

    .line 2500
    :catch_0
    move-exception v0

    .line 2501
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method private isSimLockedDevice()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2588
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 2589
    .local v1, "phoneCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2590
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getAllowedCarriers(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2591
    const/4 v2, 0x1

    return v2

    .line 2589
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2594
    :cond_1
    return v3
.end method

.method private removePreference(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 658
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 659
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 656
    return-void
.end method

.method private removePreferenceForProduction(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 649
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DevelopmentSettings;->removePreference(Landroid/support/v7/preference/Preference;)V

    .line 651
    const/4 v0, 0x1

    return v0

    .line 653
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private resetAdvancedRebootOptions()V
    .locals 3

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 840
    const-string/jumbo v1, "advanced_reboot"

    const/4 v2, 0x0

    .line 839
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 838
    return-void
.end method

.method private resetDangerousOptions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 908
    iput-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDontPokeProperties:Z

    .line 909
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 910
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 912
    .local v0, "cb":Landroid/support/v14/preference/SwitchPreference;
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableDozeSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-ne v2, v0, :cond_1

    .line 909
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 916
    :cond_1
    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 917
    invoke-virtual {v0, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 918
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DevelopmentSettings;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 921
    .end local v0    # "cb":Landroid/support/v14/preference/SwitchPreference;
    :cond_2
    invoke-static {}, Lcom/android/settings_ex/DevelopmentSettings;->resetDebuggerOptions()V

    .line 922
    invoke-direct {p0, v4, v3}, Lcom/android/settings_ex/DevelopmentSettings;->writeLogpersistOption(Ljava/lang/Object;Z)V

    .line 923
    invoke-direct {p0, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    .line 924
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->resetAdvancedRebootOptions()V

    .line 925
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v5, v2, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    .line 926
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    .line 927
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v3, 0x2

    invoke-direct {p0, v3, v2, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    .line 929
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->usingDevelopmentColorSpace()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 930
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    .line 932
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    .line 933
    invoke-direct {p0, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 934
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 935
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAllOptions()V

    .line 936
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDontPokeProperties:Z

    .line 937
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 907
    return-void
.end method

.method private static resetDebuggerOptions()V
    .locals 5

    .prologue
    .line 1090
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1091
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1090
    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    .local v0, "ex":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1092
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .restart local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private resetShortcutManagerThrottling()V
    .locals 5

    .prologue
    .line 2555
    const-string/jumbo v2, "shortcut"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 2554
    invoke-static {v2}, Landroid/content/pm/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;

    move-result-object v1

    .line 2556
    .local v1, "service":Landroid/content/pm/IShortcutService;
    if-eqz v1, :cond_0

    .line 2558
    :try_start_0
    invoke-interface {v1}, Landroid/content/pm/IShortcutService;->resetThrottling()V

    .line 2559
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e102a

    .line 2560
    const/4 v4, 0x0

    .line 2559
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2553
    :cond_0
    :goto_0
    return-void

    .line 2561
    :catch_0
    move-exception v0

    .line 2562
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "DevelopmentSettings"

    const-string/jumbo v3, "Failed to reset rate limiting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setBugreportStorageProviderStatus()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1241
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.shell"

    .line 1242
    const-string/jumbo v4, "com.android.shell.BugreportStorageProvider"

    .line 1241
    invoke-direct {v0, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 1244
    .local v1, "enabled":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1245
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1244
    :goto_0
    invoke-virtual {v4, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1240
    return-void

    :cond_0
    move v2, v3

    .line 1246
    goto :goto_0
.end method

.method private setLogpersistOff(Z)V
    .locals 6
    .param p1, "update"    # Z

    .prologue
    .line 1794
    const-string/jumbo v3, "persist.logd.logpersistd.buffer"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    const-string/jumbo v3, "logd.logpersistd.buffer"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    const-string/jumbo v3, "persist.logd.logpersistd"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    const-string/jumbo v4, "logd.logpersistd"

    .line 1799
    if-eqz p1, :cond_1

    const-string/jumbo v3, ""

    .line 1798
    :goto_0
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1801
    if-eqz p1, :cond_2

    .line 1802
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateLogpersistValues()V

    .line 1793
    :cond_0
    return-void

    .line 1799
    :cond_1
    const-string/jumbo v3, "stop"

    goto :goto_0

    .line 1804
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 1805
    const-string/jumbo v3, "logd.logpersistd"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1806
    .local v0, "currentValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1810
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1804
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1811
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_2
.end method

.method private setPrefsEnabledState(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 663
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 664
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 665
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 665
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 667
    .end local v1    # "pref":Landroid/support/v7/preference/Preference;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAllOptions()V

    .line 662
    return-void
.end method

.method private static showEnableOemUnlockPreference()Z
    .locals 2

    .prologue
    .line 1209
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showKeyguardConfirmation(Landroid/content/res/Resources;I)Z
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "requestCode"    # I

    .prologue
    .line 2307
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 2308
    const v1, 0x7f0e00ab

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2307
    invoke-virtual {v0, p2, v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private showVerifierSetting()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1204
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1205
    const-string/jumbo v3, "verifier_setting_visible"

    .line 1204
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private startBackgroundCheckFragment()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2301
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 2302
    const-class v1, Lcom/android/settings_ex/applications/BackgroundCheckSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2303
    const v3, 0x7f0e0f56

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    .line 2301
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2300
    return-void
.end method

.method private startInactiveAppsFragment()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2295
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 2296
    const-class v1, Lcom/android/settings_ex/fuelgauge/InactiveApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2297
    const v3, 0x7f0e0115

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    .line 2295
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2294
    return-void
.end method

.method private updateAdvancedRebootOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 850
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdvancedReboot:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 851
    const-string/jumbo v3, "advanced_reboot"

    .line 850
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 849
    return-void
.end method

.method private updateAllOptions()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 758
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 759
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 760
    .local v1, "cr":Landroid/content/ContentResolver;
    iput-boolean v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 761
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    .line 762
    const-string/jumbo v2, "adb_enabled"

    .line 761
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 763
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 764
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    .line 765
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v6, "com.android.terminal"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    .line 764
    :goto_1
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 768
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

    .line 769
    const-string/jumbo v2, "bugreport_in_power_menu"

    .line 768
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 770
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 771
    const-string/jumbo v2, "stay_on_while_plugged_in"

    .line 770
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_3
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 772
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

    .line 773
    const-string/jumbo v2, "bluetooth_hci_log"

    .line 772
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_4
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 774
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v2, :cond_1

    .line 775
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/Utils;->isOemUnlockEnabled(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 777
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugViewAttributes:Landroid/support/v14/preference/SwitchPreference;

    .line 778
    const-string/jumbo v2, "debug_view_attributes"

    .line 777
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_5
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 779
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceAllowOnExternal:Landroid/support/v14/preference/SwitchPreference;

    .line 780
    const-string/jumbo v5, "force_allow_on_external"

    .line 779
    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_9

    :goto_6
    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 781
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateHdcpValues()V

    .line 782
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updatePasswordSummary()V

    .line 783
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebuggerOptions()V

    .line 784
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateMockLocation()V

    .line 785
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateStrictModeVisualOptions()V

    .line 786
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updatePointerLocationOptions()V

    .line 787
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowTouchesOptions()V

    .line 788
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateFlingerOptions()V

    .line 791
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateHardwareUiOptions()V

    .line 792
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateMsaaOptions()V

    .line 793
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 794
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 795
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowHwScreenUpdatesOptions()V

    .line 796
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowHwLayersUpdatesOptions()V

    .line 797
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 798
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebugLayoutOptions()V

    .line 799
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleOptions()V

    .line 800
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 801
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    .line 802
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAppProcessLimitOptions()V

    .line 803
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowAllANRsOptions()V

    .line 804
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 805
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateOtaDisableAutomaticUpdateOptions()V

    .line 806
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateBugreportOptions()V

    .line 807
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateForceRtlOptions()V

    .line 808
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateLogdSizeValues()V

    .line 809
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateLogpersistValues()V

    .line 810
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWifiDisplayCertificationOptions()V

    .line 811
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWifiVerboseLoggingOptions()V

    .line 812
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWifiAggressiveHandoverOptions()V

    .line 813
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWifiAllowScansWithTrafficOptions()V

    .line 814
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateMobileDataAlwaysOnOptions()V

    .line 815
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSimulateColorSpace()V

    .line 816
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateUSBAudioOptions()V

    .line 817
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateForceResizableOptions()V

    .line 818
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWebViewMultiprocessOptions()V

    .line 819
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWebViewProviderOptions()V

    .line 820
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateOemUnlockOptions()V

    .line 821
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 822
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateColorTemperature()V

    .line 824
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateBluetoothDisableAbsVolumeOptions()V

    .line 825
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAdvancedRebootOptions()V

    .line 827
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDisableDozeOptions()V

    .line 830
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWirelessAdbDebuging()V

    .line 831
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateVerboseMultiBroadcast()V

    .line 834
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAptxHdSupportSwitch()V

    .line 757
    return-void

    :cond_3
    move v2, v4

    .line 761
    goto/16 :goto_0

    :cond_4
    move v2, v4

    .line 765
    goto/16 :goto_1

    :cond_5
    move v2, v4

    .line 768
    goto/16 :goto_2

    :cond_6
    move v2, v4

    .line 770
    goto/16 :goto_3

    :cond_7
    move v2, v4

    .line 772
    goto/16 :goto_4

    :cond_8
    move v2, v4

    .line 777
    goto/16 :goto_5

    :cond_9
    move v3, v4

    .line 779
    goto/16 :goto_6
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V

    .line 1961
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V

    .line 1962
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V

    .line 1959
    return-void
.end method

.method private updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V
    .locals 7
    .param p1, "which"    # I
    .param p2, "pref"    # Landroid/support/v7/preference/ListPreference;

    .prologue
    .line 1940
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v5, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v2

    .line 1941
    .local v2, "scale":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v5

    if-eqz v5, :cond_0

    .line 1942
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1944
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 1945
    .local v4, "values":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 1946
    aget-object v5, v4, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 1947
    .local v3, "val":F
    cmpg-float v5, v2, v3

    if-gtz v5, :cond_1

    .line 1948
    invoke-virtual {p2, v1}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1949
    invoke-virtual {p2}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {p2, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1950
    return-void

    .line 1945
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1953
    .end local v3    # "val":F
    :cond_2
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p2, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1954
    invoke-virtual {p2}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {p2, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1938
    .end local v1    # "i":I
    .end local v2    # "scale":F
    .end local v4    # "values":[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1955
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private updateAppProcessLimitOptions()V
    .locals 8

    .prologue
    .line 2001
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v2

    .line 2002
    .local v2, "limit":I
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 2003
    .local v4, "values":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 2004
    aget-object v5, v4, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2005
    .local v3, "val":I
    if-lt v3, v2, :cond_1

    .line 2006
    if-eqz v1, :cond_0

    .line 2007
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 2009
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 2010
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2011
    return-void

    .line 2003
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2014
    .end local v3    # "val":I
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 2015
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1999
    .end local v1    # "i":I
    .end local v2    # "limit":I
    .end local v4    # "values":[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 2016
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private updateAptxHdSupportSwitch()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 895
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 896
    const-string/jumbo v2, "bluetooth_aptx_hd"

    .line 895
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    .line 897
    .local v0, "enableAptXHD":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAptxHdSupportSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 894
    return-void

    .line 895
    .end local v0    # "enableAptXHD":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enableAptXHD":Z
    goto :goto_0
.end method

.method private updateBluetoothDisableAbsVolumeOptions()V
    .locals 3

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBluetoothDisableAbsVolume:Landroid/support/v14/preference/SwitchPreference;

    .line 1629
    const-string/jumbo v1, "persist.bluetooth.disableabsvol"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1628
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1627
    return-void
.end method

.method private updateBugreportOptions()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1235
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreport:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 1236
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 1237
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->setBugreportStorageProviderStatus()V

    .line 1234
    return-void
.end method

.method private updateColorTemperature()V
    .locals 3

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 1542
    const-string/jumbo v1, "persist.sys.debug.color_temp"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1541
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1540
    return-void
.end method

.method private updateCpuUsageOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1907
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowCpuUsage:Landroid/support/v14/preference/SwitchPreference;

    .line 1908
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1909
    const-string/jumbo v3, "show_processes"

    .line 1908
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1907
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1906
    return-void
.end method

.method private updateDebugHwOverdrawOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1450
    const-string/jumbo v3, "debug.hwui.overdraw"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1451
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1452
    const-string/jumbo v1, ""

    .line 1455
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1456
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1457
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1458
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1459
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1460
    return-void

    .line 1456
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1463
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1464
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1449
    return-void
.end method

.method private updateDebugLayoutOptions()V
    .locals 3

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugLayout:Landroid/support/v14/preference/SwitchPreference;

    .line 1476
    const-string/jumbo v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1475
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1474
    return-void
.end method

.method private updateDebuggerOptions()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1098
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "debug_app"

    .line 1097
    invoke-static {v4, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 1099
    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    .line 1100
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "wait_for_debugger"

    .line 1099
    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {p0, v7, v4}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1101
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1104
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 1105
    const/16 v8, 0x200

    .line 1104
    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1106
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1107
    .local v2, "lab":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1111
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "lab":Ljava/lang/CharSequence;
    .local v3, "label":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v3, v8, v6

    const v6, 0x7f0e00d8

    invoke-virtual {v7, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1112
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 1113
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1096
    .end local v3    # "label":Ljava/lang/String;
    :goto_2
    return-void

    :cond_0
    move v4, v6

    .line 1099
    goto :goto_0

    .line 1107
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "lab":Ljava/lang/CharSequence;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_1

    .line 1108
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "lab":Ljava/lang/CharSequence;
    .end local v3    # "label":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1109
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_1

    .line 1115
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "label":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0e00d7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1116
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateDisableDozeOptions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 856
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 857
    const v4, 0x1120014

    .line 856
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 858
    .local v0, "dozeDefault":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 859
    const-string/jumbo v5, "doze_mode_enabaled"

    if-eqz v0, :cond_0

    move v2, v3

    .line 858
    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 860
    .local v1, "value":Z
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableDozeSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 861
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableDozeSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 855
    return-void

    .line 859
    .end local v1    # "value":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 858
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "value":Z
    goto :goto_1
.end method

.method private updateFlingerOptions()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1300
    :try_start_0
    const-string/jumbo v11, "SurfaceFlinger"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1301
    .local v4, "flinger":Landroid/os/IBinder;
    if-eqz v4, :cond_0

    .line 1302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1303
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 1304
    .local v5, "reply":Landroid/os/Parcel;
    const-string/jumbo v11, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1305
    const/16 v11, 0x3f2

    const/4 v12, 0x0

    invoke-interface {v4, v11, v0, v5, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1307
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1309
    .local v7, "showCpu":I
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1310
    .local v2, "enableGL":I
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1311
    .local v8, "showUpdates":I
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_1

    move v11, v9

    :goto_0
    invoke-virtual {p0, v12, v11}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1313
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1314
    .local v6, "showBackground":I
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1315
    .local v1, "disableOverlays":I
    iget-object v11, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableOverlays:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p0, v11, v9}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1316
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1297
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "enableGL":I
    .end local v4    # "flinger":Landroid/os/IBinder;
    .end local v5    # "reply":Landroid/os/Parcel;
    .end local v6    # "showBackground":I
    .end local v7    # "showCpu":I
    .end local v8    # "showUpdates":I
    :cond_0
    :goto_2
    return-void

    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "enableGL":I
    .restart local v4    # "flinger":Landroid/os/IBinder;
    .restart local v5    # "reply":Landroid/os/Parcel;
    .restart local v7    # "showCpu":I
    .restart local v8    # "showUpdates":I
    :cond_1
    move v11, v10

    .line 1311
    goto :goto_0

    .restart local v1    # "disableOverlays":I
    .restart local v6    # "showBackground":I
    :cond_2
    move v9, v10

    .line 1315
    goto :goto_1

    .line 1319
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "enableGL":I
    .end local v4    # "flinger":Landroid/os/IBinder;
    .end local v5    # "reply":Landroid/os/Parcel;
    .end local v6    # "showBackground":I
    .end local v7    # "showCpu":I
    .end local v8    # "showUpdates":I
    :catch_0
    move-exception v3

    .local v3, "ex":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method private updateForceResizableOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1564
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceResizable:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1565
    const-string/jumbo v3, "force_resizable_activities"

    .line 1564
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1563
    return-void
.end method

.method private updateForceRtlOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1575
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceRtlLayout:Landroid/support/v14/preference/SwitchPreference;

    .line 1576
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1577
    const-string/jumbo v3, "debug.force_rtl"

    .line 1576
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1575
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1574
    return-void
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceHardwareUi:Landroid/support/v14/preference/SwitchPreference;

    .line 1359
    const-string/jumbo v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1358
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1357
    return-void
.end method

.method private updateHdcpValues()V
    .locals 8

    .prologue
    .line 996
    const-string/jumbo v6, "hdcp_checking"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/ListPreference;

    .line 997
    .local v1, "hdcpChecking":Landroid/support/v7/preference/ListPreference;
    if-eqz v1, :cond_1

    .line 998
    const-string/jumbo v6, "persist.sys.hdcp_checking"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 999
    .local v0, "currentValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1000
    .local v5, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1001
    .local v4, "summaries":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 1002
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 1003
    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1004
    move v3, v2

    .line 1008
    :cond_0
    aget-object v6, v5, v3

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1009
    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1010
    invoke-virtual {v1, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 995
    .end local v0    # "currentValue":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "summaries":[Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_1
    return-void

    .line 1002
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

    .line 1934
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    .line 1935
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "always_finish_activities"

    .line 1934
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1933
    return-void
.end method

.method private updateLogdSizeValues()V
    .locals 13

    .prologue
    const v12, 0x7f0a0006

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1662
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    if-eqz v8, :cond_8

    .line 1663
    const-string/jumbo v8, "persist.log.tag"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1664
    .local v1, "currentTag":Ljava/lang/String;
    const-string/jumbo v8, "persist.logd.size"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1665
    .local v2, "currentValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v8, "Settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1666
    const-string/jumbo v2, "32768"

    .line 1668
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-eqz v8, :cond_2

    .line 1670
    const-string/jumbo v8, "logd.logpersistd.enable"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1671
    .local v0, "currentLogpersistEnable":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1672
    const-string/jumbo v8, "true"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1673
    const-string/jumbo v8, "32768"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1671
    if-eqz v8, :cond_9

    .line 1674
    :cond_1
    invoke-direct {p0, v9, v11}, Lcom/android/settings_ex/DevelopmentSettings;->writeLogpersistOption(Ljava/lang/Object;Z)V

    .line 1675
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 1680
    .end local v0    # "currentLogpersistEnable":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 1681
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->defaultLogdSizeValue()Ljava/lang/String;

    move-result-object v2

    .line 1683
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0007

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 1684
    .local v7, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 1685
    .local v6, "titles":[Ljava/lang/String;
    const/4 v4, 0x2

    .line 1686
    .local v4, "index":I
    const-string/jumbo v8, "ro.config.low_ram"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1687
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, v12}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 1688
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 1689
    const/4 v4, 0x1

    .line 1691
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0008

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1692
    .local v5, "summaries":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, v6

    if-ge v3, v8, :cond_7

    .line 1693
    aget-object v8, v7, v3

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1694
    aget-object v8, v6, v3

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1693
    if-eqz v8, :cond_a

    .line 1695
    :cond_6
    move v4, v3

    .line 1699
    :cond_7
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    aget-object v9, v7, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1700
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    aget-object v9, v5, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1701
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 1661
    .end local v1    # "currentTag":Ljava/lang/String;
    .end local v2    # "currentValue":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v5    # "summaries":[Ljava/lang/String;
    .end local v6    # "titles":[Ljava/lang/String;
    .end local v7    # "values":[Ljava/lang/String;
    :cond_8
    return-void

    .line 1676
    .restart local v0    # "currentLogpersistEnable":Ljava/lang/String;
    .restart local v1    # "currentTag":Ljava/lang/String;
    .restart local v2    # "currentValue":Ljava/lang/String;
    :cond_9
    iget-boolean v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    if-eqz v8, :cond_2

    .line 1677
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1692
    .end local v0    # "currentLogpersistEnable":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "index":I
    .restart local v5    # "summaries":[Ljava/lang/String;
    .restart local v6    # "titles":[Ljava/lang/String;
    .restart local v7    # "values":[Ljava/lang/String;
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private updateLogpersistValues()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1748
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-nez v5, :cond_0

    .line 1749
    return-void

    .line 1751
    :cond_0
    const-string/jumbo v5, "logd.logpersistd"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1752
    .local v2, "currentValue":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1753
    const-string/jumbo v2, ""

    .line 1755
    :cond_1
    const-string/jumbo v5, "logd.logpersistd.buffer"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1756
    .local v1, "currentBuffers":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 1757
    :cond_2
    const-string/jumbo v1, "all"

    .line 1759
    :cond_3
    const/4 v4, 0x0

    .line 1760
    .local v4, "index":I
    const-string/jumbo v5, "logcatd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1761
    const/4 v4, 0x1

    .line 1762
    const-string/jumbo v5, "kernel"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1763
    const/4 v4, 0x3

    .line 1780
    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1781
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1782
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 1783
    if-eqz v4, :cond_8

    .line 1784
    iput-boolean v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistCleared:Z

    .line 1747
    :cond_5
    :goto_1
    return-void

    .line 1764
    :cond_6
    const-string/jumbo v5, "all"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1765
    const-string/jumbo v5, "radio"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1766
    const-string/jumbo v5, "security"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 1764
    if-eqz v5, :cond_4

    .line 1767
    const-string/jumbo v5, "kernel"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 1764
    if-eqz v5, :cond_4

    .line 1768
    const/4 v4, 0x2

    .line 1769
    const-string/jumbo v5, "default"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1770
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v5, "main"

    aput-object v5, v0, v8

    const-string/jumbo v5, "events"

    aput-object v5, v0, v9

    const-string/jumbo v5, "system"

    const/4 v6, 0x2

    aput-object v5, v0, v6

    const-string/jumbo v5, "crash"

    const/4 v6, 0x3

    aput-object v5, v0, v6

    .line 1771
    .local v0, "contains":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v5, v0

    if-ge v3, v5, :cond_4

    .line 1772
    aget-object v5, v0, v3

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1773
    const/4 v4, 0x1

    .line 1774
    goto/16 :goto_0

    .line 1771
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1785
    .end local v0    # "contains":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_8
    iget-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistCleared:Z

    if-nez v5, :cond_5

    .line 1787
    const-string/jumbo v5, "logd.logpersistd"

    const-string/jumbo v6, "clear"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1789
    iput-boolean v9, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistCleared:Z

    goto :goto_1
.end method

.method private updateMobileDataAlwaysOnOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1638
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    .line 1639
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1640
    const-string/jumbo v3, "mobile_data_always_on"

    .line 1638
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1637
    return-void
.end method

.method private updateMockLocation()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1121
    const-string/jumbo v8, "appops"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 1123
    .local v2, "appOpsManager":Landroid/app/AppOpsManager;
    sget-object v8, Lcom/android/settings_ex/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    invoke-virtual {v2, v8}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v7

    .line 1124
    .local v7, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v7, :cond_1

    .line 1125
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "packageOp$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 1126
    .local v5, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v8

    if-nez v8, :cond_0

    .line 1127
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 1133
    .end local v5    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .end local v6    # "packageOp$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1134
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 1136
    .local v4, "label":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1137
    iget-object v9, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    const/16 v10, 0x200

    .line 1136
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1138
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1139
    .local v1, "appLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 1140
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1146
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appLabel":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v4, v9, v11

    const v10, 0x7f0e00b1

    invoke-virtual {p0, v10, v9}, Lcom/android/settings_ex/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1147
    iput-boolean v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1120
    .end local v4    # "label":Ljava/lang/String;
    :goto_1
    return-void

    .line 1149
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    const v9, 0x7f0e00b0

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1142
    .restart local v4    # "label":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private updateMsaaOptions()V
    .locals 3

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceMsaa:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "debug.egl.force_msaa"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1367
    return-void
.end method

.method private updateOemUnlockOptions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1217
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v0, :cond_1

    .line 1218
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isOemUnlockEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1219
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateOemUnlockSettingDescription()V

    .line 1221
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 1222
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->enableOemUnlockPreference()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setEnabled(Z)V

    .line 1223
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    const-string/jumbo v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1229
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    const-string/jumbo v1, "no_oem_unlock"

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 1216
    :cond_1
    return-void
.end method

.method private updateOemUnlockSettingDescription()V
    .locals 3

    .prologue
    .line 2568
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v1, :cond_1

    .line 2569
    const v0, 0x7f0e00ac

    .line 2570
    .local v0, "oemUnlockSummary":I
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->isBootloaderUnlocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2571
    const v0, 0x7f0e10bc

    .line 2582
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2567
    .end local v0    # "oemUnlockSummary":I
    :cond_1
    return-void

    .line 2572
    .restart local v0    # "oemUnlockSummary":I
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->isSimLockedDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2573
    const v0, 0x7f0e10bf

    goto :goto_0

    .line 2574
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->isOemUnlockAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2580
    const v0, 0x7f0e10be

    .line 2579
    goto :goto_0
.end method

.method private updateOtaDisableAutomaticUpdateOptions()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1169
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOtaDisableAutomaticUpdate:Landroid/support/v14/preference/SwitchPreference;

    .line 1170
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1171
    const-string/jumbo v4, "ota_disable_automatic_update"

    .line 1169
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1165
    return-void

    :cond_0
    move v0, v1

    .line 1169
    goto :goto_0
.end method

.method private updateOverlayDisplayDevicesOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1975
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1976
    const-string/jumbo v4, "overlay_display_devices"

    .line 1975
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1977
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1978
    const-string/jumbo v1, ""

    .line 1981
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1982
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1983
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1984
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1985
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1986
    return-void

    .line 1982
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1989
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1990
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1974
    return-void
.end method

.method private updatePasswordSummary()V
    .locals 3

    .prologue
    .line 1016
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1017
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/PreferenceScreen;

    const v2, 0x7f0e0111

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    .line 1014
    :goto_0
    return-void

    .line 1019
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/PreferenceScreen;

    const v2, 0x7f0e0110

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1021
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1281
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPointerLocation:Landroid/support/v14/preference/SwitchPreference;

    .line 1282
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1283
    const-string/jumbo v3, "pointer_location"

    .line 1282
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1281
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1280
    return-void
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2036
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    .line 2037
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "anr_show_background"

    .line 2036
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 2035
    return-void
.end method

.method private updateShowHwLayersUpdatesOptions()V
    .locals 3

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/support/v14/preference/SwitchPreference;

    .line 1440
    const-string/jumbo v1, "debug.hwui.show_layers_updates"

    const/4 v2, 0x0

    .line 1439
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1438
    return-void
.end method

.method private updateShowHwScreenUpdatesOptions()V
    .locals 3

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    .line 1429
    const-string/jumbo v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1428
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1427
    return-void
.end method

.method private updateShowNonRectClipOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1403
    const-string/jumbo v3, "debug.hwui.show_non_rect_clip"

    .line 1402
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1404
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1405
    const-string/jumbo v1, "hide"

    .line 1408
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1409
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1410
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1411
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1412
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1413
    return-void

    .line 1409
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1416
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1417
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1401
    return-void
.end method

.method private updateShowTouchesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1292
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowTouches:Landroid/support/v14/preference/SwitchPreference;

    .line 1293
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1294
    const-string/jumbo v3, "show_touches"

    .line 1293
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1292
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1291
    return-void
.end method

.method private updateSimulateColorSpace()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 1486
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1488
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v6, "accessibility_display_daltonizer_enabled"

    .line 1487
    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    .line 1489
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1491
    const-string/jumbo v6, "accessibility_display_daltonizer"

    .line 1490
    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1493
    .local v3, "mode":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1494
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 1495
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 1497
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    new-array v4, v4, [Ljava/lang/Object;

    .line 1498
    const v7, 0x7f0e012c

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 1497
    const v5, 0x7f0e012e

    invoke-virtual {p0, v5, v4}, Lcom/android/settings_ex/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1485
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :goto_1
    return-void

    .end local v1    # "enabled":Z
    :cond_0
    move v1, v5

    .line 1487
    goto :goto_0

    .line 1500
    .restart local v1    # "enabled":Z
    .restart local v2    # "index":I
    .restart local v3    # "mode":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v5, "%s"

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1503
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    .line 1504
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1503
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateStrictModeVisualOptions()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1272
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mStrictMode:Landroid/support/v14/preference/SwitchPreference;

    invoke-static {}, Lcom/android/settings_ex/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1271
    return-void

    .line 1272
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTrackFrameTimeOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1377
    const-string/jumbo v3, "debug.hwui.profile"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1378
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1379
    const-string/jumbo v1, ""

    .line 1382
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1383
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1384
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1385
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1386
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1387
    return-void

    .line 1383
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1390
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1391
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1376
    return-void
.end method

.method private updateUSBAudioOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1553
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUSBAudio:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1554
    const-string/jumbo v3, "usb_audio_automatic_routing_disabled"

    .line 1553
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1552
    return-void
.end method

.method private updateUsbConfigurationValues()V
    .locals 8

    .prologue
    .line 1873
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    if-eqz v5, :cond_1

    .line 1874
    const-string/jumbo v5, "usb"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 1876
    .local v2, "manager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1877
    .local v4, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1878
    .local v3, "titles":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1879
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 1882
    aget-object v5, v4, v0

    invoke-virtual {v2, v5}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mIsUnlocked:Z

    if-eqz v5, :cond_2

    .line 1883
    const-string/jumbo v5, "DevelopmentSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Set enable funtion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    move v1, v0

    .line 1889
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1890
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1891
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 1872
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "manager":Landroid/hardware/usb/UsbManager;
    .end local v3    # "titles":[Ljava/lang/String;
    .end local v4    # "values":[Ljava/lang/String;
    :cond_1
    return-void

    .line 1879
    .restart local v0    # "i":I
    .restart local v1    # "index":I
    .restart local v2    # "manager":Landroid/hardware/usb/UsbManager;
    .restart local v3    # "titles":[Ljava/lang/String;
    .restart local v4    # "values":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateVerboseMultiBroadcast()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 872
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerboseMultiBroadcastSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 873
    const-string/jumbo v3, "op_enable_wifi_multi_broadcast"

    .line 872
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 871
    return-void

    .line 872
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateVerifyAppsOverUsbOptions()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1154
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1155
    const-string/jumbo v4, "verifier_verify_adb_installs"

    .line 1154
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1156
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->enableVerifierSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 1153
    return-void

    :cond_0
    move v0, v1

    .line 1154
    goto :goto_0
.end method

.method private updateWebViewMultiprocessOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 974
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewMultiprocess:Landroid/support/v14/preference/SwitchPreference;

    .line 975
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 976
    const-string/jumbo v3, "webview_multiprocess"

    .line 975
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 974
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 973
    return-void
.end method

.method private updateWebViewProviderOptions()V
    .locals 9

    .prologue
    .line 942
    :try_start_0
    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v7}, Landroid/webkit/IWebViewUpdateService;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v4

    .line 943
    .local v4, "providers":[Landroid/webkit/WebViewProviderInfo;
    if-nez v4, :cond_0

    .line 944
    const-string/jumbo v7, "DevelopmentSettings"

    const-string/jumbo v8, "No WebView providers available"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    return-void

    .line 947
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 948
    .local v3, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 949
    .local v6, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    array-length v7, v4

    if-ge v2, v7, :cond_2

    .line 950
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    aget-object v8, v4, v2

    iget-object v8, v8, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/settings_ex/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 951
    aget-object v7, v4, v2

    iget-object v7, v7, Landroid/webkit/WebViewProviderInfo;->description:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    aget-object v7, v4, v2

    iget-object v7, v7, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 949
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 955
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewProvider:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 956
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewProvider:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 958
    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v7}, Landroid/webkit/IWebViewUpdateService;->getCurrentWebViewPackageName()Ljava/lang/String;

    move-result-object v5

    .line 959
    .local v5, "value":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 960
    const-string/jumbo v5, ""

    .line 963
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_5

    .line 964
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 965
    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewProvider:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v7, v1}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    return-void

    .line 963
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 969
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "providers":[Landroid/webkit/WebViewProviderInfo;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 940
    :cond_5
    return-void
.end method

.method private updateWifiAggressiveHandoverOptions()V
    .locals 2

    .prologue
    .line 1610
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAggressiveHandover()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1611
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1609
    return-void

    .line 1610
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method private updateWifiAllowScansWithTrafficOptions()V
    .locals 2

    .prologue
    .line 1619
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAllowScansWithTraffic()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1620
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1618
    return-void

    .line 1619
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method private updateWifiDisplayCertificationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1589
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiDisplayCertification:Landroid/support/v14/preference/SwitchPreference;

    .line 1590
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1591
    const-string/jumbo v3, "wifi_display_certification_on"

    .line 1589
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1588
    return-void
.end method

.method private updateWifiVerboseLoggingOptions()V
    .locals 2

    .prologue
    .line 1601
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1602
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiVerboseLogging:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1600
    return-void

    .line 1601
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method private updateWirelessAdbDebuging()V
    .locals 3

    .prologue
    .line 882
    const-string/jumbo v2, "service.adb.tcp.port"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, "enableWirelessAdbDebuging":Ljava/lang/String;
    const-string/jumbo v2, "5555"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 884
    .local v1, "enabled":Z
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWirelessAdbDebuggingSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 881
    return-void
.end method

.method private usingDevelopmentColorSpace()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1513
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1515
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v6, "accessibility_display_daltonizer_enabled"

    .line 1514
    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    .line 1516
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1518
    const-string/jumbo v6, "accessibility_display_daltonizer"

    .line 1519
    const/4 v7, -0x1

    .line 1517
    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1520
    .local v3, "mode":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 1521
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 1523
    return v4

    .end local v1    # "enabled":Z
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :cond_0
    move v1, v5

    .line 1514
    goto :goto_0

    .line 1526
    .restart local v1    # "enabled":Z
    :cond_1
    return v5
.end method

.method private writeAdvancedRebootOptions()V
    .locals 3

    .prologue
    .line 844
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 845
    const-string/jumbo v2, "advanced_reboot"

    .line 846
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdvancedReboot:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 844
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 843
    return-void

    .line 846
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V
    .locals 3
    .param p1, "which"    # I
    .param p2, "pref"    # Landroid/support/v7/preference/ListPreference;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1967
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 1968
    .local v1, "scale":F
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2, p1, v1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 1969
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1965
    .end local v1    # "scale":F
    :goto_1
    return-void

    .line 1967
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "scale":F
    goto :goto_0

    .line 1970
    .end local v1    # "scale":F
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 3
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 2022
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2023
    .local v1, "limit":I
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 2024
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2020
    .end local v1    # "limit":I
    :goto_1
    return-void

    .line 2022
    :cond_0
    const/4 v1, -0x1

    .restart local v1    # "limit":I
    goto :goto_0

    .line 2025
    .end local v1    # "limit":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeAptxHdSupportSwitch()V
    .locals 4

    .prologue
    .line 901
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAptxHdSupportSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 902
    .local v0, "enabled":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "bluetooth_aptx_hd"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 900
    return-void

    .line 902
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeBluetoothDisableAbsVolumeOptions()V
    .locals 2

    .prologue
    .line 1633
    const-string/jumbo v1, "persist.bluetooth.disableabsvol"

    .line 1634
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBluetoothDisableAbsVolume:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 1633
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    return-void

    .line 1634
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeBtHciSnoopLogOptions()V
    .locals 4

    .prologue
    .line 1027
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1028
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->configHciSnoopLog(Z)Z

    .line 1029
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1030
    const-string/jumbo v3, "bluetooth_hci_log"

    .line 1031
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1029
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1026
    return-void

    .line 1031
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeColorTemperature()V
    .locals 3

    .prologue
    .line 1546
    const-string/jumbo v1, "persist.sys.debug.color_temp"

    .line 1547
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    .line 1546
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1549
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e0fd8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1545
    return-void

    .line 1547
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method private writeCpuUsageOptions()V
    .locals 5

    .prologue
    .line 1913
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowCpuUsage:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 1914
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1915
    const-string/jumbo v4, "show_processes"

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1914
    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1916
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1917
    const-string/jumbo v3, "com.android.systemui"

    const-string/jumbo v4, "com.android.systemui.LoadAverageService"

    .line 1916
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1918
    .local v0, "service":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 1919
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1912
    :goto_1
    return-void

    .line 1915
    .end local v0    # "service":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1921
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
    .line 1468
    const-string/jumbo v1, "debug.hwui.overdraw"

    .line 1469
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 1468
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1471
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 1467
    return-void

    .line 1469
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeDebugLayoutOptions()V
    .locals 2

    .prologue
    .line 1480
    const-string/jumbo v1, "debug.layout"

    .line 1481
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugLayout:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 1480
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1479
    return-void

    .line 1481
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeDebuggerOptions()V
    .locals 5

    .prologue
    .line 1047
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1048
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    const/4 v4, 0x1

    .line 1047
    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    :goto_0
    return-void

    .line 1049
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private writeDisableDozeOptions()V
    .locals 3

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 866
    const-string/jumbo v2, "doze_mode_enabaled"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableDozeSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 865
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 864
    return-void

    .line 866
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeDisableOverlaysOption()V
    .locals 7

    .prologue
    .line 1342
    :try_start_0
    const-string/jumbo v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1343
    .local v3, "flinger":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 1344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1345
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1346
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableOverlays:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 1347
    .local v1, "disableOverlays":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1348
    const/16 v4, 0x3f0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1351
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1340
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v3    # "flinger":Landroid/os/IBinder;
    :cond_0
    :goto_1
    return-void

    .line 1346
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v3    # "flinger":Landroid/os/IBinder;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "disableOverlays":I
    goto :goto_0

    .line 1353
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v3    # "flinger":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeForceResizableOptions()V
    .locals 3

    .prologue
    .line 1569
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1570
    const-string/jumbo v2, "force_resizable_activities"

    .line 1571
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceResizable:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1569
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1568
    return-void

    .line 1571
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeForceRtlOptions()V
    .locals 4

    .prologue
    .line 1581
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceRtlLayout:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 1582
    .local v0, "value":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1583
    const-string/jumbo v3, "debug.force_rtl"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1582
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1584
    const-string/jumbo v2, "debug.force_rtl"

    if-eqz v0, :cond_1

    const-string/jumbo v1, "1"

    :goto_1
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 1580
    return-void

    .line 1583
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1584
    :cond_1
    const-string/jumbo v1, "0"

    goto :goto_1
.end method

.method private writeHardwareUiOptions()V
    .locals 2

    .prologue
    .line 1363
    const-string/jumbo v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceHardwareUi:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1362
    return-void

    .line 1363
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeImmediatelyDestroyActivitiesOptions()V
    .locals 3

    .prologue
    .line 1927
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1928
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 1927
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1925
    :goto_0
    return-void

    .line 1929
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private writeLogdSizeOption(Ljava/lang/Object;)V
    .locals 9
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1706
    if-eqz p1, :cond_8

    .line 1707
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "32768"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1708
    :goto_0
    const-string/jumbo v6, "persist.log.tag"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1709
    .local v0, "currentTag":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1710
    const-string/jumbo v0, ""

    .line 1714
    :cond_0
    const-string/jumbo v6, ",+Settings"

    const-string/jumbo v7, ""

    .line 1713
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1715
    const-string/jumbo v7, "^Settings,*"

    const-string/jumbo v8, ""

    .line 1713
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1716
    const-string/jumbo v7, ",+"

    const-string/jumbo v8, ","

    .line 1713
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1717
    const-string/jumbo v7, ",+$"

    const-string/jumbo v8, ""

    .line 1713
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1718
    .local v3, "newTag":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 1719
    const-string/jumbo p1, "65536"

    .line 1721
    const-string/jumbo v6, "persist.log.tag.snet_event_log"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1722
    .local v5, "snetValue":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 1723
    :cond_1
    const-string/jumbo v6, "log.tag.snet_event_log"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1724
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 1725
    :cond_2
    const-string/jumbo v6, "persist.log.tag.snet_event_log"

    const-string/jumbo v7, "I"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    .line 1730
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1733
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Settings"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1735
    .end local v5    # "snetValue":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1736
    const-string/jumbo v6, "persist.log.tag"

    invoke-static {v6, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    :cond_6
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->defaultLogdSizeValue()Ljava/lang/String;

    move-result-object v1

    .line 1739
    .local v1, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    .line 1740
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1741
    .local v4, "size":Ljava/lang/String;
    :goto_1
    const-string/jumbo v6, "persist.logd.size"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v4, ""

    .end local v4    # "size":Ljava/lang/String;
    :cond_7
    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    const-string/jumbo v6, "ctl.start"

    const-string/jumbo v7, "logd-reinit"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1744
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateLogdSizeValues()V

    .line 1705
    return-void

    .line 1706
    .end local v0    # "currentTag":Ljava/lang/String;
    .end local v1    # "defaultValue":Ljava/lang/String;
    .end local v3    # "newTag":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x0

    .local v2, "disable":Z
    goto/16 :goto_0

    .line 1740
    .end local v2    # "disable":Z
    .restart local v0    # "currentTag":Ljava/lang/String;
    .restart local v1    # "defaultValue":Ljava/lang/String;
    .restart local v3    # "newTag":Ljava/lang/String;
    :cond_9
    move-object v4, v1

    .restart local v4    # "size":Ljava/lang/String;
    goto :goto_1
.end method

.method private writeLogpersistOption(Ljava/lang/Object;Z)V
    .locals 8
    .param p1, "newValue"    # Ljava/lang/Object;
    .param p2, "skipWarning"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1818
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-nez v5, :cond_0

    .line 1819
    return-void

    .line 1821
    :cond_0
    const-string/jumbo v5, "persist.log.tag"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1822
    .local v1, "currentTag":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string/jumbo v5, "Settings"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1823
    const/4 p1, 0x0

    .line 1824
    const/4 p2, 0x1

    .line 1827
    .end local p1    # "newValue":Ljava/lang/Object;
    .end local p2    # "skipWarning":Z
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1828
    :cond_2
    if-eqz p2, :cond_4

    .line 1829
    iput-boolean v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistCleared:Z

    .line 1847
    :cond_3
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->setLogpersistOff(Z)V

    .line 1848
    return-void

    .line 1830
    :cond_4
    iget-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistCleared:Z

    if-nez v5, :cond_3

    .line 1832
    const-string/jumbo v5, "logd.logpersistd"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1833
    .local v2, "currentValue":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1834
    const-string/jumbo v5, "logcatd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1833
    if-eqz v5, :cond_3

    .line 1835
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 1836
    :cond_5
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1837
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1838
    const v7, 0x7f0e00c0

    .line 1837
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1836
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1839
    const v6, 0x7f0e00bf

    .line 1836
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1840
    const v6, 0x1040013

    .line 1836
    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1841
    const v6, 0x1040009

    .line 1836
    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    .line 1843
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    invoke-virtual {v5, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1844
    return-void

    .line 1851
    .end local v2    # "currentValue":Ljava/lang/String;
    :cond_6
    const-string/jumbo v5, "logd.logpersistd.buffer"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1852
    .local v0, "currentBuffer":Ljava/lang/String;
    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1855
    :cond_7
    :goto_0
    const-string/jumbo v5, "persist.logd.logpersistd.buffer"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    const-string/jumbo v5, "persist.logd.logpersistd"

    const-string/jumbo v6, "logcatd"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1858
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/4 v5, 0x3

    if-ge v4, v5, :cond_8

    .line 1859
    const-string/jumbo v5, "logd.logpersistd"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1860
    .restart local v2    # "currentValue":Ljava/lang/String;
    if-eqz v2, :cond_a

    .line 1861
    const-string/jumbo v5, "logcatd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1860
    if-eqz v5, :cond_a

    .line 1869
    .end local v2    # "currentValue":Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateLogpersistValues()V

    .line 1817
    return-void

    .line 1853
    .end local v4    # "i":I
    :cond_9
    invoke-direct {p0, v7}, Lcom/android/settings_ex/DevelopmentSettings;->setLogpersistOff(Z)V

    goto :goto_0

    .line 1865
    .restart local v2    # "currentValue":Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_a
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1858
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1866
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/InterruptedException;
    goto :goto_2
.end method

.method private writeMobileDataAlwaysOnOptions()V
    .locals 3

    .prologue
    .line 1644
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1645
    const-string/jumbo v2, "mobile_data_always_on"

    .line 1646
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1644
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1643
    return-void

    .line 1646
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeMockLocation()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 1054
    const-string/jumbo v7, "appops"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 1057
    .local v1, "appOpsManager":Landroid/app/AppOpsManager;
    sget-object v7, Lcom/android/settings_ex/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    invoke-virtual {v1, v7}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v6

    .line 1058
    .local v6, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v6, :cond_1

    .line 1060
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "packageOp$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 1061
    .local v4, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v7

    if-eq v7, v11, :cond_0

    .line 1062
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1064
    .local v3, "oldMockLocationApp":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1065
    const/16 v8, 0x200

    .line 1064
    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1066
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v8, 0x3a

    .line 1067
    const/4 v9, 0x2

    .line 1066
    invoke-virtual {v1, v8, v7, v3, v9}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1068
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 1076
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "oldMockLocationApp":Ljava/lang/String;
    .end local v4    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .end local v5    # "packageOp$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1078
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1079
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    const/16 v9, 0x200

    .line 1078
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1080
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1081
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 1080
    const/16 v9, 0x3a

    .line 1081
    const/4 v10, 0x0

    .line 1080
    invoke-virtual {v1, v9, v7, v8, v10}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1053
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_1
    return-void

    .line 1082
    :catch_1
    move-exception v2

    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method private writeMsaaOptions()V
    .locals 2

    .prologue
    .line 1372
    const-string/jumbo v1, "debug.egl.force_msaa"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceMsaa:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1371
    return-void

    .line 1372
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeOtaDisableAutomaticUpdateOptions()V
    .locals 3

    .prologue
    .line 1178
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1179
    const-string/jumbo v2, "ota_disable_automatic_update"

    .line 1180
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOtaDisableAutomaticUpdate:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1178
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1174
    return-void

    .line 1180
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1994
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1995
    const-string/jumbo v1, "overlay_display_devices"

    check-cast p1, Ljava/lang/String;

    .line 1994
    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1996
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 1993
    return-void
.end method

.method private writePointerLocationOptions()V
    .locals 3

    .prologue
    .line 1276
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1277
    const-string/jumbo v2, "pointer_location"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPointerLocation:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1276
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1275
    return-void

    .line 1277
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowAllANRsOptions()V
    .locals 3

    .prologue
    .line 2030
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2031
    const-string/jumbo v2, "anr_show_background"

    .line 2032
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2030
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2029
    return-void

    .line 2032
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwLayersUpdatesOptions()V
    .locals 2

    .prologue
    .line 1444
    const-string/jumbo v1, "debug.hwui.show_layers_updates"

    .line 1445
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 1444
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1443
    return-void

    .line 1445
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwScreenUpdatesOptions()V
    .locals 2

    .prologue
    .line 1433
    const-string/jumbo v1, "debug.hwui.show_dirty_regions"

    .line 1434
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 1433
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1432
    return-void

    .line 1434
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowNonRectClipOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1421
    const-string/jumbo v1, "debug.hwui.show_non_rect_clip"

    .line 1422
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 1421
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1424
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 1420
    return-void

    .line 1422
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    .prologue
    .line 1287
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1288
    const-string/jumbo v2, "show_touches"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowTouches:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1287
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1286
    return-void

    .line 1288
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowUpdatesOption()V
    .locals 7

    .prologue
    .line 1325
    :try_start_0
    const-string/jumbo v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1326
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 1327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1328
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1329
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 1330
    .local v3, "showUpdates":I
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1331
    const/16 v4, 0x3ea

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1334
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1323
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    .end local v3    # "showUpdates":I
    :cond_0
    :goto_1
    return-void

    .line 1329
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "flinger":Landroid/os/IBinder;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "showUpdates":I
    goto :goto_0

    .line 1336
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    .end local v3    # "showUpdates":I
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeSimulateColorSpace(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1530
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1531
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1532
    .local v1, "newMode":I
    if-gez v1, :cond_0

    .line 1533
    const-string/jumbo v2, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1529
    :goto_0
    return-void

    .line 1535
    :cond_0
    const-string/jumbo v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1536
    const-string/jumbo v2, "accessibility_display_daltonizer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private writeStrictModeVisualOptions()V
    .locals 3

    .prologue
    .line 1265
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mStrictMode:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1266
    const-string/jumbo v1, "1"

    .line 1265
    :goto_0
    invoke-interface {v2, v1}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 1263
    :goto_1
    return-void

    .line 1266
    :cond_0
    const-string/jumbo v1, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1267
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeTrackFrameTimeOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1395
    const-string/jumbo v1, "debug.hwui.profile"

    .line 1396
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 1395
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1398
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 1394
    return-void

    .line 1396
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeUSBAudioOptions()V
    .locals 3

    .prologue
    .line 1558
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1559
    const-string/jumbo v2, "usb_audio_automatic_routing_disabled"

    .line 1560
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUSBAudio:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1558
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1557
    return-void

    .line 1560
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeUsbConfigurationOption(Ljava/lang/Object;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1896
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "usb"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    .line 1897
    .local v1, "manager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1898
    .local v0, "function":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 1899
    const-string/jumbo v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1900
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    .line 1895
    :goto_0
    return-void

    .line 1902
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    goto :goto_0
.end method

.method private writeVerboseMultiBroadcast()V
    .locals 3

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 878
    const-string/jumbo v2, "op_enable_wifi_multi_broadcast"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerboseMultiBroadcastSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 877
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 876
    return-void

    .line 878
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeVerifyAppsOverUsbOptions()V
    .locals 3

    .prologue
    .line 1160
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1161
    const-string/jumbo v2, "verifier_verify_adb_installs"

    .line 1162
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1160
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1159
    return-void

    .line 1162
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWebViewMultiprocessOptions()V
    .locals 7

    .prologue
    .line 980
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewMultiprocess:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 981
    .local v2, "value":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 982
    const-string/jumbo v6, "webview_multiprocess"

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 981
    :goto_0
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 986
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v4}, Landroid/webkit/IWebViewUpdateService;->getCurrentWebViewPackageName()Ljava/lang/String;

    move-result-object v3

    .line 987
    .local v3, "wv_package":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 988
    const/4 v5, -0x1

    .line 987
    invoke-interface {v4, v3, v5}, Landroid/app/IActivityManager;->killPackageDependents(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 979
    .end local v3    # "wv_package":Ljava/lang/String;
    :goto_1
    return-void

    .line 982
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 989
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 990
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_1
.end method

.method private writeWebViewProviderOptions(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 1036
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

    .line 1037
    if-nez p1, :cond_1

    const-string/jumbo v3, ""

    .line 1036
    :goto_0
    invoke-interface {v4, v3}, Landroid/webkit/IWebViewUpdateService;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1038
    .local v1, "updatedProvider":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWebViewProviderOptions()V

    .line 1039
    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_0
    return v2

    .line 1037
    .end local v1    # "updatedProvider":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 1040
    :catch_0
    move-exception v0

    .line 1042
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method private writeWifiAggressiveHandoverOptions()V
    .locals 2

    .prologue
    .line 1615
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableAggressiveHandover(I)V

    .line 1614
    return-void

    .line 1615
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiAllowScansWithTrafficOptions()V
    .locals 2

    .prologue
    .line 1624
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setAllowScansWithTraffic(I)V

    .line 1623
    return-void

    .line 1624
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiDisplayCertificationOptions()V
    .locals 3

    .prologue
    .line 1595
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1596
    const-string/jumbo v2, "wifi_display_certification_on"

    .line 1597
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiDisplayCertification:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1595
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1594
    return-void

    .line 1597
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiVerboseLoggingOptions()V
    .locals 2

    .prologue
    .line 1606
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiVerboseLogging:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableVerboseLogging(I)V

    .line 1605
    return-void

    .line 1606
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWirelessAdbDebuging()V
    .locals 2

    .prologue
    .line 888
    const-string/jumbo v1, "service.adb.tcp.port"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWirelessAdbDebuggingSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    const-string/jumbo v0, "5555"

    .line 888
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    return-void

    .line 890
    :cond_0
    const-string/jumbo v0, "-1"

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 372
    const/16 v0, 0x27

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 635
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 637
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 639
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 640
    iget-boolean v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUnavailable:Z

    if-eqz v1, :cond_0

    .line 641
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 642
    return-void

    .line 645
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 634
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2099
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 2100
    if-ne p2, v1, :cond_0

    .line 2101
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 2102
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeDebuggerOptions()V

    .line 2103
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebuggerOptions()V

    .line 2098
    :cond_0
    :goto_0
    return-void

    .line 2105
    :cond_1
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    .line 2106
    if-ne p2, v1, :cond_0

    .line 2107
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 2108
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeMockLocation()V

    .line 2109
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateMockLocation()V

    goto :goto_0

    .line 2111
    :cond_2
    if-nez p1, :cond_4

    .line 2112
    if-ne p2, v1, :cond_0

    .line 2113
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2114
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto :goto_0

    .line 2116
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/settings_ex/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    .line 2120
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

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

    .line 2393
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_2

    .line 2394
    if-ne p2, v4, :cond_1

    .line 2395
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    .line 2396
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2397
    const-string/jumbo v4, "adb_enabled"

    .line 2396
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2398
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 2399
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 2400
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateBugreportOptions()V

    .line 2392
    :cond_0
    :goto_0
    return-void

    .line 2403
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 2405
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_3

    .line 2406
    if-ne p2, v4, :cond_0

    .line 2408
    :try_start_0
    const-string/jumbo v3, "usb"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2409
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    .line 2410
    .local v2, "service":Landroid/hardware/usb/IUsbManager;
    invoke-interface {v2}, Landroid/hardware/usb/IUsbManager;->clearUsbDebuggingKeys()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2411
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "service":Landroid/hardware/usb/IUsbManager;
    :catch_0
    move-exception v1

    .line 2412
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "DevelopmentSettings"

    const-string/jumbo v4, "Unable to clear adb keys"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2415
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_5

    .line 2416
    if-ne p2, v4, :cond_4

    .line 2417
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    .line 2418
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2419
    const-string/jumbo v4, "development_settings_enabled"

    .line 2418
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2420
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    .line 2421
    iget-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0

    .line 2424
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 2426
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_0

    .line 2427
    if-ne p2, v4, :cond_6

    .line 2428
    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->setLogpersistOff(Z)V

    goto :goto_0

    .line 2430
    :cond_6
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateLogpersistValues()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 377
    invoke-super/range {p0 .. p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 379
    const-string/jumbo v14, "window"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 381
    const-string/jumbo v14, "backup"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    .line 380
    invoke-static {v14}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 383
    const-string/jumbo v14, "webviewupdate"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v14

    .line 382
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    .line 385
    const-string/jumbo v15, "persistent_data_block"

    .line 384
    invoke-virtual {v14, v15}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/service/persistentdata/PersistentDataBlockManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mOemUnlockManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 386
    const-string/jumbo v14, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string/jumbo v15, "device_policy"

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 389
    const-string/jumbo v14, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/UserManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    .line 391
    const-string/jumbo v14, "wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 393
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->setIfOnlyAvailableForAdmins(Z)V

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DevelopmentSettings;->isUiRestricted()Z

    move-result v14

    if-nez v14, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings_ex/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 402
    const v14, 0x7f080024

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 405
    const-string/jumbo v14, "debug_debugging_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 404
    check-cast v2, Landroid/support/v7/preference/PreferenceGroup;

    .line 406
    .local v2, "debugDebuggingCategory":Landroid/support/v7/preference/PreferenceGroup;
    const-string/jumbo v14, "enable_adb"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    .line 407
    const-string/jumbo v14, "clear_adb_keys"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    .line 408
    const-string/jumbo v14, "ro.adb.secure"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_0

    .line 409
    if-eqz v2, :cond_0

    .line 410
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v14}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 413
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    const-string/jumbo v14, "enable_terminal"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string/jumbo v15, "com.android.terminal"

    invoke-static {v14, v15}, Lcom/android/settings_ex/DevelopmentSettings;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 416
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v14}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 417
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    .line 421
    :cond_1
    const-string/jumbo v14, "getlogs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mLogsPreference:Landroid/support/v7/preference/Preference;

    .line 422
    const-string/jumbo v14, "disable_doze"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableDozeSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 425
    const-string/jumbo v14, "op_wifi_verbose_multi_broadcast"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mVerboseMultiBroadcastSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 426
    const-string/jumbo v14, "op_wireless_adb_debugging"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mWirelessAdbDebuggingSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 428
    const-string/jumbo v14, "bugreport"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreport:Landroid/support/v7/preference/Preference;

    .line 429
    const-string/jumbo v14, "bugreport_in_power"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

    .line 430
    const-string/jumbo v14, "keep_screen_on"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    check-cast v14, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 431
    const-string/jumbo v14, "bt_hci_snoop_log"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

    .line 432
    const-string/jumbo v14, "oem_unlock_enable"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    check-cast v14, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 433
    invoke-static {}, Lcom/android/settings_ex/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v14

    if-nez v14, :cond_2

    .line 434
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->removePreference(Landroid/support/v7/preference/Preference;)V

    .line 435
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 438
    :cond_2
    const-string/jumbo v14, "debug_view_attributes"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugViewAttributes:Landroid/support/v14/preference/SwitchPreference;

    .line 439
    const-string/jumbo v14, "force_allow_on_external"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mForceAllowOnExternal:Landroid/support/v14/preference/SwitchPreference;

    .line 440
    const-string/jumbo v14, "local_backup_password"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/PreferenceScreen;

    .line 441
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    const-string/jumbo v14, "advanced_reboot"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mAdvancedReboot:Landroid/support/v14/preference/SwitchPreference;

    .line 445
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v14}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v14

    if-nez v14, :cond_3

    .line 446
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/support/v7/preference/Preference;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/support/v7/preference/Preference;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/support/v7/preference/Preference;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/support/v7/preference/Preference;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mAdvancedReboot:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/support/v7/preference/Preference;)V

    .line 453
    :cond_3
    const-string/jumbo v14, "debug_app"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugAppPref:Landroid/support/v7/preference/Preference;

    .line 454
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    const-string/jumbo v14, "wait_for_debugger"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    .line 457
    const-string/jumbo v14, "mock_location_app"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    .line 458
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    const-string/jumbo v14, "verify_apps_over_usb"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    .line 461
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DevelopmentSettings;->showVerifierSetting()Z

    move-result v14

    if-nez v14, :cond_4

    .line 462
    if-eqz v2, :cond_7

    .line 463
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v14}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 468
    :cond_4
    :goto_0
    const-string/jumbo v14, "strict_mode"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mStrictMode:Landroid/support/v14/preference/SwitchPreference;

    .line 469
    const-string/jumbo v14, "pointer_location"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mPointerLocation:Landroid/support/v14/preference/SwitchPreference;

    .line 470
    const-string/jumbo v14, "show_touches"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mShowTouches:Landroid/support/v14/preference/SwitchPreference;

    .line 471
    const-string/jumbo v14, "show_screen_updates"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    .line 472
    const-string/jumbo v14, "disable_overlays"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableOverlays:Landroid/support/v14/preference/SwitchPreference;

    .line 475
    const-string/jumbo v14, "force_hw_ui"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mForceHardwareUi:Landroid/support/v14/preference/SwitchPreference;

    .line 476
    const-string/jumbo v14, "force_msaa"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mForceMsaa:Landroid/support/v14/preference/SwitchPreference;

    .line 477
    const-string/jumbo v14, "track_frame_time"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    .line 478
    const-string/jumbo v14, "show_non_rect_clip"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    .line 479
    const-string/jumbo v14, "show_hw_screen_udpates"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    .line 480
    const-string/jumbo v14, "show_hw_layers_udpates"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/support/v14/preference/SwitchPreference;

    .line 481
    const-string/jumbo v14, "debug_layout"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugLayout:Landroid/support/v14/preference/SwitchPreference;

    .line 482
    const-string/jumbo v14, "force_rtl_layout_all_locales"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mForceRtlLayout:Landroid/support/v14/preference/SwitchPreference;

    .line 483
    const-string/jumbo v14, "debug_hw_overdraw"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    .line 484
    const-string/jumbo v14, "wifi_display_certification"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiDisplayCertification:Landroid/support/v14/preference/SwitchPreference;

    .line 485
    const-string/jumbo v14, "wifi_verbose_logging"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiVerboseLogging:Landroid/support/v14/preference/SwitchPreference;

    .line 486
    const-string/jumbo v14, "wifi_aggressive_handover"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/support/v14/preference/SwitchPreference;

    .line 487
    const-string/jumbo v14, "wifi_allow_scan_with_traffic"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/support/v14/preference/SwitchPreference;

    .line 488
    const-string/jumbo v14, "mobile_data_always_on"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    .line 489
    const-string/jumbo v14, "select_logd_size"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    .line 490
    const-string/jumbo v14, "1"

    const-string/jumbo v15, "ro.debuggable"

    const-string/jumbo v16, "0"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 491
    const-string/jumbo v14, "select_logpersist"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    .line 502
    :goto_1
    const-string/jumbo v14, "select_usb_configuration"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a001e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 505
    .local v5, "entries":[Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a001f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 506
    .local v6, "entriesvalue":[Ljava/lang/CharSequence;
    const/4 v14, 0x5

    new-array v12, v14, [Ljava/lang/String;

    .line 507
    .local v12, "usbentries":[Ljava/lang/CharSequence;
    const/4 v14, 0x5

    new-array v13, v14, [Ljava/lang/String;

    .line 508
    .local v13, "usbentriesvalue":[Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v14, v5

    if-ge v8, v14, :cond_b

    .line 509
    const/4 v14, 0x3

    if-ge v8, v14, :cond_a

    .line 510
    aget-object v14, v5, v8

    aput-object v14, v12, v8

    .line 511
    aget-object v14, v6, v8

    aput-object v14, v13, v8

    .line 508
    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 397
    .end local v2    # "debugDebuggingCategory":Landroid/support/v7/preference/PreferenceGroup;
    .end local v5    # "entries":[Ljava/lang/CharSequence;
    .end local v6    # "entriesvalue":[Ljava/lang/CharSequence;
    .end local v8    # "i":I
    .end local v12    # "usbentries":[Ljava/lang/CharSequence;
    .end local v13    # "usbentriesvalue":[Ljava/lang/CharSequence;
    :cond_6
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mUnavailable:Z

    .line 398
    new-instance v14, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DevelopmentSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Landroid/support/v7/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 399
    return-void

    .line 465
    .restart local v2    # "debugDebuggingCategory":Landroid/support/v7/preference/PreferenceGroup;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 493
    :cond_8
    const-string/jumbo v14, "select_logpersist"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/support/v7/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    .line 494
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-eqz v14, :cond_9

    .line 495
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 496
    if-eqz v2, :cond_9

    .line 497
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, v14}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 500
    :cond_9
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    goto/16 :goto_1

    .line 512
    .restart local v5    # "entries":[Ljava/lang/CharSequence;
    .restart local v6    # "entriesvalue":[Ljava/lang/CharSequence;
    .restart local v8    # "i":I
    .restart local v12    # "usbentries":[Ljava/lang/CharSequence;
    .restart local v13    # "usbentriesvalue":[Ljava/lang/CharSequence;
    :cond_a
    const/4 v14, 0x3

    if-le v8, v14, :cond_5

    .line 513
    add-int/lit8 v14, v8, -0x1

    aget-object v15, v5, v8

    aput-object v15, v12, v14

    .line 514
    add-int/lit8 v14, v8, -0x1

    aget-object v15, v6, v8

    aput-object v15, v13, v14

    goto :goto_3

    .line 517
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v14, v12}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 518
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v14, v13}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 520
    const-string/jumbo v14, "select_webview_provider"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewProvider:Landroid/support/v7/preference/ListPreference;

    .line 521
    const-string/jumbo v14, "enable_webview_multiprocess"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewMultiprocess:Landroid/support/v14/preference/SwitchPreference;

    .line 522
    const-string/jumbo v14, "bluetooth_disable_absolute_volume"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mBluetoothDisableAbsVolume:Landroid/support/v14/preference/SwitchPreference;

    .line 524
    const-string/jumbo v14, "window_animation_scale"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    .line 525
    const-string/jumbo v14, "transition_animation_scale"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    .line 526
    const-string/jumbo v14, "animator_duration_scale"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    .line 527
    const-string/jumbo v14, "overlay_display_devices"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    .line 528
    const-string/jumbo v14, "simulate_color_space"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    .line 529
    const-string/jumbo v14, "usb_audio"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mUSBAudio:Landroid/support/v14/preference/SwitchPreference;

    .line 530
    const-string/jumbo v14, "force_resizable_activities"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mForceResizable:Landroid/support/v14/preference/SwitchPreference;

    .line 533
    const-string/jumbo v14, "immediately_destroy_activities"

    .line 532
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    .line 534
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    const-string/jumbo v14, "app_process_limit"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    .line 540
    const-string/jumbo v14, "show_all_anrs"

    .line 539
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    .line 541
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    const-string/jumbo v14, "hdcp_checking"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    .line 545
    .local v7, "hdcpChecking":Landroid/support/v7/preference/Preference;
    if-eqz v7, :cond_c

    .line 546
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/settings_ex/DevelopmentSettings;->removePreferenceForProduction(Landroid/support/v7/preference/Preference;)Z

    .line 551
    :cond_c
    const-string/jumbo v14, "convert_to_file_encryption"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceScreen;

    .line 554
    .local v1, "convertFbePreference":Landroid/support/v7/preference/PreferenceScreen;
    :try_start_0
    const-string/jumbo v14, "mount"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    .line 555
    .local v11, "service":Landroid/os/IBinder;
    invoke-static {v11}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v10

    .line 556
    .local v10, "mountService":Landroid/os/storage/IMountService;
    invoke-interface {v10}, Landroid/os/storage/IMountService;->isConvertibleToFBE()Z

    move-result v14

    if-nez v14, :cond_10

    .line 557
    const-string/jumbo v14, "convert_to_file_encryption"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->removePreference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    .end local v10    # "mountService":Landroid/os/storage/IMountService;
    .end local v11    # "service":Landroid/os/IBinder;
    :cond_d
    :goto_4
    const-string/jumbo v14, "ota_disable_automatic_update"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mOtaDisableAutomaticUpdate:Landroid/support/v14/preference/SwitchPreference;

    .line 569
    const-string/jumbo v14, "ota_disable_automatic_update"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    .line 571
    const-string/jumbo v14, "color_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings_ex/ColorModePreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mColorModePreference:Lcom/android/settings_ex/ColorModePreference;

    .line 578
    const-string/jumbo v14, "color_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    .line 579
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mColorModePreference:Lcom/android/settings_ex/ColorModePreference;

    .line 581
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWebViewProviderOptions()V

    .line 583
    const-string/jumbo v14, "color_temperature"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0035

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 585
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    :goto_5
    const-string/jumbo v14, "aptx_hd_support"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mAptxHdSupportSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 595
    sget-object v14, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v14}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string/jumbo v15, "oem.service.adb.tcp.port.support"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    .line 596
    .local v9, "isSupportWirelessAdbDebugging":Z
    if-nez v9, :cond_e

    if-eqz v2, :cond_e

    .line 597
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mWirelessAdbDebuggingSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v14}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 602
    :cond_e
    const-string/jumbo v14, "debug_networking_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 601
    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    .line 603
    .local v3, "debugNetworkingCategory":Landroid/support/v7/preference/PreferenceGroup;
    if-eqz v3, :cond_f

    .line 604
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mAptxHdSupportSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v14}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 376
    :cond_f
    return-void

    .line 558
    .end local v3    # "debugNetworkingCategory":Landroid/support/v7/preference/PreferenceGroup;
    .end local v9    # "isSupportWirelessAdbDebugging":Z
    .restart local v10    # "mountService":Landroid/os/storage/IMountService;
    .restart local v11    # "service":Landroid/os/IBinder;
    :cond_10
    :try_start_1
    const-string/jumbo v14, "file"

    const-string/jumbo v15, "ro.crypto.type"

    const-string/jumbo v16, "none"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 559
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 561
    const v15, 0x7f0e0121

    .line 560
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 563
    .end local v10    # "mountService":Landroid/os/storage/IMountService;
    .end local v11    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v4

    .line 564
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "convert_to_file_encryption"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 588
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_11
    const-string/jumbo v14, "color_temperature"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    .line 589
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    goto :goto_5
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 732
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 733
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 735
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateUsbConfigurationValues()V

    .line 737
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 2454
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 2455
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onDestroy()V

    .line 2453
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 742
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onDestroyView()V

    .line 744
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 745
    return-void

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 748
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 749
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 741
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2437
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 2438
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_0

    .line 2439
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 2441
    :cond_0
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 2435
    :cond_1
    :goto_0
    return-void

    .line 2442
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_4

    .line 2443
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_3

    .line 2444
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 2446
    :cond_3
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 2447
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 2448
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 723
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPause()V

    .line 724
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mColorModePreference:Lcom/android/settings_ex/ColorModePreference;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mColorModePreference:Lcom/android/settings_ex/ColorModePreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/ColorModePreference;->stopListening()V

    .line 722
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2313
    const-string/jumbo v1, "hdcp_checking"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2314
    const-string/jumbo v1, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateHdcpValues()V

    .line 2316
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 2317
    return v3

    .line 2318
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewProvider:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_3

    .line 2319
    if-nez p2, :cond_1

    .line 2320
    const-string/jumbo v1, "DevelopmentSettings"

    const-string/jumbo v2, "Tried to set a null WebView provider"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    return v4

    .line 2323
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeWebViewProviderOptions(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2324
    return v3

    .line 2328
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2329
    const v2, 0x7f0e011e

    .line 2328
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2330
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2332
    return v4

    .line 2333
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_4

    .line 2334
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    .line 2335
    return v3

    .line 2336
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_5

    .line 2337
    invoke-direct {p0, p2, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeLogpersistOption(Ljava/lang/Object;Z)V

    .line 2338
    return v3

    .line 2339
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_6

    .line 2340
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeUsbConfigurationOption(Ljava/lang/Object;)V

    .line 2341
    return v3

    .line 2342
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_7

    .line 2343
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v4, v1, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    .line 2344
    return v3

    .line 2345
    :cond_7
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_8

    .line 2346
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v3, v1, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    .line 2347
    return v3

    .line 2348
    :cond_8
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_9

    .line 2349
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v2, 0x2

    invoke-direct {p0, v2, v1, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    .line 2350
    return v3

    .line 2351
    :cond_9
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_a

    .line 2352
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    .line 2353
    return v3

    .line 2354
    :cond_a
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_b

    .line 2355
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeTrackFrameTimeOptions(Ljava/lang/Object;)V

    .line 2356
    return v3

    .line 2357
    :cond_b
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_c

    .line 2358
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeDebugHwOverdrawOptions(Ljava/lang/Object;)V

    .line 2359
    return v3

    .line 2360
    :cond_c
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_d

    .line 2361
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowNonRectClipOptions(Ljava/lang/Object;)V

    .line 2362
    return v3

    .line 2363
    :cond_d
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_e

    .line 2364
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 2365
    return v3

    .line 2366
    :cond_e
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_f

    .line 2367
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    .line 2368
    return v3

    .line 2370
    :cond_f
    return v4
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2126
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2127
    return v4

    .line 2131
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "getlogs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2133
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.oem.oemlogkit.startlog"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2134
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x30000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2135
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2141
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v5, :cond_5

    .line 2142
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2143
    iput-boolean v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    .line 2144
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 2145
    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2146
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e00ca

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2145
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2147
    const v5, 0x7f0e00c9

    .line 2145
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2148
    const v5, 0x1040013

    .line 2145
    invoke-virtual {v3, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2149
    const v5, 0x1040009

    .line 2145
    invoke-virtual {v3, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 2151
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v3, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2291
    :cond_3
    :goto_1
    return v4

    .line 2153
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2154
    const-string/jumbo v5, "adb_enabled"

    .line 2153
    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2155
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 2156
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 2157
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateBugreportOptions()V

    goto :goto_1

    .line 2159
    :cond_5
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    if-ne p1, v5, :cond_7

    .line 2160
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 2161
    :cond_6
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2162
    const v5, 0x7f0e00cb

    .line 2161
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2163
    const v5, 0x104000a

    .line 2161
    invoke-virtual {v3, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2164
    const/high16 v5, 0x1040000

    .line 2161
    invoke-virtual {v3, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    goto :goto_1

    .line 2166
    :cond_7
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v5, :cond_9

    .line 2167
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2168
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v5, "com.android.terminal"

    .line 2169
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2168
    :goto_2
    invoke-virtual {v2, v5, v3, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_1

    :cond_8
    move v3, v4

    .line 2170
    goto :goto_2

    .line 2171
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_9
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v5, :cond_b

    .line 2172
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2173
    const-string/jumbo v6, "bugreport_in_power_menu"

    .line 2174
    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2172
    :goto_3
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2175
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->setBugreportStorageProviderStatus()V

    goto/16 :goto_1

    :cond_a
    move v3, v4

    .line 2174
    goto :goto_3

    .line 2176
    :cond_b
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-ne p1, v5, :cond_d

    .line 2177
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2178
    const-string/jumbo v6, "stay_on_while_plugged_in"

    .line 2179
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v3}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2180
    const/4 v3, 0x3

    .line 2177
    :goto_4
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_c
    move v3, v4

    .line 2180
    goto :goto_4

    .line 2181
    :cond_d
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v5, :cond_e

    .line 2182
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeBtHciSnoopLogOptions()V

    goto/16 :goto_1

    .line 2183
    :cond_e
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-ne p1, v5, :cond_10

    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v5}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2184
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v3}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2185
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/android/settings_ex/DevelopmentSettings;->showKeyguardConfirmation(Landroid/content/res/Resources;I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2186
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto/16 :goto_1

    .line 2189
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/android/settings_ex/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 2191
    :cond_10
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    if-ne p1, v5, :cond_11

    .line 2192
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v5, Lcom/android/settings_ex/AppPicker;

    invoke-direct {v1, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2193
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.settings_ex.extra.REQUESTIING_PERMISSION"

    .line 2194
    const-string/jumbo v5, "android.permission.ACCESS_MOCK_LOCATION"

    .line 2193
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2195
    const/16 v3, 0x3e9

    invoke-virtual {p0, v1, v3}, Lcom/android/settings_ex/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 2196
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_11
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugViewAttributes:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v5, :cond_13

    .line 2197
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2198
    const-string/jumbo v6, "debug_view_attributes"

    .line 2199
    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugViewAttributes:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 2197
    :goto_5
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_12
    move v3, v4

    .line 2199
    goto :goto_5

    .line 2200
    :cond_13
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceAllowOnExternal:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v5, :cond_15

    .line 2201
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2202
    const-string/jumbo v6, "force_allow_on_external"

    .line 2203
    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceAllowOnExternal:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 2201
    :goto_6
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_14
    move v3, v4

    .line 2203
    goto :goto_6

    .line 2204
    :cond_15
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugAppPref:Landroid/support/v7/preference/Preference;

    if-ne p1, v5, :cond_16

    .line 2205
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/android/settings_ex/AppPicker;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2206
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.android.settings_ex.extra.DEBUGGABLE"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2207
    const/16 v3, 0x3e8

    invoke-virtual {p0, v1, v3}, Lcom/android/settings_ex/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 2208
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_16
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_17

    .line 2209
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeDebuggerOptions()V

    goto/16 :goto_1

    .line 2210
    :cond_17
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_18

    .line 2211
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeVerifyAppsOverUsbOptions()V

    goto/16 :goto_1

    .line 2212
    :cond_18
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOtaDisableAutomaticUpdate:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_19

    .line 2213
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeOtaDisableAutomaticUpdateOptions()V

    goto/16 :goto_1

    .line 2214
    :cond_19
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mStrictMode:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_1a

    .line 2215
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeStrictModeVisualOptions()V

    goto/16 :goto_1

    .line 2216
    :cond_1a
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPointerLocation:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_1b

    .line 2217
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_1

    .line 2218
    :cond_1b
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowTouches:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_1c

    .line 2219
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_1

    .line 2220
    :cond_1c
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_1d

    .line 2221
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowUpdatesOption()V

    goto/16 :goto_1

    .line 2222
    :cond_1d
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableOverlays:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_1e

    .line 2223
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeDisableOverlaysOption()V

    goto/16 :goto_1

    .line 2224
    :cond_1e
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowCpuUsage:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_1f

    .line 2225
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeCpuUsageOptions()V

    goto/16 :goto_1

    .line 2226
    :cond_1f
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_20

    .line 2227
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions()V

    goto/16 :goto_1

    .line 2228
    :cond_20
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_21

    .line 2229
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowAllANRsOptions()V

    goto/16 :goto_1

    .line 2230
    :cond_21
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceHardwareUi:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_22

    .line 2231
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeHardwareUiOptions()V

    goto/16 :goto_1

    .line 2232
    :cond_22
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceMsaa:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_23

    .line 2233
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeMsaaOptions()V

    goto/16 :goto_1

    .line 2234
    :cond_23
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_24

    .line 2235
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowHwScreenUpdatesOptions()V

    goto/16 :goto_1

    .line 2236
    :cond_24
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_25

    .line 2237
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowHwLayersUpdatesOptions()V

    goto/16 :goto_1

    .line 2238
    :cond_25
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugLayout:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_26

    .line 2239
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeDebugLayoutOptions()V

    goto/16 :goto_1

    .line 2240
    :cond_26
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceRtlLayout:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_27

    .line 2241
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeForceRtlOptions()V

    goto/16 :goto_1

    .line 2242
    :cond_27
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiDisplayCertification:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_28

    .line 2243
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeWifiDisplayCertificationOptions()V

    goto/16 :goto_1

    .line 2244
    :cond_28
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiVerboseLogging:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_29

    .line 2245
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeWifiVerboseLoggingOptions()V

    goto/16 :goto_1

    .line 2246
    :cond_29
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_2a

    .line 2247
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeWifiAggressiveHandoverOptions()V

    goto/16 :goto_1

    .line 2248
    :cond_2a
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_2b

    .line 2249
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeWifiAllowScansWithTrafficOptions()V

    goto/16 :goto_1

    .line 2250
    :cond_2b
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_2c

    .line 2251
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeMobileDataAlwaysOnOptions()V

    goto/16 :goto_1

    .line 2252
    :cond_2c
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_2d

    .line 2253
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeColorTemperature()V

    goto/16 :goto_1

    .line 2254
    :cond_2d
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUSBAudio:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_2e

    .line 2255
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeUSBAudioOptions()V

    goto/16 :goto_1

    .line 2256
    :cond_2e
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceResizable:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_2f

    .line 2257
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeForceResizableOptions()V

    goto/16 :goto_1

    .line 2258
    :cond_2f
    const-string/jumbo v3, "inactive_apps"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 2259
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->startInactiveAppsFragment()V

    goto/16 :goto_1

    .line 2260
    :cond_30
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdvancedReboot:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_31

    .line 2261
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeAdvancedRebootOptions()V

    goto/16 :goto_1

    .line 2262
    :cond_31
    const-string/jumbo v3, "background_check"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 2263
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->startBackgroundCheckFragment()V

    goto/16 :goto_1

    .line 2264
    :cond_32
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBluetoothDisableAbsVolume:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_33

    .line 2265
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeBluetoothDisableAbsVolumeOptions()V

    goto/16 :goto_1

    .line 2266
    :cond_33
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewMultiprocess:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_34

    .line 2267
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeWebViewMultiprocessOptions()V

    goto/16 :goto_1

    .line 2268
    :cond_34
    const-string/jumbo v3, "reset_shortcut_manager_throttling"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 2269
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->resetShortcutManagerThrottling()V

    goto/16 :goto_1

    .line 2272
    :cond_35
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableDozeSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_36

    .line 2273
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeDisableDozeOptions()V

    goto/16 :goto_1

    .line 2274
    :cond_36
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerboseMultiBroadcastSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_37

    .line 2275
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "zhuyang--mVerboseMultiBroadcastSwitch"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2276
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeVerboseMultiBroadcast()V

    goto/16 :goto_1

    .line 2277
    :cond_37
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWirelessAdbDebuggingSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_38

    .line 2278
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "zhuyang--mWirelessAdbDebuggingSwitch"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2279
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeWirelessAdbDebuging()V

    goto/16 :goto_1

    .line 2282
    :cond_38
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAptxHdSupportSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_39

    .line 2283
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeAptxHdSupportSwitch()V

    goto/16 :goto_1

    .line 2288
    :cond_39
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v3

    return v3

    .line 2136
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 672
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onResume()V

    .line 674
    iget-boolean v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUnavailable:Z

    if-eqz v4, :cond_1

    .line 676
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v2

    if-nez v2, :cond_0

    .line 677
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0e009e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 679
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 680
    return-void

    .line 688
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 687
    invoke-static {v4}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 689
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v4, v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 690
    if-nez v0, :cond_5

    .line 691
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 696
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 698
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "development_settings_enabled"

    .line 697
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    .line 699
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    iget-boolean v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 700
    iget-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 702
    iget-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    if-eqz v2, :cond_6

    .line 713
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 715
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mColorModePreference:Lcom/android/settings_ex/ColorModePreference;

    if-eqz v2, :cond_4

    .line 716
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mColorModePreference:Lcom/android/settings_ex/ColorModePreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/ColorModePreference;->startListening()V

    .line 717
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mColorModePreference:Lcom/android/settings_ex/ColorModePreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/ColorModePreference;->updateCurrentAndSupported()V

    .line 671
    :cond_4
    return-void

    .line 693
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 707
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 708
    const-string/jumbo v4, "development_settings_enabled"

    .line 707
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 709
    iput-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    .line 710
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    iget-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 711
    iget-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2072
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 2073
    return-void

    .line 2075
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    if-eq p2, v0, :cond_2

    .line 2076
    if-eqz p2, :cond_3

    .line 2077
    iput-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    .line 2078
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 2079
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2080
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2081
    const v2, 0x7f0e00cd

    .line 2080
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2079
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2082
    const v1, 0x7f0e00cc

    .line 2079
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2083
    const v1, 0x1040013

    .line 2079
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2084
    const v1, 0x1040009

    .line 2079
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 2086
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2071
    :cond_2
    :goto_0
    return-void

    .line 2088
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->resetDangerousOptions()V

    .line 2089
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2090
    const-string/jumbo v1, "development_settings_enabled"

    .line 2089
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2091
    iput-boolean p2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    .line 2092
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0
.end method

.method pokeSystemProperties()V
    .locals 2

    .prologue
    .line 2459
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDontPokeProperties:Z

    if-nez v0, :cond_0

    .line 2461
    new-instance v0, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2458
    :cond_0
    return-void
.end method

.method updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V
    .locals 1
    .param p1, "switchPreference"    # Landroid/support/v14/preference/SwitchPreference;
    .param p2, "value"    # Z

    .prologue
    .line 753
    invoke-virtual {p1, p2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 754
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 752
    return-void
.end method
