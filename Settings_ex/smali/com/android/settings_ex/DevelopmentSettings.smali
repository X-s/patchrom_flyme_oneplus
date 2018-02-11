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

.field private static isSupportAptxHdSupport:Z

.field private static isSupportWirelessAdbDebugging:Z


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
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings_ex/DevelopmentSettings;->isSupportWirelessAdbDebugging:Z

    return v0
.end method

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

    .line 2513
    new-instance v0, Lcom/android/settings_ex/DevelopmentSettings$2;

    invoke-direct {v0}, Lcom/android/settings_ex/DevelopmentSettings$2;-><init>()V

    .line 2512
    sput-object v0, Lcom/android/settings_ex/DevelopmentSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 109
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 369
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

    .line 2468
    new-instance v0, Lcom/android/settings_ex/DevelopmentSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DevelopmentSettings$1;-><init>(Lcom/android/settings_ex/DevelopmentSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 368
    return-void
.end method

.method private addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;
    .locals 2
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 613
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 614
    .local v0, "pref":Landroid/support/v7/preference/ListPreference;
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 616
    return-object v0
.end method

.method private confirmEnableOemUnlock()V
    .locals 5

    .prologue
    .line 2044
    new-instance v0, Lcom/android/settings_ex/DevelopmentSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DevelopmentSettings$3;-><init>(Lcom/android/settings_ex/DevelopmentSettings;)V

    .line 2053
    .local v0, "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/settings_ex/DevelopmentSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/DevelopmentSettings$4;-><init>(Lcom/android/settings_ex/DevelopmentSettings;)V

    .line 2063
    .local v1, "onDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2064
    const v3, 0x7f0e00ad

    .line 2063
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2065
    const v3, 0x7f0e00ae

    .line 2063
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2066
    const v3, 0x7f0e0a10

    .line 2063
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2067
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    .line 2063
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 2043
    return-void
.end method

.method private static currentStrictModeActiveIndex()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1259
    const-string/jumbo v1, "persist.sys.strictmode.visual"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1260
    return v2

    .line 1262
    :cond_0
    const-string/jumbo v1, "persist.sys.strictmode.visual"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1263
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
    .line 1653
    const-string/jumbo v1, "ro.logd.size"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1654
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1655
    :cond_0
    const-string/jumbo v1, "ro.config.low_ram"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1656
    const-string/jumbo v0, "65536"

    .line 1661
    :cond_1
    :goto_0
    return-object v0

    .line 1658
    :cond_2
    const-string/jumbo v0, "262144"

    goto :goto_0
.end method

.method private disableForUser(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 620
    if-eqz p1, :cond_0

    .line 621
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 622
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 619
    :cond_0
    return-void
.end method

.method private dismissDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2377
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2378
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2379
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 2381
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 2382
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2383
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    .line 2385
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 2386
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2387
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 2389
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 2390
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2391
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    .line 2376
    :cond_3
    return-void
.end method

.method private enableOemUnlockPreference()Z
    .locals 1

    .prologue
    .line 1216
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

    .line 1187
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1188
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "adb_enabled"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 1189
    return v5

    .line 1191
    :cond_0
    const-string/jumbo v4, "package_verifier_enable"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    .line 1192
    return v5

    .line 1194
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1195
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1196
    .local v3, "verification":Landroid/content/Intent;
    const-string/jumbo v4, "application/vnd.android.package-archive"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1197
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1198
    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1199
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 1200
    return v5

    .line 1203
    :cond_2
    return v6
.end method

.method private findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 627
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 628
    .local v0, "pref":Landroid/support/v14/preference/SwitchPreference;
    if-nez v0, :cond_0

    .line 629
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

    .line 631
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    return-object v0
.end method

.method private isBootloaderUnlocked()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2607
    const/4 v0, -0x1

    .line 2608
    .local v0, "flashLockState":I
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOemUnlockManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-eqz v2, :cond_0

    .line 2609
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOemUnlockManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v2}, Landroid/service/persistentdata/PersistentDataBlockManager;->getFlashLockState()I

    move-result v0

    .line 2612
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isOemUnlockAllowed()Z
    .locals 3

    .prologue
    .line 2621
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 2622
    .local v0, "userHandle":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v2, "no_oem_unlock"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2623
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v2, "no_factory_reset"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    .line 2622
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

    .line 2502
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

    .line 2503
    :catch_0
    move-exception v0

    .line 2504
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method private isSimLockedDevice()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2594
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 2595
    .local v1, "phoneCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2596
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getAllowedCarriers(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2597
    const/4 v2, 0x1

    return v2

    .line 2595
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2600
    :cond_1
    return v3
.end method

.method private removePreference(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 661
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 662
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 659
    return-void
.end method

.method private removePreferenceForProduction(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 652
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DevelopmentSettings;->removePreference(Landroid/support/v7/preference/Preference;)V

    .line 654
    const/4 v0, 0x1

    return v0

    .line 656
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private resetAdvancedRebootOptions()V
    .locals 3

    .prologue
    .line 842
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 843
    const-string/jumbo v1, "advanced_reboot"

    const/4 v2, 0x0

    .line 842
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 841
    return-void
.end method

.method private resetDangerousOptions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 911
    iput-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDontPokeProperties:Z

    .line 912
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 913
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 915
    .local v0, "cb":Landroid/support/v14/preference/SwitchPreference;
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableDozeSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-ne v2, v0, :cond_1

    .line 912
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 919
    :cond_1
    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 920
    invoke-virtual {v0, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 921
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DevelopmentSettings;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 924
    .end local v0    # "cb":Landroid/support/v14/preference/SwitchPreference;
    :cond_2
    invoke-static {}, Lcom/android/settings_ex/DevelopmentSettings;->resetDebuggerOptions()V

    .line 925
    invoke-direct {p0, v4, v3}, Lcom/android/settings_ex/DevelopmentSettings;->writeLogpersistOption(Ljava/lang/Object;Z)V

    .line 926
    invoke-direct {p0, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    .line 927
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->resetAdvancedRebootOptions()V

    .line 928
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v5, v2, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    .line 929
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    .line 930
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v3, 0x2

    invoke-direct {p0, v3, v2, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    .line 932
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->usingDevelopmentColorSpace()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 933
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    .line 935
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    .line 936
    invoke-direct {p0, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 937
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 938
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAllOptions()V

    .line 939
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDontPokeProperties:Z

    .line 940
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 910
    return-void
.end method

.method private static resetDebuggerOptions()V
    .locals 5

    .prologue
    .line 1093
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1094
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1093
    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    .local v0, "ex":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1095
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .restart local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private resetShortcutManagerThrottling()V
    .locals 5

    .prologue
    .line 2561
    const-string/jumbo v2, "shortcut"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 2560
    invoke-static {v2}, Landroid/content/pm/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;

    move-result-object v1

    .line 2562
    .local v1, "service":Landroid/content/pm/IShortcutService;
    if-eqz v1, :cond_0

    .line 2564
    :try_start_0
    invoke-interface {v1}, Landroid/content/pm/IShortcutService;->resetThrottling()V

    .line 2565
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e1058

    .line 2566
    const/4 v4, 0x0

    .line 2565
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2559
    :cond_0
    :goto_0
    return-void

    .line 2567
    :catch_0
    move-exception v0

    .line 2568
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

    .line 1244
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.shell"

    .line 1245
    const-string/jumbo v4, "com.android.shell.BugreportStorageProvider"

    .line 1244
    invoke-direct {v0, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 1247
    .local v1, "enabled":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1248
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1247
    :goto_0
    invoke-virtual {v4, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1243
    return-void

    :cond_0
    move v2, v3

    .line 1249
    goto :goto_0
.end method

.method private setLogpersistOff(Z)V
    .locals 6
    .param p1, "update"    # Z

    .prologue
    .line 1797
    const-string/jumbo v3, "persist.logd.logpersistd.buffer"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    const-string/jumbo v3, "logd.logpersistd.buffer"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    const-string/jumbo v3, "persist.logd.logpersistd"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    const-string/jumbo v4, "logd.logpersistd"

    .line 1802
    if-eqz p1, :cond_1

    const-string/jumbo v3, ""

    .line 1801
    :goto_0
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1804
    if-eqz p1, :cond_2

    .line 1805
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateLogpersistValues()V

    .line 1796
    :cond_0
    return-void

    .line 1802
    :cond_1
    const-string/jumbo v3, "stop"

    goto :goto_0

    .line 1807
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 1808
    const-string/jumbo v3, "logd.logpersistd"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1809
    .local v0, "currentValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1813
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1807
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1814
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

    .line 666
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 667
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 668
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

    .line 666
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 668
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 670
    .end local v1    # "pref":Landroid/support/v7/preference/Preference;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAllOptions()V

    .line 665
    return-void
.end method

.method private static showEnableOemUnlockPreference()Z
    .locals 2

    .prologue
    .line 1212
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
    .line 2310
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 2311
    const v1, 0x7f0e00ab

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2310
    invoke-virtual {v0, p2, v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private showVerifierSetting()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1207
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1208
    const-string/jumbo v3, "verifier_setting_visible"

    .line 1207
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

    .line 2304
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 2305
    const-class v1, Lcom/android/settings_ex/applications/BackgroundCheckSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2306
    const v3, 0x7f0e0f84

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    .line 2304
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2303
    return-void
.end method

.method private startInactiveAppsFragment()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2298
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 2299
    const-class v1, Lcom/android/settings_ex/fuelgauge/InactiveApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2300
    const v3, 0x7f0e0115

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    .line 2298
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2297
    return-void
.end method

.method private updateAdvancedRebootOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 853
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdvancedReboot:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 854
    const-string/jumbo v3, "advanced_reboot"

    .line 853
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 852
    return-void
.end method

.method private updateAllOptions()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 761
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 762
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 763
    .local v1, "cr":Landroid/content/ContentResolver;
    iput-boolean v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 764
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    .line 765
    const-string/jumbo v2, "adb_enabled"

    .line 764
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 766
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 767
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    .line 768
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v6, "com.android.terminal"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    .line 767
    :goto_1
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 771
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

    .line 772
    const-string/jumbo v2, "bugreport_in_power_menu"

    .line 771
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 773
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 774
    const-string/jumbo v2, "stay_on_while_plugged_in"

    .line 773
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_3
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 775
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

    .line 776
    const-string/jumbo v2, "bluetooth_hci_log"

    .line 775
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_4
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 777
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v2, :cond_1

    .line 778
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/Utils;->isOemUnlockEnabled(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 780
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugViewAttributes:Landroid/support/v14/preference/SwitchPreference;

    .line 781
    const-string/jumbo v2, "debug_view_attributes"

    .line 780
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_5
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 782
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceAllowOnExternal:Landroid/support/v14/preference/SwitchPreference;

    .line 783
    const-string/jumbo v5, "force_allow_on_external"

    .line 782
    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_9

    :goto_6
    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 784
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateHdcpValues()V

    .line 785
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updatePasswordSummary()V

    .line 786
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebuggerOptions()V

    .line 787
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateMockLocation()V

    .line 788
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateStrictModeVisualOptions()V

    .line 789
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updatePointerLocationOptions()V

    .line 790
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowTouchesOptions()V

    .line 791
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateFlingerOptions()V

    .line 794
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateHardwareUiOptions()V

    .line 795
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateMsaaOptions()V

    .line 796
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 797
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 798
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowHwScreenUpdatesOptions()V

    .line 799
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowHwLayersUpdatesOptions()V

    .line 800
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 801
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebugLayoutOptions()V

    .line 802
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleOptions()V

    .line 803
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 804
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    .line 805
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAppProcessLimitOptions()V

    .line 806
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowAllANRsOptions()V

    .line 807
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 808
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateOtaDisableAutomaticUpdateOptions()V

    .line 809
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateBugreportOptions()V

    .line 810
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateForceRtlOptions()V

    .line 811
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateLogdSizeValues()V

    .line 812
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateLogpersistValues()V

    .line 813
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWifiDisplayCertificationOptions()V

    .line 814
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWifiVerboseLoggingOptions()V

    .line 815
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWifiAggressiveHandoverOptions()V

    .line 816
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWifiAllowScansWithTrafficOptions()V

    .line 817
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateMobileDataAlwaysOnOptions()V

    .line 818
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSimulateColorSpace()V

    .line 819
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateUSBAudioOptions()V

    .line 820
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateForceResizableOptions()V

    .line 821
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWebViewMultiprocessOptions()V

    .line 822
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWebViewProviderOptions()V

    .line 823
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateOemUnlockOptions()V

    .line 824
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 825
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateColorTemperature()V

    .line 827
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateBluetoothDisableAbsVolumeOptions()V

    .line 828
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAdvancedRebootOptions()V

    .line 830
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDisableDozeOptions()V

    .line 833
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWirelessAdbDebuging()V

    .line 834
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateVerboseMultiBroadcast()V

    .line 837
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAptxHdSupportSwitch()V

    .line 760
    return-void

    :cond_3
    move v2, v4

    .line 764
    goto/16 :goto_0

    :cond_4
    move v2, v4

    .line 768
    goto/16 :goto_1

    :cond_5
    move v2, v4

    .line 771
    goto/16 :goto_2

    :cond_6
    move v2, v4

    .line 773
    goto/16 :goto_3

    :cond_7
    move v2, v4

    .line 775
    goto/16 :goto_4

    :cond_8
    move v2, v4

    .line 780
    goto/16 :goto_5

    :cond_9
    move v3, v4

    .line 782
    goto/16 :goto_6
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V

    .line 1964
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V

    .line 1965
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V

    .line 1962
    return-void
.end method

.method private updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V
    .locals 7
    .param p1, "which"    # I
    .param p2, "pref"    # Landroid/support/v7/preference/ListPreference;

    .prologue
    .line 1943
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v5, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v2

    .line 1944
    .local v2, "scale":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v5

    if-eqz v5, :cond_0

    .line 1945
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1947
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 1948
    .local v4, "values":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 1949
    aget-object v5, v4, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 1950
    .local v3, "val":F
    cmpg-float v5, v2, v3

    if-gtz v5, :cond_1

    .line 1951
    invoke-virtual {p2, v1}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1952
    invoke-virtual {p2}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {p2, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1953
    return-void

    .line 1948
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1956
    .end local v3    # "val":F
    :cond_2
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p2, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1957
    invoke-virtual {p2}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {p2, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1941
    .end local v1    # "i":I
    .end local v2    # "scale":F
    .end local v4    # "values":[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1958
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private updateAppProcessLimitOptions()V
    .locals 8

    .prologue
    .line 2004
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v2

    .line 2005
    .local v2, "limit":I
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 2006
    .local v4, "values":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 2007
    aget-object v5, v4, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2008
    .local v3, "val":I
    if-lt v3, v2, :cond_1

    .line 2009
    if-eqz v1, :cond_0

    .line 2010
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 2012
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 2013
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2014
    return-void

    .line 2006
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2017
    .end local v3    # "val":I
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 2018
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2002
    .end local v1    # "i":I
    .end local v2    # "limit":I
    .end local v4    # "values":[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 2019
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private updateAptxHdSupportSwitch()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 898
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 899
    const-string/jumbo v2, "bluetooth_aptx_hd"

    .line 898
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    .line 900
    .local v0, "enableAptXHD":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAptxHdSupportSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 897
    return-void

    .line 898
    .end local v0    # "enableAptXHD":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enableAptXHD":Z
    goto :goto_0
.end method

.method private updateBluetoothDisableAbsVolumeOptions()V
    .locals 3

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBluetoothDisableAbsVolume:Landroid/support/v14/preference/SwitchPreference;

    .line 1632
    const-string/jumbo v1, "persist.bluetooth.disableabsvol"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1631
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1630
    return-void
.end method

.method private updateBugreportOptions()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1238
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreport:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 1239
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 1240
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->setBugreportStorageProviderStatus()V

    .line 1237
    return-void
.end method

.method private updateColorTemperature()V
    .locals 3

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 1545
    const-string/jumbo v1, "persist.sys.debug.color_temp"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1544
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1543
    return-void
.end method

.method private updateCpuUsageOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1910
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowCpuUsage:Landroid/support/v14/preference/SwitchPreference;

    .line 1911
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1912
    const-string/jumbo v3, "show_processes"

    .line 1911
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1910
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1909
    return-void
.end method

.method private updateDebugHwOverdrawOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1453
    const-string/jumbo v3, "debug.hwui.overdraw"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1454
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1455
    const-string/jumbo v1, ""

    .line 1458
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1459
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1460
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1461
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1462
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1463
    return-void

    .line 1459
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1466
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1467
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1452
    return-void
.end method

.method private updateDebugLayoutOptions()V
    .locals 3

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugLayout:Landroid/support/v14/preference/SwitchPreference;

    .line 1479
    const-string/jumbo v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1478
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1477
    return-void
.end method

.method private updateDebuggerOptions()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1101
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "debug_app"

    .line 1100
    invoke-static {v4, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 1102
    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    .line 1103
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "wait_for_debugger"

    .line 1102
    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {p0, v7, v4}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1104
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1107
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 1108
    const/16 v8, 0x200

    .line 1107
    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1109
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1110
    .local v2, "lab":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1114
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

    .line 1115
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 1116
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1099
    .end local v3    # "label":Ljava/lang/String;
    :goto_2
    return-void

    :cond_0
    move v4, v6

    .line 1102
    goto :goto_0

    .line 1110
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "lab":Ljava/lang/CharSequence;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_1

    .line 1111
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "lab":Ljava/lang/CharSequence;
    .end local v3    # "label":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1112
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_1

    .line 1118
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

    .line 1119
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateDisableDozeOptions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 859
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 860
    const v4, 0x1120014

    .line 859
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 861
    .local v0, "dozeDefault":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 862
    const-string/jumbo v5, "doze_mode_enabaled"

    if-eqz v0, :cond_0

    move v2, v3

    .line 861
    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 863
    .local v1, "value":Z
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableDozeSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 864
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableDozeSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 858
    return-void

    .line 862
    .end local v1    # "value":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 861
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

    .line 1303
    :try_start_0
    const-string/jumbo v11, "SurfaceFlinger"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1304
    .local v4, "flinger":Landroid/os/IBinder;
    if-eqz v4, :cond_0

    .line 1305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1306
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 1307
    .local v5, "reply":Landroid/os/Parcel;
    const-string/jumbo v11, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1308
    const/16 v11, 0x3f2

    const/4 v12, 0x0

    invoke-interface {v4, v11, v0, v5, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1310
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1312
    .local v7, "showCpu":I
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1313
    .local v2, "enableGL":I
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1314
    .local v8, "showUpdates":I
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_1

    move v11, v9

    :goto_0
    invoke-virtual {p0, v12, v11}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1316
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1317
    .local v6, "showBackground":I
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1318
    .local v1, "disableOverlays":I
    iget-object v11, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableOverlays:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p0, v11, v9}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1319
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1300
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

    .line 1314
    goto :goto_0

    .restart local v1    # "disableOverlays":I
    .restart local v6    # "showBackground":I
    :cond_2
    move v9, v10

    .line 1318
    goto :goto_1

    .line 1322
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

    .line 1567
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceResizable:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1568
    const-string/jumbo v3, "force_resizable_activities"

    .line 1567
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1566
    return-void
.end method

.method private updateForceRtlOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1578
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceRtlLayout:Landroid/support/v14/preference/SwitchPreference;

    .line 1579
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1580
    const-string/jumbo v3, "debug.force_rtl"

    .line 1579
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1578
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1577
    return-void
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceHardwareUi:Landroid/support/v14/preference/SwitchPreference;

    .line 1362
    const-string/jumbo v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1361
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1360
    return-void
.end method

.method private updateHdcpValues()V
    .locals 8

    .prologue
    .line 999
    const-string/jumbo v6, "hdcp_checking"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/ListPreference;

    .line 1000
    .local v1, "hdcpChecking":Landroid/support/v7/preference/ListPreference;
    if-eqz v1, :cond_1

    .line 1001
    const-string/jumbo v6, "persist.sys.hdcp_checking"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1002
    .local v0, "currentValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1003
    .local v5, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1004
    .local v4, "summaries":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 1005
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 1006
    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1007
    move v3, v2

    .line 1011
    :cond_0
    aget-object v6, v5, v3

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1012
    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1013
    invoke-virtual {v1, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 998
    .end local v0    # "currentValue":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "summaries":[Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_1
    return-void

    .line 1005
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

    .line 1937
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    .line 1938
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "always_finish_activities"

    .line 1937
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1936
    return-void
.end method

.method private updateLogdSizeValues()V
    .locals 13

    .prologue
    const v12, 0x7f0a0006

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1665
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    if-eqz v8, :cond_8

    .line 1666
    const-string/jumbo v8, "persist.log.tag"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1667
    .local v1, "currentTag":Ljava/lang/String;
    const-string/jumbo v8, "persist.logd.size"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1668
    .local v2, "currentValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v8, "Settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1669
    const-string/jumbo v2, "32768"

    .line 1671
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-eqz v8, :cond_2

    .line 1673
    const-string/jumbo v8, "logd.logpersistd.enable"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1674
    .local v0, "currentLogpersistEnable":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1675
    const-string/jumbo v8, "true"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1676
    const-string/jumbo v8, "32768"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1674
    if-eqz v8, :cond_9

    .line 1677
    :cond_1
    invoke-direct {p0, v9, v11}, Lcom/android/settings_ex/DevelopmentSettings;->writeLogpersistOption(Ljava/lang/Object;Z)V

    .line 1678
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 1683
    .end local v0    # "currentLogpersistEnable":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 1684
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->defaultLogdSizeValue()Ljava/lang/String;

    move-result-object v2

    .line 1686
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0007

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 1687
    .local v7, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 1688
    .local v6, "titles":[Ljava/lang/String;
    const/4 v4, 0x2

    .line 1689
    .local v4, "index":I
    const-string/jumbo v8, "ro.config.low_ram"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1690
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, v12}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 1691
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 1692
    const/4 v4, 0x1

    .line 1694
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0008

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1695
    .local v5, "summaries":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, v6

    if-ge v3, v8, :cond_7

    .line 1696
    aget-object v8, v7, v3

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1697
    aget-object v8, v6, v3

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1696
    if-eqz v8, :cond_a

    .line 1698
    :cond_6
    move v4, v3

    .line 1702
    :cond_7
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    aget-object v9, v7, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1703
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    aget-object v9, v5, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1704
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 1664
    .end local v1    # "currentTag":Ljava/lang/String;
    .end local v2    # "currentValue":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v5    # "summaries":[Ljava/lang/String;
    .end local v6    # "titles":[Ljava/lang/String;
    .end local v7    # "values":[Ljava/lang/String;
    :cond_8
    return-void

    .line 1679
    .restart local v0    # "currentLogpersistEnable":Ljava/lang/String;
    .restart local v1    # "currentTag":Ljava/lang/String;
    .restart local v2    # "currentValue":Ljava/lang/String;
    :cond_9
    iget-boolean v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    if-eqz v8, :cond_2

    .line 1680
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1695
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

    .line 1751
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-nez v5, :cond_0

    .line 1752
    return-void

    .line 1754
    :cond_0
    const-string/jumbo v5, "logd.logpersistd"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1755
    .local v2, "currentValue":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1756
    const-string/jumbo v2, ""

    .line 1758
    :cond_1
    const-string/jumbo v5, "logd.logpersistd.buffer"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1759
    .local v1, "currentBuffers":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 1760
    :cond_2
    const-string/jumbo v1, "all"

    .line 1762
    :cond_3
    const/4 v4, 0x0

    .line 1763
    .local v4, "index":I
    const-string/jumbo v5, "logcatd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1764
    const/4 v4, 0x1

    .line 1765
    const-string/jumbo v5, "kernel"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1766
    const/4 v4, 0x3

    .line 1783
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

    .line 1784
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1785
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 1786
    if-eqz v4, :cond_8

    .line 1787
    iput-boolean v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistCleared:Z

    .line 1750
    :cond_5
    :goto_1
    return-void

    .line 1767
    :cond_6
    const-string/jumbo v5, "all"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1768
    const-string/jumbo v5, "radio"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1769
    const-string/jumbo v5, "security"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 1767
    if-eqz v5, :cond_4

    .line 1770
    const-string/jumbo v5, "kernel"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 1767
    if-eqz v5, :cond_4

    .line 1771
    const/4 v4, 0x2

    .line 1772
    const-string/jumbo v5, "default"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1773
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

    .line 1774
    .local v0, "contains":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v5, v0

    if-ge v3, v5, :cond_4

    .line 1775
    aget-object v5, v0, v3

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1776
    const/4 v4, 0x1

    .line 1777
    goto/16 :goto_0

    .line 1774
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1788
    .end local v0    # "contains":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_8
    iget-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistCleared:Z

    if-nez v5, :cond_5

    .line 1790
    const-string/jumbo v5, "logd.logpersistd"

    const-string/jumbo v6, "clear"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1792
    iput-boolean v9, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistCleared:Z

    goto :goto_1
.end method

.method private updateMobileDataAlwaysOnOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1641
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    .line 1642
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1643
    const-string/jumbo v3, "mobile_data_always_on"

    .line 1641
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1640
    return-void
.end method

.method private updateMockLocation()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1124
    const-string/jumbo v8, "appops"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 1126
    .local v2, "appOpsManager":Landroid/app/AppOpsManager;
    sget-object v8, Lcom/android/settings_ex/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    invoke-virtual {v2, v8}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v7

    .line 1127
    .local v7, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v7, :cond_1

    .line 1128
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

    .line 1129
    .local v5, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v8

    if-nez v8, :cond_0

    .line 1130
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 1136
    .end local v5    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .end local v6    # "packageOp$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1137
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 1139
    .local v4, "label":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1140
    iget-object v9, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    const/16 v10, 0x200

    .line 1139
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1141
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1142
    .local v1, "appLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 1143
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1149
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

    .line 1150
    iput-boolean v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1123
    .end local v4    # "label":Ljava/lang/String;
    :goto_1
    return-void

    .line 1152
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    const v9, 0x7f0e00b0

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1145
    .restart local v4    # "label":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private updateMsaaOptions()V
    .locals 3

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceMsaa:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "debug.egl.force_msaa"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1370
    return-void
.end method

.method private updateOemUnlockOptions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1220
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v0, :cond_1

    .line 1221
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isOemUnlockEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1222
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateOemUnlockSettingDescription()V

    .line 1224
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 1225
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->enableOemUnlockPreference()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setEnabled(Z)V

    .line 1226
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    const-string/jumbo v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1232
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    const-string/jumbo v1, "no_oem_unlock"

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 1219
    :cond_1
    return-void
.end method

.method private updateOemUnlockSettingDescription()V
    .locals 3

    .prologue
    .line 2574
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v1, :cond_1

    .line 2575
    const v0, 0x7f0e00ac

    .line 2576
    .local v0, "oemUnlockSummary":I
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->isBootloaderUnlocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2577
    const v0, 0x7f0e10ea

    .line 2588
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2573
    .end local v0    # "oemUnlockSummary":I
    :cond_1
    return-void

    .line 2578
    .restart local v0    # "oemUnlockSummary":I
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->isSimLockedDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2579
    const v0, 0x7f0e10ed

    goto :goto_0

    .line 2580
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->isOemUnlockAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2586
    const v0, 0x7f0e10ec

    .line 2585
    goto :goto_0
.end method

.method private updateOtaDisableAutomaticUpdateOptions()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1172
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOtaDisableAutomaticUpdate:Landroid/support/v14/preference/SwitchPreference;

    .line 1173
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1174
    const-string/jumbo v4, "ota_disable_automatic_update"

    .line 1172
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1168
    return-void

    :cond_0
    move v0, v1

    .line 1172
    goto :goto_0
.end method

.method private updateOverlayDisplayDevicesOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1978
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1979
    const-string/jumbo v4, "overlay_display_devices"

    .line 1978
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1980
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1981
    const-string/jumbo v1, ""

    .line 1984
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1985
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1986
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1987
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1988
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1989
    return-void

    .line 1985
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1992
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1993
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1977
    return-void
.end method

.method private updatePasswordSummary()V
    .locals 3

    .prologue
    .line 1019
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1020
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/PreferenceScreen;

    const v2, 0x7f0e0111

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    .line 1017
    :goto_0
    return-void

    .line 1022
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/PreferenceScreen;

    const v2, 0x7f0e0110

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1024
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1284
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPointerLocation:Landroid/support/v14/preference/SwitchPreference;

    .line 1285
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1286
    const-string/jumbo v3, "pointer_location"

    .line 1285
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1284
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1283
    return-void
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2039
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    .line 2040
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "anr_show_background"

    .line 2039
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 2038
    return-void
.end method

.method private updateShowHwLayersUpdatesOptions()V
    .locals 3

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/support/v14/preference/SwitchPreference;

    .line 1443
    const-string/jumbo v1, "debug.hwui.show_layers_updates"

    const/4 v2, 0x0

    .line 1442
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1441
    return-void
.end method

.method private updateShowHwScreenUpdatesOptions()V
    .locals 3

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    .line 1432
    const-string/jumbo v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1431
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1430
    return-void
.end method

.method private updateShowNonRectClipOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1406
    const-string/jumbo v3, "debug.hwui.show_non_rect_clip"

    .line 1405
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1407
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1408
    const-string/jumbo v1, "hide"

    .line 1411
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1412
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1413
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1414
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1415
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1416
    return-void

    .line 1412
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1419
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1420
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1404
    return-void
.end method

.method private updateShowTouchesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1295
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowTouches:Landroid/support/v14/preference/SwitchPreference;

    .line 1296
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1297
    const-string/jumbo v3, "show_touches"

    .line 1296
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1295
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1294
    return-void
.end method

.method private updateSimulateColorSpace()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 1489
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1491
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v6, "accessibility_display_daltonizer_enabled"

    .line 1490
    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    .line 1492
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1494
    const-string/jumbo v6, "accessibility_display_daltonizer"

    .line 1493
    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1496
    .local v3, "mode":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1497
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 1498
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 1500
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    new-array v4, v4, [Ljava/lang/Object;

    .line 1501
    const v7, 0x7f0e012c

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 1500
    const v5, 0x7f0e012e

    invoke-virtual {p0, v5, v4}, Lcom/android/settings_ex/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1488
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :goto_1
    return-void

    .end local v1    # "enabled":Z
    :cond_0
    move v1, v5

    .line 1490
    goto :goto_0

    .line 1503
    .restart local v1    # "enabled":Z
    .restart local v2    # "index":I
    .restart local v3    # "mode":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v5, "%s"

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1506
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    .line 1507
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1506
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateStrictModeVisualOptions()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1275
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mStrictMode:Landroid/support/v14/preference/SwitchPreference;

    invoke-static {}, Lcom/android/settings_ex/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1274
    return-void

    .line 1275
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTrackFrameTimeOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1380
    const-string/jumbo v3, "debug.hwui.profile"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1381
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1382
    const-string/jumbo v1, ""

    .line 1385
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1386
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1387
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1388
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1389
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1390
    return-void

    .line 1386
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1393
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1394
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1379
    return-void
.end method

.method private updateUSBAudioOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1556
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUSBAudio:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1557
    const-string/jumbo v3, "usb_audio_automatic_routing_disabled"

    .line 1556
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1555
    return-void
.end method

.method private updateUsbConfigurationValues()V
    .locals 8

    .prologue
    .line 1876
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    if-eqz v5, :cond_1

    .line 1877
    const-string/jumbo v5, "usb"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 1879
    .local v2, "manager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1880
    .local v4, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1881
    .local v3, "titles":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1882
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 1885
    aget-object v5, v4, v0

    invoke-virtual {v2, v5}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mIsUnlocked:Z

    if-eqz v5, :cond_2

    .line 1886
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

    .line 1888
    move v1, v0

    .line 1892
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1893
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1894
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 1875
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "manager":Landroid/hardware/usb/UsbManager;
    .end local v3    # "titles":[Ljava/lang/String;
    .end local v4    # "values":[Ljava/lang/String;
    :cond_1
    return-void

    .line 1882
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

    .line 875
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerboseMultiBroadcastSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 876
    const-string/jumbo v3, "op_enable_wifi_multi_broadcast"

    .line 875
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 874
    return-void

    .line 875
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateVerifyAppsOverUsbOptions()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1157
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1158
    const-string/jumbo v4, "verifier_verify_adb_installs"

    .line 1157
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1159
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->enableVerifierSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 1156
    return-void

    :cond_0
    move v0, v1

    .line 1157
    goto :goto_0
.end method

.method private updateWebViewMultiprocessOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 977
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewMultiprocess:Landroid/support/v14/preference/SwitchPreference;

    .line 978
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 979
    const-string/jumbo v3, "webview_multiprocess"

    .line 978
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 977
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 976
    return-void
.end method

.method private updateWebViewProviderOptions()V
    .locals 9

    .prologue
    .line 945
    :try_start_0
    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v7}, Landroid/webkit/IWebViewUpdateService;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v4

    .line 946
    .local v4, "providers":[Landroid/webkit/WebViewProviderInfo;
    if-nez v4, :cond_0

    .line 947
    const-string/jumbo v7, "DevelopmentSettings"

    const-string/jumbo v8, "No WebView providers available"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    return-void

    .line 950
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 951
    .local v3, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 952
    .local v6, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    array-length v7, v4

    if-ge v2, v7, :cond_2

    .line 953
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    aget-object v8, v4, v2

    iget-object v8, v8, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/settings_ex/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 954
    aget-object v7, v4, v2

    iget-object v7, v7, Landroid/webkit/WebViewProviderInfo;->description:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    aget-object v7, v4, v2

    iget-object v7, v7, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 958
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewProvider:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 959
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewProvider:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 961
    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v7}, Landroid/webkit/IWebViewUpdateService;->getCurrentWebViewPackageName()Ljava/lang/String;

    move-result-object v5

    .line 962
    .local v5, "value":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 963
    const-string/jumbo v5, ""

    .line 966
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_5

    .line 967
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 968
    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewProvider:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v7, v1}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    return-void

    .line 966
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 972
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "providers":[Landroid/webkit/WebViewProviderInfo;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 943
    :cond_5
    return-void
.end method

.method private updateWifiAggressiveHandoverOptions()V
    .locals 2

    .prologue
    .line 1613
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAggressiveHandover()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1614
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1612
    return-void

    .line 1613
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method private updateWifiAllowScansWithTrafficOptions()V
    .locals 2

    .prologue
    .line 1622
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAllowScansWithTraffic()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1623
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1621
    return-void

    .line 1622
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

    .line 1592
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiDisplayCertification:Landroid/support/v14/preference/SwitchPreference;

    .line 1593
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1594
    const-string/jumbo v3, "wifi_display_certification_on"

    .line 1592
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1591
    return-void
.end method

.method private updateWifiVerboseLoggingOptions()V
    .locals 2

    .prologue
    .line 1604
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1605
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiVerboseLogging:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1603
    return-void

    .line 1604
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method private updateWirelessAdbDebuging()V
    .locals 3

    .prologue
    .line 885
    const-string/jumbo v2, "service.adb.tcp.port"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 886
    .local v0, "enableWirelessAdbDebuging":Ljava/lang/String;
    const-string/jumbo v2, "5555"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 887
    .local v1, "enabled":Z
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWirelessAdbDebuggingSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 884
    return-void
.end method

.method private usingDevelopmentColorSpace()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1516
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1518
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v6, "accessibility_display_daltonizer_enabled"

    .line 1517
    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    .line 1519
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1521
    const-string/jumbo v6, "accessibility_display_daltonizer"

    .line 1522
    const/4 v7, -0x1

    .line 1520
    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1523
    .local v3, "mode":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 1524
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 1526
    return v4

    .end local v1    # "enabled":Z
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :cond_0
    move v1, v5

    .line 1517
    goto :goto_0

    .line 1529
    .restart local v1    # "enabled":Z
    :cond_1
    return v5
.end method

.method private writeAdvancedRebootOptions()V
    .locals 3

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 848
    const-string/jumbo v2, "advanced_reboot"

    .line 849
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdvancedReboot:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 847
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 846
    return-void

    .line 849
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
    .line 1970
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 1971
    .local v1, "scale":F
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2, p1, v1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 1972
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1968
    .end local v1    # "scale":F
    :goto_1
    return-void

    .line 1970
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "scale":F
    goto :goto_0

    .line 1973
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
    .line 2025
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2026
    .local v1, "limit":I
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 2027
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2023
    .end local v1    # "limit":I
    :goto_1
    return-void

    .line 2025
    :cond_0
    const/4 v1, -0x1

    .restart local v1    # "limit":I
    goto :goto_0

    .line 2028
    .end local v1    # "limit":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeAptxHdSupportSwitch()V
    .locals 4

    .prologue
    .line 904
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAptxHdSupportSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 905
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

    .line 903
    return-void

    .line 905
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeBluetoothDisableAbsVolumeOptions()V
    .locals 2

    .prologue
    .line 1636
    const-string/jumbo v1, "persist.bluetooth.disableabsvol"

    .line 1637
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBluetoothDisableAbsVolume:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 1636
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    return-void

    .line 1637
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeBtHciSnoopLogOptions()V
    .locals 4

    .prologue
    .line 1030
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1031
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->configHciSnoopLog(Z)Z

    .line 1032
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1033
    const-string/jumbo v3, "bluetooth_hci_log"

    .line 1034
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1032
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1029
    return-void

    .line 1034
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeColorTemperature()V
    .locals 3

    .prologue
    .line 1549
    const-string/jumbo v1, "persist.sys.debug.color_temp"

    .line 1550
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    .line 1549
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1552
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e1006

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1548
    return-void

    .line 1550
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method private writeCpuUsageOptions()V
    .locals 5

    .prologue
    .line 1916
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowCpuUsage:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 1917
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1918
    const-string/jumbo v4, "show_processes"

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1917
    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1919
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1920
    const-string/jumbo v3, "com.android.systemui"

    const-string/jumbo v4, "com.android.systemui.LoadAverageService"

    .line 1919
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1921
    .local v0, "service":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 1922
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1915
    :goto_1
    return-void

    .line 1918
    .end local v0    # "service":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1924
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
    .line 1471
    const-string/jumbo v1, "debug.hwui.overdraw"

    .line 1472
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 1471
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1474
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 1470
    return-void

    .line 1472
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeDebugLayoutOptions()V
    .locals 2

    .prologue
    .line 1483
    const-string/jumbo v1, "debug.layout"

    .line 1484
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugLayout:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 1483
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1482
    return-void

    .line 1484
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeDebuggerOptions()V
    .locals 5

    .prologue
    .line 1050
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1051
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    const/4 v4, 0x1

    .line 1050
    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    :goto_0
    return-void

    .line 1052
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private writeDisableDozeOptions()V
    .locals 3

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 869
    const-string/jumbo v2, "doze_mode_enabaled"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableDozeSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 868
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 867
    return-void

    .line 869
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeDisableOverlaysOption()V
    .locals 7

    .prologue
    .line 1345
    :try_start_0
    const-string/jumbo v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1346
    .local v3, "flinger":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 1347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1348
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1349
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableOverlays:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 1350
    .local v1, "disableOverlays":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1351
    const/16 v4, 0x3f0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1354
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1343
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v3    # "flinger":Landroid/os/IBinder;
    :cond_0
    :goto_1
    return-void

    .line 1349
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v3    # "flinger":Landroid/os/IBinder;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "disableOverlays":I
    goto :goto_0

    .line 1356
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
    .line 1572
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1573
    const-string/jumbo v2, "force_resizable_activities"

    .line 1574
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceResizable:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1572
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1571
    return-void

    .line 1574
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeForceRtlOptions()V
    .locals 4

    .prologue
    .line 1584
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceRtlLayout:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 1585
    .local v0, "value":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1586
    const-string/jumbo v3, "debug.force_rtl"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1585
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1587
    const-string/jumbo v2, "debug.force_rtl"

    if-eqz v0, :cond_1

    const-string/jumbo v1, "1"

    :goto_1
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 1583
    return-void

    .line 1586
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1587
    :cond_1
    const-string/jumbo v1, "0"

    goto :goto_1
.end method

.method private writeHardwareUiOptions()V
    .locals 2

    .prologue
    .line 1366
    const-string/jumbo v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceHardwareUi:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1365
    return-void

    .line 1366
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeImmediatelyDestroyActivitiesOptions()V
    .locals 3

    .prologue
    .line 1930
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1931
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 1930
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1928
    :goto_0
    return-void

    .line 1932
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private writeLogdSizeOption(Ljava/lang/Object;)V
    .locals 9
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1709
    if-eqz p1, :cond_8

    .line 1710
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "32768"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1711
    :goto_0
    const-string/jumbo v6, "persist.log.tag"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1712
    .local v0, "currentTag":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1713
    const-string/jumbo v0, ""

    .line 1717
    :cond_0
    const-string/jumbo v6, ",+Settings"

    const-string/jumbo v7, ""

    .line 1716
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1718
    const-string/jumbo v7, "^Settings,*"

    const-string/jumbo v8, ""

    .line 1716
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1719
    const-string/jumbo v7, ",+"

    const-string/jumbo v8, ","

    .line 1716
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1720
    const-string/jumbo v7, ",+$"

    const-string/jumbo v8, ""

    .line 1716
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1721
    .local v3, "newTag":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 1722
    const-string/jumbo p1, "65536"

    .line 1724
    const-string/jumbo v6, "persist.log.tag.snet_event_log"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1725
    .local v5, "snetValue":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 1726
    :cond_1
    const-string/jumbo v6, "log.tag.snet_event_log"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1727
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 1728
    :cond_2
    const-string/jumbo v6, "persist.log.tag.snet_event_log"

    const-string/jumbo v7, "I"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    .line 1733
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1736
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

    .line 1738
    .end local v5    # "snetValue":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1739
    const-string/jumbo v6, "persist.log.tag"

    invoke-static {v6, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    :cond_6
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->defaultLogdSizeValue()Ljava/lang/String;

    move-result-object v1

    .line 1742
    .local v1, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    .line 1743
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1744
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

    .line 1745
    const-string/jumbo v6, "ctl.start"

    const-string/jumbo v7, "logd-reinit"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1747
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateLogdSizeValues()V

    .line 1708
    return-void

    .line 1709
    .end local v0    # "currentTag":Ljava/lang/String;
    .end local v1    # "defaultValue":Ljava/lang/String;
    .end local v3    # "newTag":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x0

    .local v2, "disable":Z
    goto/16 :goto_0

    .line 1743
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

    .line 1821
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-nez v5, :cond_0

    .line 1822
    return-void

    .line 1824
    :cond_0
    const-string/jumbo v5, "persist.log.tag"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1825
    .local v1, "currentTag":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string/jumbo v5, "Settings"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1826
    const/4 p1, 0x0

    .line 1827
    const/4 p2, 0x1

    .line 1830
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

    .line 1831
    :cond_2
    if-eqz p2, :cond_4

    .line 1832
    iput-boolean v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistCleared:Z

    .line 1850
    :cond_3
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->setLogpersistOff(Z)V

    .line 1851
    return-void

    .line 1833
    :cond_4
    iget-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistCleared:Z

    if-nez v5, :cond_3

    .line 1835
    const-string/jumbo v5, "logd.logpersistd"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1836
    .local v2, "currentValue":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1837
    const-string/jumbo v5, "logcatd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1836
    if-eqz v5, :cond_3

    .line 1838
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 1839
    :cond_5
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1840
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1841
    const v7, 0x7f0e00c0

    .line 1840
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1839
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1842
    const v6, 0x7f0e00bf

    .line 1839
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1843
    const v6, 0x1040013

    .line 1839
    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1844
    const v6, 0x1040009

    .line 1839
    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    .line 1846
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    invoke-virtual {v5, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1847
    return-void

    .line 1854
    .end local v2    # "currentValue":Ljava/lang/String;
    :cond_6
    const-string/jumbo v5, "logd.logpersistd.buffer"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1855
    .local v0, "currentBuffer":Ljava/lang/String;
    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1858
    :cond_7
    :goto_0
    const-string/jumbo v5, "persist.logd.logpersistd.buffer"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    const-string/jumbo v5, "persist.logd.logpersistd"

    const-string/jumbo v6, "logcatd"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1861
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/4 v5, 0x3

    if-ge v4, v5, :cond_8

    .line 1862
    const-string/jumbo v5, "logd.logpersistd"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1863
    .restart local v2    # "currentValue":Ljava/lang/String;
    if-eqz v2, :cond_a

    .line 1864
    const-string/jumbo v5, "logcatd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1863
    if-eqz v5, :cond_a

    .line 1872
    .end local v2    # "currentValue":Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateLogpersistValues()V

    .line 1820
    return-void

    .line 1856
    .end local v4    # "i":I
    :cond_9
    invoke-direct {p0, v7}, Lcom/android/settings_ex/DevelopmentSettings;->setLogpersistOff(Z)V

    goto :goto_0

    .line 1868
    .restart local v2    # "currentValue":Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_a
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1861
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1869
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/InterruptedException;
    goto :goto_2
.end method

.method private writeMobileDataAlwaysOnOptions()V
    .locals 3

    .prologue
    .line 1647
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1648
    const-string/jumbo v2, "mobile_data_always_on"

    .line 1649
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1647
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1646
    return-void

    .line 1649
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeMockLocation()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 1057
    const-string/jumbo v7, "appops"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 1060
    .local v1, "appOpsManager":Landroid/app/AppOpsManager;
    sget-object v7, Lcom/android/settings_ex/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    invoke-virtual {v1, v7}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v6

    .line 1061
    .local v6, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v6, :cond_1

    .line 1063
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

    .line 1064
    .local v4, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v7

    if-eq v7, v11, :cond_0

    .line 1065
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1067
    .local v3, "oldMockLocationApp":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1068
    const/16 v8, 0x200

    .line 1067
    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1069
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v8, 0x3a

    .line 1070
    const/4 v9, 0x2

    .line 1069
    invoke-virtual {v1, v8, v7, v3, v9}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1071
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 1079
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "oldMockLocationApp":Ljava/lang/String;
    .end local v4    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .end local v5    # "packageOp$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1081
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1082
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    const/16 v9, 0x200

    .line 1081
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1083
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1084
    iget-object v8, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 1083
    const/16 v9, 0x3a

    .line 1084
    const/4 v10, 0x0

    .line 1083
    invoke-virtual {v1, v9, v7, v8, v10}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1056
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_1
    return-void

    .line 1085
    :catch_1
    move-exception v2

    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method private writeMsaaOptions()V
    .locals 2

    .prologue
    .line 1375
    const-string/jumbo v1, "debug.egl.force_msaa"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceMsaa:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1374
    return-void

    .line 1375
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeOtaDisableAutomaticUpdateOptions()V
    .locals 3

    .prologue
    .line 1181
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1182
    const-string/jumbo v2, "ota_disable_automatic_update"

    .line 1183
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOtaDisableAutomaticUpdate:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1181
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1177
    return-void

    .line 1183
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1997
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1998
    const-string/jumbo v1, "overlay_display_devices"

    check-cast p1, Ljava/lang/String;

    .line 1997
    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1999
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 1996
    return-void
.end method

.method private writePointerLocationOptions()V
    .locals 3

    .prologue
    .line 1279
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1280
    const-string/jumbo v2, "pointer_location"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPointerLocation:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1279
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1278
    return-void

    .line 1280
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowAllANRsOptions()V
    .locals 3

    .prologue
    .line 2033
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2034
    const-string/jumbo v2, "anr_show_background"

    .line 2035
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2033
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2032
    return-void

    .line 2035
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwLayersUpdatesOptions()V
    .locals 2

    .prologue
    .line 1447
    const-string/jumbo v1, "debug.hwui.show_layers_updates"

    .line 1448
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 1447
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1446
    return-void

    .line 1448
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwScreenUpdatesOptions()V
    .locals 2

    .prologue
    .line 1436
    const-string/jumbo v1, "debug.hwui.show_dirty_regions"

    .line 1437
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 1436
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1435
    return-void

    .line 1437
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowNonRectClipOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1424
    const-string/jumbo v1, "debug.hwui.show_non_rect_clip"

    .line 1425
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 1424
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1427
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 1423
    return-void

    .line 1425
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    .prologue
    .line 1290
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1291
    const-string/jumbo v2, "show_touches"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowTouches:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1290
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1289
    return-void

    .line 1291
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowUpdatesOption()V
    .locals 7

    .prologue
    .line 1328
    :try_start_0
    const-string/jumbo v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1329
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 1330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1331
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1332
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 1333
    .local v3, "showUpdates":I
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1334
    const/16 v4, 0x3ea

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1337
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1326
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    .end local v3    # "showUpdates":I
    :cond_0
    :goto_1
    return-void

    .line 1332
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "flinger":Landroid/os/IBinder;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "showUpdates":I
    goto :goto_0

    .line 1339
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

    .line 1533
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1534
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1535
    .local v1, "newMode":I
    if-gez v1, :cond_0

    .line 1536
    const-string/jumbo v2, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1532
    :goto_0
    return-void

    .line 1538
    :cond_0
    const-string/jumbo v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1539
    const-string/jumbo v2, "accessibility_display_daltonizer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private writeStrictModeVisualOptions()V
    .locals 3

    .prologue
    .line 1268
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mStrictMode:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1269
    const-string/jumbo v1, "1"

    .line 1268
    :goto_0
    invoke-interface {v2, v1}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 1266
    :goto_1
    return-void

    .line 1269
    :cond_0
    const-string/jumbo v1, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1270
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeTrackFrameTimeOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1398
    const-string/jumbo v1, "debug.hwui.profile"

    .line 1399
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 1398
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1401
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 1397
    return-void

    .line 1399
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeUSBAudioOptions()V
    .locals 3

    .prologue
    .line 1561
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1562
    const-string/jumbo v2, "usb_audio_automatic_routing_disabled"

    .line 1563
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUSBAudio:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1561
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1560
    return-void

    .line 1563
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeUsbConfigurationOption(Ljava/lang/Object;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1899
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "usb"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    .line 1900
    .local v1, "manager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1901
    .local v0, "function":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 1902
    const-string/jumbo v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1903
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    .line 1898
    :goto_0
    return-void

    .line 1905
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    goto :goto_0
.end method

.method private writeVerboseMultiBroadcast()V
    .locals 3

    .prologue
    .line 880
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 881
    const-string/jumbo v2, "op_enable_wifi_multi_broadcast"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerboseMultiBroadcastSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 880
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 879
    return-void

    .line 881
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeVerifyAppsOverUsbOptions()V
    .locals 3

    .prologue
    .line 1163
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1164
    const-string/jumbo v2, "verifier_verify_adb_installs"

    .line 1165
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1163
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1162
    return-void

    .line 1165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWebViewMultiprocessOptions()V
    .locals 7

    .prologue
    .line 983
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewMultiprocess:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 984
    .local v2, "value":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 985
    const-string/jumbo v6, "webview_multiprocess"

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 984
    :goto_0
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 989
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v4}, Landroid/webkit/IWebViewUpdateService;->getCurrentWebViewPackageName()Ljava/lang/String;

    move-result-object v3

    .line 990
    .local v3, "wv_package":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 991
    const/4 v5, -0x1

    .line 990
    invoke-interface {v4, v3, v5}, Landroid/app/IActivityManager;->killPackageDependents(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 982
    .end local v3    # "wv_package":Ljava/lang/String;
    :goto_1
    return-void

    .line 985
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 992
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 993
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

    .line 1039
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

    .line 1040
    if-nez p1, :cond_1

    const-string/jumbo v3, ""

    .line 1039
    :goto_0
    invoke-interface {v4, v3}, Landroid/webkit/IWebViewUpdateService;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1041
    .local v1, "updatedProvider":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWebViewProviderOptions()V

    .line 1042
    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_0
    return v2

    .line 1040
    .end local v1    # "updatedProvider":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 1043
    :catch_0
    move-exception v0

    .line 1045
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method private writeWifiAggressiveHandoverOptions()V
    .locals 2

    .prologue
    .line 1618
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableAggressiveHandover(I)V

    .line 1617
    return-void

    .line 1618
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiAllowScansWithTrafficOptions()V
    .locals 2

    .prologue
    .line 1627
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setAllowScansWithTraffic(I)V

    .line 1626
    return-void

    .line 1627
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiDisplayCertificationOptions()V
    .locals 3

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1599
    const-string/jumbo v2, "wifi_display_certification_on"

    .line 1600
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiDisplayCertification:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1598
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1597
    return-void

    .line 1600
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiVerboseLoggingOptions()V
    .locals 2

    .prologue
    .line 1609
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiVerboseLogging:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableVerboseLogging(I)V

    .line 1608
    return-void

    .line 1609
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWirelessAdbDebuging()V
    .locals 2

    .prologue
    .line 891
    const-string/jumbo v1, "service.adb.tcp.port"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWirelessAdbDebuggingSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    const-string/jumbo v0, "5555"

    .line 891
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    return-void

    .line 893
    :cond_0
    const-string/jumbo v0, "-1"

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 374
    const/16 v0, 0x27

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 638
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 640
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 642
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 643
    iget-boolean v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUnavailable:Z

    if-eqz v1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 645
    return-void

    .line 648
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 637
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

    .line 2102
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 2103
    if-ne p2, v1, :cond_0

    .line 2104
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 2105
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeDebuggerOptions()V

    .line 2106
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebuggerOptions()V

    .line 2101
    :cond_0
    :goto_0
    return-void

    .line 2108
    :cond_1
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    .line 2109
    if-ne p2, v1, :cond_0

    .line 2110
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 2111
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeMockLocation()V

    .line 2112
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateMockLocation()V

    goto :goto_0

    .line 2114
    :cond_2
    if-nez p1, :cond_4

    .line 2115
    if-ne p2, v1, :cond_0

    .line 2116
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2117
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto :goto_0

    .line 2119
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/settings_ex/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    .line 2123
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

    .line 2396
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_2

    .line 2397
    if-ne p2, v4, :cond_1

    .line 2398
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    .line 2399
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2400
    const-string/jumbo v4, "adb_enabled"

    .line 2399
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2401
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 2402
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 2403
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateBugreportOptions()V

    .line 2395
    :cond_0
    :goto_0
    return-void

    .line 2406
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 2408
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_3

    .line 2409
    if-ne p2, v4, :cond_0

    .line 2411
    :try_start_0
    const-string/jumbo v3, "usb"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2412
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    .line 2413
    .local v2, "service":Landroid/hardware/usb/IUsbManager;
    invoke-interface {v2}, Landroid/hardware/usb/IUsbManager;->clearUsbDebuggingKeys()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2414
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "service":Landroid/hardware/usb/IUsbManager;
    :catch_0
    move-exception v1

    .line 2415
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "DevelopmentSettings"

    const-string/jumbo v4, "Unable to clear adb keys"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2418
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_5

    .line 2419
    if-ne p2, v4, :cond_4

    .line 2420
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    .line 2421
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2422
    const-string/jumbo v4, "development_settings_enabled"

    .line 2421
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2423
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    .line 2424
    iget-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0

    .line 2427
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 2429
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_0

    .line 2430
    if-ne p2, v4, :cond_6

    .line 2431
    invoke-direct {p0, v5}, Lcom/android/settings_ex/DevelopmentSettings;->setLogpersistOff(Z)V

    goto :goto_0

    .line 2433
    :cond_6
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateLogpersistValues()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 379
    invoke-super/range {p0 .. p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 381
    const-string/jumbo v12, "window"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 383
    const-string/jumbo v12, "backup"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    .line 382
    invoke-static {v12}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 385
    const-string/jumbo v12, "webviewupdate"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v12

    .line 384
    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

    .line 386
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    .line 387
    const-string/jumbo v13, "persistent_data_block"

    .line 386
    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOemUnlockManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 388
    const-string/jumbo v12, "phone"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 390
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string/jumbo v13, "device_policy"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/admin/DevicePolicyManager;

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 391
    const-string/jumbo v12, "user"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserManager;

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    .line 393
    const-string/jumbo v12, "wifi"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 395
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->setIfOnlyAvailableForAdmins(Z)V

    .line 396
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->isUiRestricted()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings_ex/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 404
    const v12, 0x7f080024

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 407
    const-string/jumbo v12, "debug_debugging_category"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 406
    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    .line 408
    .local v1, "debugDebuggingCategory":Landroid/support/v7/preference/PreferenceGroup;
    const-string/jumbo v12, "enable_adb"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    .line 409
    const-string/jumbo v12, "clear_adb_keys"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    .line 410
    const-string/jumbo v12, "ro.adb.secure"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_0

    .line 411
    if-eqz v1, :cond_0

    .line 412
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v12}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 415
    :cond_0
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/settings_ex/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    const-string/jumbo v12, "enable_terminal"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    .line 417
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string/jumbo v13, "com.android.terminal"

    invoke-static {v12, v13}, Lcom/android/settings_ex/DevelopmentSettings;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 418
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v12}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 419
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    .line 423
    :cond_1
    const-string/jumbo v12, "getlogs"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogsPreference:Landroid/support/v7/preference/Preference;

    .line 424
    const-string/jumbo v12, "disable_doze"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableDozeSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 427
    const-string/jumbo v12, "op_wifi_verbose_multi_broadcast"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerboseMultiBroadcastSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 428
    const-string/jumbo v12, "op_wireless_adb_debugging"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWirelessAdbDebuggingSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 430
    const-string/jumbo v12, "bugreport"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreport:Landroid/support/v7/preference/Preference;

    .line 431
    const-string/jumbo v12, "bugreport_in_power"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

    .line 432
    const-string/jumbo v12, "keep_screen_on"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    check-cast v12, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 433
    const-string/jumbo v12, "bt_hci_snoop_log"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

    .line 434
    const-string/jumbo v12, "oem_unlock_enable"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    check-cast v12, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 435
    invoke-static {}, Lcom/android/settings_ex/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v12

    if-nez v12, :cond_2

    .line 436
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->removePreference(Landroid/support/v7/preference/Preference;)V

    .line 437
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 440
    :cond_2
    const-string/jumbo v12, "debug_view_attributes"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugViewAttributes:Landroid/support/v14/preference/SwitchPreference;

    .line 441
    const-string/jumbo v12, "force_allow_on_external"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceAllowOnExternal:Landroid/support/v14/preference/SwitchPreference;

    .line 442
    const-string/jumbo v12, "local_backup_password"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/PreferenceScreen;

    .line 443
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    const-string/jumbo v12, "advanced_reboot"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdvancedReboot:Landroid/support/v14/preference/SwitchPreference;

    .line 447
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v12}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v12

    if-nez v12, :cond_3

    .line 448
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/support/v7/preference/Preference;)V

    .line 449
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/support/v7/preference/Preference;)V

    .line 450
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/support/v7/preference/Preference;)V

    .line 451
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/PreferenceScreen;

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/support/v7/preference/Preference;)V

    .line 452
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdvancedReboot:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/support/v7/preference/Preference;)V

    .line 455
    :cond_3
    const-string/jumbo v12, "debug_app"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugAppPref:Landroid/support/v7/preference/Preference;

    .line 456
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    const-string/jumbo v12, "wait_for_debugger"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    .line 459
    const-string/jumbo v12, "mock_location_app"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    .line 460
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    const-string/jumbo v12, "verify_apps_over_usb"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    .line 463
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->showVerifierSetting()Z

    move-result v12

    if-nez v12, :cond_4

    .line 464
    if-eqz v1, :cond_7

    .line 465
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v12}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 470
    :cond_4
    :goto_0
    const-string/jumbo v12, "strict_mode"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mStrictMode:Landroid/support/v14/preference/SwitchPreference;

    .line 471
    const-string/jumbo v12, "pointer_location"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPointerLocation:Landroid/support/v14/preference/SwitchPreference;

    .line 472
    const-string/jumbo v12, "show_touches"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowTouches:Landroid/support/v14/preference/SwitchPreference;

    .line 473
    const-string/jumbo v12, "show_screen_updates"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    .line 474
    const-string/jumbo v12, "disable_overlays"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableOverlays:Landroid/support/v14/preference/SwitchPreference;

    .line 477
    const-string/jumbo v12, "force_hw_ui"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceHardwareUi:Landroid/support/v14/preference/SwitchPreference;

    .line 478
    const-string/jumbo v12, "force_msaa"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceMsaa:Landroid/support/v14/preference/SwitchPreference;

    .line 479
    const-string/jumbo v12, "track_frame_time"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    .line 480
    const-string/jumbo v12, "show_non_rect_clip"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    .line 481
    const-string/jumbo v12, "show_hw_screen_udpates"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    .line 482
    const-string/jumbo v12, "show_hw_layers_udpates"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/support/v14/preference/SwitchPreference;

    .line 483
    const-string/jumbo v12, "debug_layout"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugLayout:Landroid/support/v14/preference/SwitchPreference;

    .line 484
    const-string/jumbo v12, "force_rtl_layout_all_locales"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceRtlLayout:Landroid/support/v14/preference/SwitchPreference;

    .line 485
    const-string/jumbo v12, "debug_hw_overdraw"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    .line 486
    const-string/jumbo v12, "wifi_display_certification"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiDisplayCertification:Landroid/support/v14/preference/SwitchPreference;

    .line 487
    const-string/jumbo v12, "wifi_verbose_logging"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiVerboseLogging:Landroid/support/v14/preference/SwitchPreference;

    .line 488
    const-string/jumbo v12, "wifi_aggressive_handover"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/support/v14/preference/SwitchPreference;

    .line 489
    const-string/jumbo v12, "wifi_allow_scan_with_traffic"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/support/v14/preference/SwitchPreference;

    .line 490
    const-string/jumbo v12, "mobile_data_always_on"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    .line 491
    const-string/jumbo v12, "select_logd_size"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    .line 492
    const-string/jumbo v12, "1"

    const-string/jumbo v13, "ro.debuggable"

    const-string/jumbo v14, "0"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 493
    const-string/jumbo v12, "select_logpersist"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    .line 504
    :goto_1
    const-string/jumbo v12, "select_usb_configuration"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    .line 506
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a001e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 507
    .local v4, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a001f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 508
    .local v5, "entriesvalue":[Ljava/lang/CharSequence;
    const/4 v12, 0x5

    new-array v10, v12, [Ljava/lang/String;

    .line 509
    .local v10, "usbentries":[Ljava/lang/CharSequence;
    const/4 v12, 0x5

    new-array v11, v12, [Ljava/lang/String;

    .line 510
    .local v11, "usbentriesvalue":[Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v12, v4

    if-ge v7, v12, :cond_b

    .line 511
    const/4 v12, 0x3

    if-ge v7, v12, :cond_a

    .line 512
    aget-object v12, v4, v7

    aput-object v12, v10, v7

    .line 513
    aget-object v12, v5, v7

    aput-object v12, v11, v7

    .line 510
    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 399
    .end local v1    # "debugDebuggingCategory":Landroid/support/v7/preference/PreferenceGroup;
    .end local v4    # "entries":[Ljava/lang/CharSequence;
    .end local v5    # "entriesvalue":[Ljava/lang/CharSequence;
    .end local v7    # "i":I
    .end local v10    # "usbentries":[Ljava/lang/CharSequence;
    .end local v11    # "usbentriesvalue":[Ljava/lang/CharSequence;
    :cond_6
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUnavailable:Z

    .line 400
    new-instance v12, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroid/support/v7/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 401
    return-void

    .line 467
    .restart local v1    # "debugDebuggingCategory":Landroid/support/v7/preference/PreferenceGroup;
    :cond_7
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 495
    :cond_8
    const-string/jumbo v12, "select_logpersist"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/ListPreference;

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    .line 496
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-eqz v12, :cond_9

    .line 497
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 498
    if-eqz v1, :cond_9

    .line 499
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, v12}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 502
    :cond_9
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    goto :goto_1

    .line 514
    .restart local v4    # "entries":[Ljava/lang/CharSequence;
    .restart local v5    # "entriesvalue":[Ljava/lang/CharSequence;
    .restart local v7    # "i":I
    .restart local v10    # "usbentries":[Ljava/lang/CharSequence;
    .restart local v11    # "usbentriesvalue":[Ljava/lang/CharSequence;
    :cond_a
    const/4 v12, 0x3

    if-le v7, v12, :cond_5

    .line 515
    add-int/lit8 v12, v7, -0x1

    aget-object v13, v4, v7

    aput-object v13, v10, v12

    .line 516
    add-int/lit8 v12, v7, -0x1

    aget-object v13, v5, v7

    aput-object v13, v11, v12

    goto :goto_3

    .line 519
    :cond_b
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v12, v10}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 520
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v12, v11}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 522
    const-string/jumbo v12, "select_webview_provider"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewProvider:Landroid/support/v7/preference/ListPreference;

    .line 523
    const-string/jumbo v12, "enable_webview_multiprocess"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewMultiprocess:Landroid/support/v14/preference/SwitchPreference;

    .line 524
    const-string/jumbo v12, "bluetooth_disable_absolute_volume"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBluetoothDisableAbsVolume:Landroid/support/v14/preference/SwitchPreference;

    .line 526
    const-string/jumbo v12, "window_animation_scale"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    .line 527
    const-string/jumbo v12, "transition_animation_scale"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    .line 528
    const-string/jumbo v12, "animator_duration_scale"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    .line 529
    const-string/jumbo v12, "overlay_display_devices"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    .line 530
    const-string/jumbo v12, "simulate_color_space"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    .line 531
    const-string/jumbo v12, "usb_audio"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUSBAudio:Landroid/support/v14/preference/SwitchPreference;

    .line 532
    const-string/jumbo v12, "force_resizable_activities"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceResizable:Landroid/support/v14/preference/SwitchPreference;

    .line 535
    const-string/jumbo v12, "immediately_destroy_activities"

    .line 534
    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v14/preference/SwitchPreference;

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    .line 536
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    const-string/jumbo v12, "app_process_limit"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    .line 542
    const-string/jumbo v12, "show_all_anrs"

    .line 541
    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v14/preference/SwitchPreference;

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    .line 543
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    const-string/jumbo v12, "hdcp_checking"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    .line 547
    .local v6, "hdcpChecking":Landroid/support/v7/preference/Preference;
    if-eqz v6, :cond_c

    .line 548
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    invoke-direct {p0, v6}, Lcom/android/settings_ex/DevelopmentSettings;->removePreferenceForProduction(Landroid/support/v7/preference/Preference;)Z

    .line 553
    :cond_c
    const-string/jumbo v12, "convert_to_file_encryption"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    .line 556
    .local v0, "convertFbePreference":Landroid/support/v7/preference/PreferenceScreen;
    :try_start_0
    const-string/jumbo v12, "mount"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .line 557
    .local v9, "service":Landroid/os/IBinder;
    invoke-static {v9}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v8

    .line 558
    .local v8, "mountService":Landroid/os/storage/IMountService;
    invoke-interface {v8}, Landroid/os/storage/IMountService;->isConvertibleToFBE()Z

    move-result v12

    if-nez v12, :cond_10

    .line 559
    const-string/jumbo v12, "convert_to_file_encryption"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->removePreference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    .end local v8    # "mountService":Landroid/os/storage/IMountService;
    .end local v9    # "service":Landroid/os/IBinder;
    :cond_d
    :goto_4
    const-string/jumbo v12, "ota_disable_automatic_update"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOtaDisableAutomaticUpdate:Landroid/support/v14/preference/SwitchPreference;

    .line 571
    const-string/jumbo v12, "ota_disable_automatic_update"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    .line 573
    const-string/jumbo v12, "color_mode"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/android/settings_ex/ColorModePreference;

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mColorModePreference:Lcom/android/settings_ex/ColorModePreference;

    .line 580
    const-string/jumbo v12, "color_mode"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    .line 581
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mColorModePreference:Lcom/android/settings_ex/ColorModePreference;

    .line 583
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWebViewProviderOptions()V

    .line 585
    const-string/jumbo v12, "color_temperature"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v14/preference/SwitchPreference;

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 586
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c0035

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 587
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/settings_ex/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/settings_ex/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    :goto_5
    const-string/jumbo v12, "aptx_hd_support"

    invoke-direct {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAptxHdSupportSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 597
    sget-object v12, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v12}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string/jumbo v13, "oem.service.adb.tcp.port.support"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/settings_ex/DevelopmentSettings;->isSupportWirelessAdbDebugging:Z

    .line 598
    sget-boolean v12, Lcom/android/settings_ex/DevelopmentSettings;->isSupportWirelessAdbDebugging:Z

    if-nez v12, :cond_e

    if-eqz v1, :cond_e

    .line 599
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWirelessAdbDebuggingSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v12}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 604
    :cond_e
    const-string/jumbo v12, "debug_networking_category"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 603
    check-cast v2, Landroid/support/v7/preference/PreferenceGroup;

    .line 605
    .local v2, "debugNetworkingCategory":Landroid/support/v7/preference/PreferenceGroup;
    sget-object v12, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v12}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string/jumbo v13, "oem.aptx.hd.support"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/settings_ex/DevelopmentSettings;->isSupportAptxHdSupport:Z

    .line 606
    if-eqz v2, :cond_f

    sget-boolean v12, Lcom/android/settings_ex/DevelopmentSettings;->isSupportAptxHdSupport:Z

    if-eqz v12, :cond_12

    .line 378
    :cond_f
    :goto_6
    return-void

    .line 560
    .end local v2    # "debugNetworkingCategory":Landroid/support/v7/preference/PreferenceGroup;
    .restart local v8    # "mountService":Landroid/os/storage/IMountService;
    .restart local v9    # "service":Landroid/os/IBinder;
    :cond_10
    :try_start_1
    const-string/jumbo v12, "file"

    const-string/jumbo v13, "ro.crypto.type"

    const-string/jumbo v14, "none"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 561
    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 562
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 563
    const v13, 0x7f0e0121

    .line 562
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 565
    .end local v8    # "mountService":Landroid/os/storage/IMountService;
    .end local v9    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v3

    .line 566
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v12, "convert_to_file_encryption"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 590
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_11
    const-string/jumbo v12, "color_temperature"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    .line 591
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    goto :goto_5

    .line 607
    .restart local v2    # "debugNetworkingCategory":Landroid/support/v7/preference/PreferenceGroup;
    :cond_12
    iget-object v12, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAptxHdSupportSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v12}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_6
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 735
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 736
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 738
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateUsbConfigurationValues()V

    .line 740
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 2457
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 2458
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onDestroy()V

    .line 2456
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 745
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onDestroyView()V

    .line 747
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 748
    return-void

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 751
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 752
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 744
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2440
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 2441
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_0

    .line 2442
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 2444
    :cond_0
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 2438
    :cond_1
    :goto_0
    return-void

    .line 2445
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_4

    .line 2446
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_3

    .line 2447
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 2449
    :cond_3
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 2450
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 2451
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 726
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPause()V

    .line 727
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mColorModePreference:Lcom/android/settings_ex/ColorModePreference;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mColorModePreference:Lcom/android/settings_ex/ColorModePreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/ColorModePreference;->stopListening()V

    .line 725
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

    .line 2316
    const-string/jumbo v1, "hdcp_checking"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2317
    const-string/jumbo v1, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateHdcpValues()V

    .line 2319
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 2320
    return v3

    .line 2321
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewProvider:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_3

    .line 2322
    if-nez p2, :cond_1

    .line 2323
    const-string/jumbo v1, "DevelopmentSettings"

    const-string/jumbo v2, "Tried to set a null WebView provider"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    return v4

    .line 2326
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeWebViewProviderOptions(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2327
    return v3

    .line 2331
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2332
    const v2, 0x7f0e011e

    .line 2331
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2333
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2335
    return v4

    .line 2336
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_4

    .line 2337
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    .line 2338
    return v3

    .line 2339
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_5

    .line 2340
    invoke-direct {p0, p2, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeLogpersistOption(Ljava/lang/Object;Z)V

    .line 2341
    return v3

    .line 2342
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_6

    .line 2343
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeUsbConfigurationOption(Ljava/lang/Object;)V

    .line 2344
    return v3

    .line 2345
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_7

    .line 2346
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v4, v1, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    .line 2347
    return v3

    .line 2348
    :cond_7
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_8

    .line 2349
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v3, v1, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    .line 2350
    return v3

    .line 2351
    :cond_8
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_9

    .line 2352
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v2, 0x2

    invoke-direct {p0, v2, v1, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    .line 2353
    return v3

    .line 2354
    :cond_9
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_a

    .line 2355
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    .line 2356
    return v3

    .line 2357
    :cond_a
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_b

    .line 2358
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeTrackFrameTimeOptions(Ljava/lang/Object;)V

    .line 2359
    return v3

    .line 2360
    :cond_b
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_c

    .line 2361
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeDebugHwOverdrawOptions(Ljava/lang/Object;)V

    .line 2362
    return v3

    .line 2363
    :cond_c
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_d

    .line 2364
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowNonRectClipOptions(Ljava/lang/Object;)V

    .line 2365
    return v3

    .line 2366
    :cond_d
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_e

    .line 2367
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 2368
    return v3

    .line 2369
    :cond_e
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_f

    .line 2370
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    .line 2371
    return v3

    .line 2373
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

    .line 2129
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2130
    return v4

    .line 2134
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "getlogs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2136
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.oem.oemlogkit.startlog"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2137
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x30000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2138
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2144
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v5, :cond_5

    .line 2145
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2146
    iput-boolean v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    .line 2147
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 2148
    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2149
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e00ca

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2148
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2150
    const v5, 0x7f0e00c9

    .line 2148
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2151
    const v5, 0x1040013

    .line 2148
    invoke-virtual {v3, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2152
    const v5, 0x1040009

    .line 2148
    invoke-virtual {v3, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 2154
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v3, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2294
    :cond_3
    :goto_1
    return v4

    .line 2156
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2157
    const-string/jumbo v5, "adb_enabled"

    .line 2156
    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2158
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 2159
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 2160
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateBugreportOptions()V

    goto :goto_1

    .line 2162
    :cond_5
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    if-ne p1, v5, :cond_7

    .line 2163
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 2164
    :cond_6
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2165
    const v5, 0x7f0e00cb

    .line 2164
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2166
    const v5, 0x104000a

    .line 2164
    invoke-virtual {v3, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2167
    const/high16 v5, 0x1040000

    .line 2164
    invoke-virtual {v3, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    goto :goto_1

    .line 2169
    :cond_7
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v5, :cond_9

    .line 2170
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2171
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v5, "com.android.terminal"

    .line 2172
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2171
    :goto_2
    invoke-virtual {v2, v5, v3, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_1

    :cond_8
    move v3, v4

    .line 2173
    goto :goto_2

    .line 2174
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_9
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v5, :cond_b

    .line 2175
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2176
    const-string/jumbo v6, "bugreport_in_power_menu"

    .line 2177
    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2175
    :goto_3
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2178
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->setBugreportStorageProviderStatus()V

    goto/16 :goto_1

    :cond_a
    move v3, v4

    .line 2177
    goto :goto_3

    .line 2179
    :cond_b
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-ne p1, v5, :cond_d

    .line 2180
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2181
    const-string/jumbo v6, "stay_on_while_plugged_in"

    .line 2182
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v3}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2183
    const/4 v3, 0x3

    .line 2180
    :goto_4
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_c
    move v3, v4

    .line 2183
    goto :goto_4

    .line 2184
    :cond_d
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v5, :cond_e

    .line 2185
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeBtHciSnoopLogOptions()V

    goto/16 :goto_1

    .line 2186
    :cond_e
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-ne p1, v5, :cond_10

    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v5}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2187
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v3}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2188
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/android/settings_ex/DevelopmentSettings;->showKeyguardConfirmation(Landroid/content/res/Resources;I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2189
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto/16 :goto_1

    .line 2192
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/android/settings_ex/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 2194
    :cond_10
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    if-ne p1, v5, :cond_11

    .line 2195
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v5, Lcom/android/settings_ex/AppPicker;

    invoke-direct {v1, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2196
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.settings_ex.extra.REQUESTIING_PERMISSION"

    .line 2197
    const-string/jumbo v5, "android.permission.ACCESS_MOCK_LOCATION"

    .line 2196
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2198
    const/16 v3, 0x3e9

    invoke-virtual {p0, v1, v3}, Lcom/android/settings_ex/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 2199
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_11
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugViewAttributes:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v5, :cond_13

    .line 2200
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2201
    const-string/jumbo v6, "debug_view_attributes"

    .line 2202
    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugViewAttributes:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 2200
    :goto_5
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_12
    move v3, v4

    .line 2202
    goto :goto_5

    .line 2203
    :cond_13
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceAllowOnExternal:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v5, :cond_15

    .line 2204
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2205
    const-string/jumbo v6, "force_allow_on_external"

    .line 2206
    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceAllowOnExternal:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 2204
    :goto_6
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_14
    move v3, v4

    .line 2206
    goto :goto_6

    .line 2207
    :cond_15
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugAppPref:Landroid/support/v7/preference/Preference;

    if-ne p1, v5, :cond_16

    .line 2208
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/android/settings_ex/AppPicker;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2209
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.android.settings_ex.extra.DEBUGGABLE"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2210
    const/16 v3, 0x3e8

    invoke-virtual {p0, v1, v3}, Lcom/android/settings_ex/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 2211
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_16
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_17

    .line 2212
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeDebuggerOptions()V

    goto/16 :goto_1

    .line 2213
    :cond_17
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_18

    .line 2214
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeVerifyAppsOverUsbOptions()V

    goto/16 :goto_1

    .line 2215
    :cond_18
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOtaDisableAutomaticUpdate:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_19

    .line 2216
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeOtaDisableAutomaticUpdateOptions()V

    goto/16 :goto_1

    .line 2217
    :cond_19
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mStrictMode:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_1a

    .line 2218
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeStrictModeVisualOptions()V

    goto/16 :goto_1

    .line 2219
    :cond_1a
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPointerLocation:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_1b

    .line 2220
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_1

    .line 2221
    :cond_1b
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowTouches:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_1c

    .line 2222
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_1

    .line 2223
    :cond_1c
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_1d

    .line 2224
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowUpdatesOption()V

    goto/16 :goto_1

    .line 2225
    :cond_1d
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableOverlays:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_1e

    .line 2226
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeDisableOverlaysOption()V

    goto/16 :goto_1

    .line 2227
    :cond_1e
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowCpuUsage:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_1f

    .line 2228
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeCpuUsageOptions()V

    goto/16 :goto_1

    .line 2229
    :cond_1f
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_20

    .line 2230
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions()V

    goto/16 :goto_1

    .line 2231
    :cond_20
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_21

    .line 2232
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowAllANRsOptions()V

    goto/16 :goto_1

    .line 2233
    :cond_21
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceHardwareUi:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_22

    .line 2234
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeHardwareUiOptions()V

    goto/16 :goto_1

    .line 2235
    :cond_22
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceMsaa:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_23

    .line 2236
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeMsaaOptions()V

    goto/16 :goto_1

    .line 2237
    :cond_23
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_24

    .line 2238
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowHwScreenUpdatesOptions()V

    goto/16 :goto_1

    .line 2239
    :cond_24
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_25

    .line 2240
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowHwLayersUpdatesOptions()V

    goto/16 :goto_1

    .line 2241
    :cond_25
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugLayout:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_26

    .line 2242
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeDebugLayoutOptions()V

    goto/16 :goto_1

    .line 2243
    :cond_26
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceRtlLayout:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_27

    .line 2244
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeForceRtlOptions()V

    goto/16 :goto_1

    .line 2245
    :cond_27
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiDisplayCertification:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_28

    .line 2246
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeWifiDisplayCertificationOptions()V

    goto/16 :goto_1

    .line 2247
    :cond_28
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiVerboseLogging:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_29

    .line 2248
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeWifiVerboseLoggingOptions()V

    goto/16 :goto_1

    .line 2249
    :cond_29
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_2a

    .line 2250
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeWifiAggressiveHandoverOptions()V

    goto/16 :goto_1

    .line 2251
    :cond_2a
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_2b

    .line 2252
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeWifiAllowScansWithTrafficOptions()V

    goto/16 :goto_1

    .line 2253
    :cond_2b
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_2c

    .line 2254
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeMobileDataAlwaysOnOptions()V

    goto/16 :goto_1

    .line 2255
    :cond_2c
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_2d

    .line 2256
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeColorTemperature()V

    goto/16 :goto_1

    .line 2257
    :cond_2d
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUSBAudio:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_2e

    .line 2258
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeUSBAudioOptions()V

    goto/16 :goto_1

    .line 2259
    :cond_2e
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceResizable:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_2f

    .line 2260
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeForceResizableOptions()V

    goto/16 :goto_1

    .line 2261
    :cond_2f
    const-string/jumbo v3, "inactive_apps"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 2262
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->startInactiveAppsFragment()V

    goto/16 :goto_1

    .line 2263
    :cond_30
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdvancedReboot:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_31

    .line 2264
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeAdvancedRebootOptions()V

    goto/16 :goto_1

    .line 2265
    :cond_31
    const-string/jumbo v3, "background_check"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 2266
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->startBackgroundCheckFragment()V

    goto/16 :goto_1

    .line 2267
    :cond_32
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBluetoothDisableAbsVolume:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_33

    .line 2268
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeBluetoothDisableAbsVolumeOptions()V

    goto/16 :goto_1

    .line 2269
    :cond_33
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWebViewMultiprocess:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_34

    .line 2270
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeWebViewMultiprocessOptions()V

    goto/16 :goto_1

    .line 2271
    :cond_34
    const-string/jumbo v3, "reset_shortcut_manager_throttling"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 2272
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->resetShortcutManagerThrottling()V

    goto/16 :goto_1

    .line 2275
    :cond_35
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableDozeSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_36

    .line 2276
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeDisableDozeOptions()V

    goto/16 :goto_1

    .line 2277
    :cond_36
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerboseMultiBroadcastSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_37

    .line 2278
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "zhuyang--mVerboseMultiBroadcastSwitch"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2279
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeVerboseMultiBroadcast()V

    goto/16 :goto_1

    .line 2280
    :cond_37
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWirelessAdbDebuggingSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_38

    .line 2281
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "zhuyang--mWirelessAdbDebuggingSwitch"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2282
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeWirelessAdbDebuging()V

    goto/16 :goto_1

    .line 2285
    :cond_38
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAptxHdSupportSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_39

    .line 2286
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeAptxHdSupportSwitch()V

    goto/16 :goto_1

    .line 2291
    :cond_39
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v3

    return v3

    .line 2139
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

    .line 675
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onResume()V

    .line 677
    iget-boolean v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUnavailable:Z

    if-eqz v4, :cond_1

    .line 679
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v2

    if-nez v2, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0e009e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 682
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 683
    return-void

    .line 691
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 690
    invoke-static {v4}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 692
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v4, v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 693
    if-nez v0, :cond_5

    .line 694
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 699
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 701
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "development_settings_enabled"

    .line 700
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    .line 702
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    iget-boolean v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 703
    iget-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 705
    iget-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    if-eqz v2, :cond_6

    .line 716
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 718
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mColorModePreference:Lcom/android/settings_ex/ColorModePreference;

    if-eqz v2, :cond_4

    .line 719
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mColorModePreference:Lcom/android/settings_ex/ColorModePreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/ColorModePreference;->startListening()V

    .line 720
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mColorModePreference:Lcom/android/settings_ex/ColorModePreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/ColorModePreference;->updateCurrentAndSupported()V

    .line 674
    :cond_4
    return-void

    .line 696
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 710
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 711
    const-string/jumbo v4, "development_settings_enabled"

    .line 710
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 712
    iput-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    .line 713
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    iget-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 714
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

    .line 2075
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 2076
    return-void

    .line 2078
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    if-eq p2, v0, :cond_2

    .line 2079
    if-eqz p2, :cond_3

    .line 2080
    iput-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    .line 2081
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 2082
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2083
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2084
    const v2, 0x7f0e00cd

    .line 2083
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2082
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2085
    const v1, 0x7f0e00cc

    .line 2082
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2086
    const v1, 0x1040013

    .line 2082
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2087
    const v1, 0x1040009

    .line 2082
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 2089
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2074
    :cond_2
    :goto_0
    return-void

    .line 2091
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->resetDangerousOptions()V

    .line 2092
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2093
    const-string/jumbo v1, "development_settings_enabled"

    .line 2092
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2094
    iput-boolean p2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    .line 2095
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0
.end method

.method pokeSystemProperties()V
    .locals 2

    .prologue
    .line 2462
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDontPokeProperties:Z

    if-nez v0, :cond_0

    .line 2464
    new-instance v0, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2461
    :cond_0
    return-void
.end method

.method updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V
    .locals 1
    .param p1, "switchPreference"    # Landroid/support/v14/preference/SwitchPreference;
    .param p2, "value"    # Z

    .prologue
    .line 756
    invoke-virtual {p1, p2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 757
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 755
    return-void
.end method
