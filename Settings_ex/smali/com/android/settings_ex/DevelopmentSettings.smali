.class public Lcom/android/settings_ex/DevelopmentSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/search/Indexable;
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;
    }
.end annotation


# static fields
.field private static final ALLOW_MOCK_LOCATION:Ljava/lang/String; = "allow_mock_location"

.field private static final ANIMATOR_DURATION_SCALE_KEY:Ljava/lang/String; = "animator_duration_scale"

.field private static final APP_PROCESS_LIMIT_KEY:Ljava/lang/String; = "app_process_limit"

.field private static final BT_HCI_SNOOP_LOG:Ljava/lang/String; = "bt_hci_snoop_log"

.field private static final BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final BUGREPORT_IN_POWER_KEY:Ljava/lang/String; = "bugreport_in_power"

.field private static final CLEAR_ADB_KEYS:Ljava/lang/String; = "clear_adb_keys"

.field private static final DEBUG_APPLICATIONS_CATEGORY_KEY:Ljava/lang/String; = "debug_applications_category"

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

.field private static final ENABLE_OEM_UNLOCK:Ljava/lang/String; = "oem_unlock_enable"

.field private static final ENABLE_QUICKBOOT:Ljava/lang/String; = "enable_quickboot"

.field private static final ENABLE_TERMINAL:Ljava/lang/String; = "enable_terminal"

.field private static final FORCE_HARDWARE_UI_KEY:Ljava/lang/String; = "force_hw_ui"

.field private static final FORCE_MSAA_KEY:Ljava/lang/String; = "force_msaa"

.field private static final FORCE_RTL_LAYOUT_KEY:Ljava/lang/String; = "force_rtl_layout_all_locales"

.field private static final HARDWARE_UI_PROPERTY:Ljava/lang/String; = "persist.sys.ui.hw"

.field private static final HDCP_CHECKING_KEY:Ljava/lang/String; = "hdcp_checking"

.field private static final HDCP_CHECKING_PROPERTY:Ljava/lang/String; = "persist.sys.hdcp_checking"

.field private static final IMMEDIATELY_DESTROY_ACTIVITIES_KEY:Ljava/lang/String; = "immediately_destroy_activities"

.field private static final KEEP_SCREEN_ON:Ljava/lang/String; = "keep_screen_on"

.field private static final LOCAL_BACKUP_PASSWORD:Ljava/lang/String; = "local_backup_password"

.field private static final MSAA_PROPERTY:Ljava/lang/String; = "debug.egl.force_msaa"

.field private static final ONEPLUS_GET_LOGS:Ljava/lang/String; = "getlogs"

.field private static final OPENGL_TRACES_KEY:Ljava/lang/String; = "enable_opengl_traces"

.field private static final OPENGL_TRACES_PROPERTY:Ljava/lang/String; = "debug.egl.trace"

.field private static final OVERLAY_DISPLAY_DEVICES_KEY:Ljava/lang/String; = "overlay_display_devices"

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final POINTER_LOCATION_KEY:Ljava/lang/String; = "pointer_location"

.field public static final PREF_FILE:Ljava/lang/String; = "development"

.field public static final PREF_SHOW:Ljava/lang/String; = "show"

.field private static final PROCESS_STATS:Ljava/lang/String; = "proc_stats"

.field private static final REQUEST_CODE_ENABLE_OEM_UNLOCK:I = 0x0

.field private static final RESULT_DEBUG_APP:I = 0x3e8

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

.field private static final TAG_CONFIRM_ENFORCE:Ljava/lang/String; = "confirm_enforce"

.field private static final TERMINAL_APP_PACKAGE:Ljava/lang/String; = "com.android.terminal"

.field private static final TRACK_FRAME_TIME_KEY:Ljava/lang/String; = "track_frame_time"

.field private static final TRANSITION_ANIMATION_SCALE_KEY:Ljava/lang/String; = "transition_animation_scale"

.field private static final USB_AUDIO_KEY:Ljava/lang/String; = "usb_audio"

.field private static final USE_AWESOMEPLAYER_KEY:Ljava/lang/String; = "use_awesomeplayer"

.field private static final USE_AWESOMEPLAYER_PROPERTY:Ljava/lang/String; = "persist.sys.media.use-awesome"

.field private static final VERIFY_APPS_OVER_USB_KEY:Ljava/lang/String; = "verify_apps_over_usb"

.field private static final WAIT_FOR_DEBUGGER_KEY:Ljava/lang/String; = "wait_for_debugger"

.field private static final WIFI_AGGRESSIVE_HANDOVER_KEY:Ljava/lang/String; = "wifi_aggressive_handover"

.field private static final WIFI_ALLOW_SCAN_WITH_TRAFFIC_KEY:Ljava/lang/String; = "wifi_allow_scan_with_traffic"

.field private static final WIFI_DISPLAY_CERTIFICATION_KEY:Ljava/lang/String; = "wifi_display_certification"

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

.field private mAllowMockLocation:Landroid/preference/SwitchPreference;

.field private mAnimatorDurationScale:Landroid/preference/ListPreference;

.field private mAppProcessLimit:Landroid/preference/ListPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBtHciSnoopLog:Landroid/preference/SwitchPreference;

.field private mBugreport:Landroid/preference/Preference;

.field private mBugreportInPower:Landroid/preference/SwitchPreference;

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

.field private mEnableOemUnlock:Landroid/preference/SwitchPreference;

.field private mEnableTerminal:Landroid/preference/SwitchPreference;

.field private mEnabledDevelopmentSettings:Landroid/preference/SwitchPreference;

.field private mForceHardwareUi:Landroid/preference/SwitchPreference;

.field private mForceMsaa:Landroid/preference/SwitchPreference;

.field private mForceRtlLayout:Landroid/preference/SwitchPreference;

.field private mHaveDebugSettings:Z

.field private mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

.field private mKeepScreenOn:Landroid/preference/SwitchPreference;

.field private mLastEnabledState:Z

.field private mLogdSize:Landroid/preference/ListPreference;

.field private mLogsPreference:Landroid/preference/Preference;

.field private mOpenGLTraces:Landroid/preference/ListPreference;

.field private mOverlayDisplayDevices:Landroid/preference/ListPreference;

.field private mPassword:Landroid/preference/PreferenceScreen;

.field private mPointerLocation:Landroid/preference/SwitchPreference;

.field private mProcessStats:Landroid/preference/PreferenceScreen;

.field private mQuickBoot:Landroid/preference/SwitchPreference;

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

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUseAwesomePlayer:Landroid/preference/SwitchPreference;

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
    .locals 1

    .prologue
    .line 173
    const-string v0, "262144"

    sput-object v0, Lcom/android/settings_ex/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    .line 1796
    new-instance v0, Lcom/android/settings_ex/DevelopmentSettings$3;

    invoke-direct {v0}, Lcom/android/settings_ex/DevelopmentSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings_ex/DevelopmentSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    .line 258
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    .line 1725
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/DevelopmentSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DevelopmentSettings;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/DevelopmentSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DevelopmentSettings;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/android/settings_ex/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v0

    return v0
.end method

.method private addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;
    .locals 2
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 419
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 420
    .local v0, "pref":Landroid/preference/ListPreference;
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 422
    return-object v0
.end method

.method private confirmEnableOemUnlock()V
    .locals 4

    .prologue
    .line 1354
    new-instance v1, Lcom/android/settings_ex/DevelopmentSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/DevelopmentSettings$1;-><init>(Lcom/android/settings_ex/DevelopmentSettings;)V

    .line 1363
    .local v1, "onConfirmListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/settings_ex/DevelopmentSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DevelopmentSettings$2;-><init>(Lcom/android/settings_ex/DevelopmentSettings;)V

    .line 1372
    .local v0, "onCancelListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0906e5

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0906e6

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090606

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1379
    return-void
.end method

.method private static currentStrictModeActiveIndex()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 792
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 796
    .local v0, "enabled":Z
    :goto_0
    return v1

    .line 795
    .end local v0    # "enabled":Z
    :cond_0
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 796
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
    .line 426
    if-eqz p1, :cond_0

    .line 427
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 428
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_0
    return-void
.end method

.method private dismissDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1639
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1640
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1641
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1643
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 1644
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1645
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    .line 1647
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 1648
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1649
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 1651
    :cond_2
    return-void
.end method

.method private enableVerifierSetting()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 739
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 740
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "adb_enabled"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1

    .line 755
    :cond_0
    :goto_0
    return v4

    .line 743
    :cond_1
    const-string v6, "package_verifier_enable"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    .line 746
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 747
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 748
    .local v3, "verification":Landroid/content/Intent;
    const-string v6, "application/vnd.android.package-archive"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 749
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 750
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 751
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 755
    goto :goto_0
.end method

.method private findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 434
    .local v0, "pref":Landroid/preference/SwitchPreference;
    if-nez v0, :cond_0

    .line 435
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

    .line 437
    :cond_0
    const-string v1, "enable_adb"

    if-ne p1, v1, :cond_1

    const-string v1, "charging"

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 439
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0906d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 440
    invoke-direct {p0, v0}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 442
    :cond_1
    const-string v1, "enable_adb"

    if-eq p1, v1, :cond_2

    .line 443
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_2
    return-object v0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1754
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

    .line 1756
    :cond_0
    :goto_0
    return v1

    .line 1755
    :catch_0
    move-exception v0

    .line 1756
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private removePreference(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 474
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 475
    return-void
.end method

.method private removePreferenceForProduction(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 465
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 467
    const/4 v0, 0x1

    .line 469
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetDangerousOptions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 623
    iput-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDontPokeProperties:Z

    .line 624
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 625
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 626
    .local v0, "cb":Landroid/preference/SwitchPreference;
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 627
    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 628
    invoke-virtual {p0, v4, v0}, Lcom/android/settings_ex/DevelopmentSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 624
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 631
    .end local v0    # "cb":Landroid/preference/SwitchPreference;
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/DevelopmentSettings;->resetDebuggerOptions()V

    .line 632
    invoke-direct {p0, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    .line 633
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v2, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 634
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 635
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 637
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->usingDevelopmentColorSpace()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 638
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    .line 640
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    .line 641
    invoke-direct {p0, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 642
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 643
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAllOptions()V

    .line 644
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDontPokeProperties:Z

    .line 645
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 646
    return-void
.end method

.method private static resetDebuggerOptions()V
    .locals 4

    .prologue
    .line 697
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :goto_0
    return-void

    .line 699
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setPrefsEnabledState(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x1

    .line 478
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 479
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 480
    .local v1, "pref":Landroid/preference/Preference;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 482
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAllOptions()V

    .line 484
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledDevelopmentSettings:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 485
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledDevelopmentSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 488
    :cond_2
    return-void
.end method

.method private static showEnableOemUnlockPreference()Z
    .locals 2

    .prologue
    .line 764
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
    .locals 4
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "requestCode"    # I

    .prologue
    .line 1572
    const/4 v1, 0x0

    .line 1573
    .local v1, "message":Ljava/lang/CharSequence;
    move-object v2, p1

    .line 1574
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 1576
    .local v0, "lock":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->lockMode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1584
    const v3, 0x7f0905be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1587
    :goto_0
    const v3, 0x7f090101

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, p2, v1, v3}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivityExt(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    return v3

    .line 1578
    :pswitch_0
    const v3, 0x7f0905bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1579
    goto :goto_0

    .line 1581
    :pswitch_1
    const v3, 0x7f0905c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1582
    goto :goto_0

    .line 1576
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showVerifierSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 759
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

.method private updateAllOptions()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 557
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 558
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 559
    .local v1, "cr":Landroid/content/ContentResolver;
    iput-boolean v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 568
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 569
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v6, "com.android.terminal"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 573
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 575
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    const-string v2, "stay_on_while_plugged_in"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 577
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    const-string v2, "bluetooth_hci_log"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_3
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 579
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 580
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/Utils;->isOemUnlockEnabled(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 582
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/SwitchPreference;

    const-string v2, "mock_location"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_4
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 584
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    const-string v2, "debug_view_attributes"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_5
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 586
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mQuickBoot:Landroid/preference/SwitchPreference;

    const-string v5, "enable_quickboot"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_8

    :goto_6
    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 587
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateHdcpValues()V

    .line 588
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updatePasswordSummary()V

    .line 589
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebuggerOptions()V

    .line 590
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateStrictModeVisualOptions()V

    .line 591
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updatePointerLocationOptions()V

    .line 592
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowTouchesOptions()V

    .line 593
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateFlingerOptions()V

    .line 594
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateCpuUsageOptions()V

    .line 595
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateHardwareUiOptions()V

    .line 596
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateMsaaOptions()V

    .line 597
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 598
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 599
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowHwScreenUpdatesOptions()V

    .line 600
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowHwLayersUpdatesOptions()V

    .line 601
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 602
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebugLayoutOptions()V

    .line 603
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleOptions()V

    .line 604
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 605
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 606
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    .line 607
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAppProcessLimitOptions()V

    .line 608
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowAllANRsOptions()V

    .line 609
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 610
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateBugreportOptions()V

    .line 611
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateForceRtlOptions()V

    .line 612
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateLogdSizeValues()V

    .line 613
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWifiDisplayCertificationOptions()V

    .line 614
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWifiVerboseLoggingOptions()V

    .line 615
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWifiAggressiveHandoverOptions()V

    .line 616
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWifiAllowScansWithTrafficOptions()V

    .line 617
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSimulateColorSpace()V

    .line 618
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateUseNuplayerOptions()V

    .line 619
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateUSBAudioOptions()V

    .line 620
    return-void

    :cond_2
    move v2, v4

    .line 569
    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 573
    goto/16 :goto_1

    :cond_4
    move v2, v4

    .line 575
    goto/16 :goto_2

    :cond_5
    move v2, v4

    .line 577
    goto/16 :goto_3

    :cond_6
    move v2, v4

    .line 582
    goto/16 :goto_4

    :cond_7
    move v2, v4

    .line 584
    goto/16 :goto_5

    :cond_8
    move v3, v4

    .line 586
    goto :goto_6
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    .prologue
    .line 1249
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 1250
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 1251
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 1252
    return-void
.end method

.method private updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    .locals 6
    .param p1, "which"    # I
    .param p2, "pref"    # Landroid/preference/ListPreference;

    .prologue
    .line 1229
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    .line 1230
    .local v1, "scale":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    .line 1231
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1233
    :cond_0
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1234
    .local v3, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1235
    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1236
    .local v2, "val":F
    cmpg-float v4, v1, v2

    if-gtz v4, :cond_1

    .line 1237
    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1238
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1246
    .end local v0    # "i":I
    .end local v1    # "scale":F
    .end local v2    # "val":F
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1234
    .restart local v0    # "i":I
    .restart local v1    # "scale":F
    .restart local v2    # "val":F
    .restart local v3    # "values":[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1242
    .end local v2    # "val":F
    :cond_2
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1243
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1244
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
    .line 1314
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v1

    .line 1315
    .local v1, "limit":I
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1316
    .local v3, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1317
    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1318
    .local v2, "val":I
    if-lt v2, v1, :cond_1

    .line 1319
    if-eqz v0, :cond_0

    .line 1320
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1322
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1323
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1331
    .end local v0    # "i":I
    .end local v1    # "limit":I
    .end local v2    # "val":I
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1316
    .restart local v0    # "i":I
    .restart local v1    # "limit":I
    .restart local v2    # "val":I
    .restart local v3    # "values":[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1327
    .end local v2    # "val":I
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1328
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

    .line 1329
    .end local v0    # "i":I
    .end local v1    # "limit":I
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateBugreportOptions()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 768
    const-string v4, "user"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 769
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 770
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v4, "adb_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 772
    .local v0, "adbEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 773
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 774
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 784
    .end local v0    # "adbEnabled":Z
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :goto_1
    return-void

    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    move v0, v3

    .line 770
    goto :goto_0

    .line 776
    .restart local v0    # "adbEnabled":Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 777
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 778
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 779
    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 782
    .end local v0    # "adbEnabled":Z
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateCpuUsageOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1197
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

    .line 1199
    return-void
.end method

.method private updateDebugHwOverdrawOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 983
    const-string v3, "debug.hwui.overdraw"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 984
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 985
    const-string v1, ""

    .line 988
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 989
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 990
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 991
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 992
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 998
    :goto_1
    return-void

    .line 989
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 996
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 997
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
    .line 1008
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    const-string v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1010
    return-void
.end method

.method private updateDebuggerOptions()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 704
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "debug_app"

    invoke-static {v4, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 706
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

    .line 708
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 711
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    const/16 v8, 0x200

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 713
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 714
    .local v2, "lab":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 718
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "lab":Ljava/lang/CharSequence;
    .local v3, "label":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0908f3

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v3, v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 719
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 720
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 725
    .end local v3    # "label":Ljava/lang/String;
    :goto_2
    return-void

    :cond_0
    move v4, v6

    .line 706
    goto :goto_0

    .line 714
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "lab":Ljava/lang/CharSequence;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 715
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "lab":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 716
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_1

    .line 722
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "label":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0908f2

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 723
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateFlingerOptions()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 834
    :try_start_0
    const-string v10, "SurfaceFlinger"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 835
    .local v3, "flinger":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 837
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 838
    .local v4, "reply":Landroid/os/Parcel;
    const-string v10, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 839
    const/16 v10, 0x3f2

    const/4 v11, 0x0

    invoke-interface {v3, v10, v0, v4, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 841
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 843
    .local v6, "showCpu":I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 844
    .local v2, "enableGL":I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 845
    .local v7, "showUpdates":I
    iget-object v11, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_1

    move v10, v8

    :goto_0
    invoke-virtual {p0, v11, v10}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 847
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 848
    .local v5, "showBackground":I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 849
    .local v1, "disableOverlays":I
    iget-object v10, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p0, v10, v8}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 850
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
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

    .line 845
    goto :goto_0

    .restart local v1    # "disableOverlays":I
    .restart local v5    # "showBackground":I
    :cond_2
    move v8, v9

    .line 849
    goto :goto_1

    .line 853
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

    .line 1096
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

    .line 1098
    return-void
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 893
    return-void
.end method

.method private updateHdcpValues()V
    .locals 8

    .prologue
    .line 649
    const-string v6, "hdcp_checking"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 650
    .local v1, "hdcpChecking":Landroid/preference/ListPreference;
    if-eqz v1, :cond_1

    .line 651
    const-string v6, "persist.sys.hdcp_checking"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, "currentValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b004b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 653
    .local v5, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b004c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 654
    .local v4, "summaries":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 655
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 656
    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 657
    move v3, v2

    .line 661
    :cond_0
    aget-object v6, v5, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 662
    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 663
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 665
    .end local v0    # "currentValue":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "summaries":[Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_1
    return-void

    .line 655
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

    .line 1223
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

    .line 1225
    return-void
.end method

.method private updateLogdSizeValues()V
    .locals 9

    .prologue
    const v8, 0x7f0b0047

    .line 1148
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    if-eqz v6, :cond_4

    .line 1149
    const-string v6, "persist.logd.size"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1150
    .local v0, "currentValue":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1151
    const-string v6, "ro.logd.size"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1152
    if-nez v0, :cond_0

    .line 1153
    const-string v0, "256K"

    .line 1156
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1157
    .local v5, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0046

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1158
    .local v4, "titles":[Ljava/lang/String;
    const-string v6, "ro.config.low_ram"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1159
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1160
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1162
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0049

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1163
    .local v3, "summaries":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 1164
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_3

    .line 1165
    aget-object v6, v5, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v4, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1167
    :cond_2
    move v2, v1

    .line 1171
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1172
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1173
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1175
    .end local v0    # "currentValue":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "summaries":[Ljava/lang/String;
    .end local v4    # "titles":[Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_4
    return-void

    .line 1164
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

.method private updateMsaaOptions()V
    .locals 3

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    const-string v1, "debug.egl.force_msaa"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 902
    return-void
.end method

.method private updateOpenGLTracesOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1289
    const-string v3, "debug.egl.trace"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1290
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1291
    const-string v1, ""

    .line 1294
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1295
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1296
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1297
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1298
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1304
    :goto_1
    return-void

    .line 1295
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1302
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1303
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

    .line 1264
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "overlay_display_devices"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1266
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1267
    const-string v1, ""

    .line 1270
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1271
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1272
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1273
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1274
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1280
    :goto_1
    return-void

    .line 1271
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1278
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1279
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
    .line 669
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f09087b

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 677
    :goto_0
    return-void

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f09087a

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 674
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 817
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

    .line 819
    return-void
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1349
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

    .line 1351
    return-void
.end method

.method private updateShowHwLayersUpdatesOptions()V
    .locals 3

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    const-string v1, "debug.hwui.show_layers_updates"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 974
    return-void
.end method

.method private updateShowHwScreenUpdatesOptions()V
    .locals 3

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    const-string v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 963
    return-void
.end method

.method private updateShowNonRectClipOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 935
    const-string v3, "debug.hwui.show_non_rect_clip"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 937
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 938
    const-string v1, "hide"

    .line 941
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 942
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 943
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 944
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 945
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 951
    :goto_1
    return-void

    .line 942
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 949
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 950
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

    .line 827
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

    .line 829
    return-void
.end method

.method private updateSimulateColorSpace()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 1019
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1020
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    .line 1022
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1023
    const-string v6, "accessibility_display_daltonizer"

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1026
    .local v3, "mode":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1027
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 1028
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 1030
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    const v7, 0x7f09072f

    new-array v4, v4, [Ljava/lang/Object;

    const v8, 0x7f09072b

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {p0, v7, v4}, Lcom/android/settings_ex/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1039
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :goto_1
    return-void

    .end local v1    # "enabled":Z
    :cond_0
    move v1, v5

    .line 1020
    goto :goto_0

    .line 1033
    .restart local v1    # "enabled":Z
    .restart local v2    # "index":I
    .restart local v3    # "mode":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    const-string v5, "%s"

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1036
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

    .line 808
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/settings_ex/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 809
    return-void

    .line 808
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTrackFrameTimeOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 910
    const-string v3, "debug.hwui.profile"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 911
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 912
    const-string v1, ""

    .line 915
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 916
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 917
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 918
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 919
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 925
    :goto_1
    return-void

    .line 916
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 923
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 924
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

    .line 1085
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

    .line 1087
    return-void
.end method

.method private updateUseNuplayerOptions()V
    .locals 3

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUseAwesomePlayer:Landroid/preference/SwitchPreference;

    const-string v1, "persist.sys.media.use-awesome"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1076
    return-void
.end method

.method private updateVerifyAppsOverUsbOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 728
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

    .line 730
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->enableVerifierSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 731
    return-void

    .line 728
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiAggressiveHandoverOptions()V
    .locals 2

    .prologue
    .line 1130
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAggressiveHandover()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1131
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1132
    return-void

    .line 1130
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiAllowScansWithTrafficOptions()V
    .locals 2

    .prologue
    .line 1139
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAllowScansWithTraffic()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1140
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1141
    return-void

    .line 1139
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiDisplayCertificationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1109
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

    .line 1112
    return-void
.end method

.method private updateWifiVerboseLoggingOptions()V
    .locals 2

    .prologue
    .line 1121
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1122
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1123
    return-void

    .line 1121
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

    .line 1046
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1047
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    .line 1049
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1050
    const-string v6, "accessibility_display_daltonizer"

    const/4 v7, -0x1

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1053
    .local v3, "mode":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 1054
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 1059
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :goto_1
    return v4

    .end local v1    # "enabled":Z
    :cond_0
    move v1, v5

    .line 1047
    goto :goto_0

    .restart local v1    # "enabled":Z
    :cond_1
    move v4, v5

    .line 1059
    goto :goto_1
.end method

.method private writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V
    .locals 2
    .param p1, "which"    # I
    .param p2, "pref"    # Landroid/preference/ListPreference;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1256
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1257
    .local v0, "scale":F
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 1258
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1261
    .end local v0    # "scale":F
    :goto_1
    return-void

    .line 1256
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1259
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1335
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1336
    .local v0, "limit":I
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 1337
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1340
    .end local v0    # "limit":I
    :goto_1
    return-void

    .line 1335
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1338
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeBtHciSnoopLogOptions()V
    .locals 4

    .prologue
    .line 680
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 681
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->configHciSnoopLog(Z)Z

    .line 682
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

    .line 685
    return-void

    .line 682
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeCpuUsageOptions()V
    .locals 5

    .prologue
    .line 1202
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 1203
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

    .line 1205
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.LoadAverageService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1207
    .local v0, "service":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 1208
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1212
    :goto_1
    return-void

    .line 1203
    .end local v0    # "service":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1210
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
    .line 1001
    const-string v1, "debug.hwui.overdraw"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1004
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 1005
    return-void

    .line 1001
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeDebugLayoutOptions()V
    .locals 2

    .prologue
    .line 1013
    const-string v1, "debug.layout"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1016
    return-void

    .line 1013
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeDebuggerOptions()V
    .locals 4

    .prologue
    .line 689
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

    .line 693
    :goto_0
    return-void

    .line 691
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeDevelopmentSettings(Ljava/lang/Object;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 1762
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1764
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

    .line 1766
    iget-boolean v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    if-eq v0, v1, :cond_1

    .line 1767
    if-eqz v0, :cond_2

    .line 1768
    iput-boolean v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    .line 1769
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 1770
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0906f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0906f7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 1777
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1791
    :cond_1
    :goto_0
    return-void

    .line 1779
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->resetDangerousOptions()V

    .line 1780
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "development_settings_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1782
    iput-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    .line 1783
    iget-boolean v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 1785
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledDevelopmentSettings:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 1786
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledDevelopmentSettings:Landroid/preference/SwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private writeDisableOverlaysOption()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 876
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 877
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_1

    .line 878
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 879
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 880
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 881
    .local v1, "disableOverlays":I
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 882
    const/16 v3, 0x3f0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 885
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "flinger":Landroid/os/IBinder;
    :cond_1
    :goto_0
    return-void

    .line 887
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private writeForceRtlOptions()V
    .locals 4

    .prologue
    .line 1101
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 1102
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

    .line 1104
    const-string v2, "debug.force_rtl"

    if-eqz v0, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/android/settings_ex/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 1106
    return-void

    .line 1102
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1104
    :cond_1
    const-string v1, "0"

    goto :goto_1
.end method

.method private writeHardwareUiOptions()V
    .locals 2

    .prologue
    .line 896
    const-string v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 898
    return-void

    .line 896
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeImmediatelyDestroyActivitiesOptions()V
    .locals 2

    .prologue
    .line 1216
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    :goto_0
    return-void

    .line 1218
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeLogdSizeOption(Ljava/lang/Object;)V
    .locals 7
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1178
    const-string v4, "ro.logd.size"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1179
    .local v0, "currentValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1180
    sput-object v0, Lcom/android/settings_ex/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    .line 1182
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1184
    .local v3, "size":Ljava/lang/String;
    :goto_0
    const-string v4, "persist.logd.size"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1187
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

    .line 1188
    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 1189
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

    .line 1193
    .end local v2    # "p":Ljava/lang/Process;
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateLogdSizeValues()V

    .line 1194
    return-void

    .line 1182
    .end local v3    # "size":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/settings_ex/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    goto :goto_0

    .line 1190
    .restart local v3    # "size":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1191
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "DevelopmentSettings"

    const-string v5, "Cannot set logcat ring buffer sizes"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private writeMsaaOptions()V
    .locals 2

    .prologue
    .line 905
    const-string v1, "debug.egl.force_msaa"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 907
    return-void

    .line 905
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeOpenGLTracesOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1307
    const-string v1, "debug.egl.trace"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1309
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 1310
    return-void

    .line 1307
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1283
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "overlay_display_devices"

    check-cast p1, Ljava/lang/String;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1285
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 1286
    return-void
.end method

.method private writePointerLocationOptions()V
    .locals 3

    .prologue
    .line 812
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

    .line 814
    return-void

    .line 812
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowAllANRsOptions()V
    .locals 3

    .prologue
    .line 1343
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

    .line 1346
    return-void

    .line 1343
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwLayersUpdatesOptions()V
    .locals 2

    .prologue
    .line 977
    const-string v1, "debug.hwui.show_layers_updates"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 980
    return-void

    .line 977
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwScreenUpdatesOptions()V
    .locals 2

    .prologue
    .line 966
    const-string v1, "debug.hwui.show_dirty_regions"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 969
    return-void

    .line 966
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowNonRectClipOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 954
    const-string v1, "debug.hwui.show_non_rect_clip"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 957
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 958
    return-void

    .line 954
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    .prologue
    .line 822
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

    .line 824
    return-void

    .line 822
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowUpdatesOption()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 859
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 860
    .local v1, "flinger":Landroid/os/IBinder;
    if-eqz v1, :cond_1

    .line 861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 862
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 863
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 864
    .local v2, "showUpdates":I
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    const/16 v3, 0x3ea

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 868
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "flinger":Landroid/os/IBinder;
    .end local v2    # "showUpdates":I
    :cond_1
    :goto_0
    return-void

    .line 870
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private writeSimulateColorSpace(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1063
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1064
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1065
    .local v1, "newMode":I
    if-gez v1, :cond_0

    .line 1066
    const-string v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1071
    :goto_0
    return-void

    .line 1068
    :cond_0
    const-string v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1069
    const-string v2, "accessibility_display_daltonizer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private writeStrictModeVisualOptions()V
    .locals 2

    .prologue
    .line 801
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 805
    :goto_1
    return-void

    .line 801
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 803
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private writeTrackFrameTimeOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 928
    const-string v1, "debug.hwui.profile"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 931
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 932
    return-void

    .line 928
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeUSBAudioOptions()V
    .locals 3

    .prologue
    .line 1090
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

    .line 1093
    return-void

    .line 1090
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeUseAwesomePlayerOptions()V
    .locals 2

    .prologue
    .line 1079
    const-string v1, "persist.sys.media.use-awesome"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUseAwesomePlayer:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1082
    return-void

    .line 1079
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeVerifyAppsOverUsbOptions()V
    .locals 3

    .prologue
    .line 734
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

    .line 736
    return-void

    .line 734
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiAggressiveHandoverOptions()V
    .locals 2

    .prologue
    .line 1135
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableAggressiveHandover(I)V

    .line 1136
    return-void

    .line 1135
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiAllowScansWithTrafficOptions()V
    .locals 2

    .prologue
    .line 1144
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setAllowScansWithTraffic(I)V

    .line 1145
    return-void

    .line 1144
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiDisplayCertificationOptions()V
    .locals 3

    .prologue
    .line 1115
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

    .line 1118
    return-void

    .line 1115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiVerboseLoggingOptions()V
    .locals 2

    .prologue
    .line 1126
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableVerboseLogging(I)V

    .line 1127
    return-void

    .line 1126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 451
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 453
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 455
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 456
    iget-boolean v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUnavailable:Z

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 462
    :goto_0
    return-void

    .line 461
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

    .line 1410
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 1411
    if-ne p2, v1, :cond_0

    .line 1412
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 1413
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeDebuggerOptions()V

    .line 1414
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebuggerOptions()V

    .line 1427
    :cond_0
    :goto_0
    return-void

    .line 1416
    :cond_1
    if-nez p1, :cond_3

    .line 1417
    if-ne p2, v1, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1419
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto :goto_0

    .line 1421
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    .line 1425
    :cond_3
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

    .line 1654
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_2

    .line 1655
    if-ne p2, v4, :cond_1

    .line 1656
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    .line 1657
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1659
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1660
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 1661
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateBugreportOptions()V

    .line 1689
    :cond_0
    :goto_0
    return-void

    .line 1664
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 1666
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_3

    .line 1667
    if-ne p2, v4, :cond_0

    .line 1669
    :try_start_0
    const-string v3, "usb"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1670
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    .line 1671
    .local v2, "service":Landroid/hardware/usb/IUsbManager;
    invoke-interface {v2}, Landroid/hardware/usb/IUsbManager;->clearUsbDebuggingKeys()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1672
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "service":Landroid/hardware/usb/IUsbManager;
    :catch_0
    move-exception v1

    .line 1673
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "DevelopmentSettings"

    const-string v4, "Unable to clear adb keys"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1676
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_0

    .line 1677
    if-ne p2, v4, :cond_4

    .line 1678
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    .line 1679
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "development_settings_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1681
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    .line 1682
    iget-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0

    .line 1685
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 1686
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledDevelopmentSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 269
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 271
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 272
    const-string v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 274
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 275
    const-string v2, "user"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    .line 277
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 279
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "usb"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 281
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    const-string v3, "no_debugging_features"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 287
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUnavailable:Z

    .line 288
    new-instance v2, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 416
    :goto_0
    return-void

    .line 292
    :cond_1
    const v2, 0x7f06001a

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 294
    const-string v2, "debug_debugging_category"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 297
    .local v0, "debugDebuggingCategory":Landroid/preference/PreferenceGroup;
    const-string v2, "debug_base_category"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugBaseCategory:Landroid/preference/PreferenceCategory;

    .line 299
    const-string v2, "development_settings"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledDevelopmentSettings:Landroid/preference/SwitchPreference;

    .line 300
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledDevelopmentSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 302
    const-string v2, "enable_adb"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    .line 303
    const-string v2, "clear_adb_keys"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    .line 304
    const-string v2, "ro.adb.secure"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 305
    if-eqz v0, :cond_2

    .line 306
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 309
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    const-string v2, "enable_terminal"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    .line 311
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.terminal"

    invoke-static {v2, v3}, Lcom/android/settings_ex/DevelopmentSettings;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 312
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 313
    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    .line 320
    :cond_3
    const-string v2, "getlogs"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogsPreference:Landroid/preference/Preference;

    .line 323
    const-string v2, "bugreport"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    .line 324
    const-string v2, "bugreport_in_power"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    .line 325
    const-string v2, "keep_screen_on"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    .line 326
    const-string v2, "bt_hci_snoop_log"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    .line 327
    const-string v2, "oem_unlock_enable"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    .line 328
    invoke-static {}, Lcom/android/settings_ex/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v2

    if-nez v2, :cond_4

    .line 329
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 330
    iput-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    .line 332
    :cond_4
    const-string v2, "enable_quickboot"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mQuickBoot:Landroid/preference/SwitchPreference;

    .line 340
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugBaseCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mQuickBoot:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 342
    const-string v2, "allow_mock_location"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/SwitchPreference;

    .line 343
    const-string v2, "debug_view_attributes"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    .line 344
    const-string v2, "local_backup_password"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    .line 345
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 349
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 350
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 351
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 352
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 355
    :cond_5
    const-string v2, "debug_app"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    .line 356
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    const-string v2, "wait_for_debugger"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    .line 358
    const-string v2, "verify_apps_over_usb"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    .line 359
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->showVerifierSetting()Z

    move-result v2

    if-nez v2, :cond_6

    .line 360
    if-eqz v0, :cond_8

    .line 361
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 366
    :cond_6
    :goto_1
    const-string v2, "strict_mode"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    .line 367
    const-string v2, "pointer_location"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    .line 368
    const-string v2, "show_touches"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    .line 369
    const-string v2, "show_screen_updates"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    .line 370
    const-string v2, "disable_overlays"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    .line 371
    const-string v2, "show_cpu_usage"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    .line 372
    const-string v2, "force_hw_ui"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    .line 373
    const-string v2, "force_msaa"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    .line 374
    const-string v2, "track_frame_time"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    .line 375
    const-string v2, "show_non_rect_clip"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    .line 376
    const-string v2, "show_hw_screen_udpates"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    .line 377
    const-string v2, "show_hw_layers_udpates"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    .line 378
    const-string v2, "debug_layout"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    .line 379
    const-string v2, "force_rtl_layout_all_locales"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    .line 380
    const-string v2, "debug_hw_overdraw"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    .line 381
    const-string v2, "wifi_display_certification"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    .line 382
    const-string v2, "wifi_verbose_logging"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    .line 383
    const-string v2, "wifi_aggressive_handover"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    .line 384
    const-string v2, "wifi_allow_scan_with_traffic"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    .line 385
    const-string v2, "select_logd_size"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    .line 387
    const-string v2, "window_animation_scale"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    .line 388
    const-string v2, "transition_animation_scale"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    .line 389
    const-string v2, "animator_duration_scale"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    .line 390
    const-string v2, "overlay_display_devices"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    .line 391
    const-string v2, "enable_opengl_traces"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    .line 392
    const-string v2, "simulate_color_space"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    .line 393
    const-string v2, "use_awesomeplayer"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUseAwesomePlayer:Landroid/preference/SwitchPreference;

    .line 394
    const-string v2, "usb_audio"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    .line 396
    const-string v2, "immediately_destroy_activities"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    .line 398
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    const-string v2, "app_process_limit"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    .line 403
    const-string v2, "show_all_anrs"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    .line 405
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    const-string v2, "hdcp_checking"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 409
    .local v1, "hdcpChecking":Landroid/preference/Preference;
    if-eqz v1, :cond_7

    .line 410
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-direct {p0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->removePreferenceForProduction(Landroid/preference/Preference;)Z

    .line 414
    :cond_7
    const-string v2, "proc_stats"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mProcessStats:Landroid/preference/PreferenceScreen;

    .line 415
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mProcessStats:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 363
    .end local v1    # "hdcpChecking":Landroid/preference/Preference;
    :cond_8
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1714
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 1715
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 1716
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 542
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroyView()V

    .line 544
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 549
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 548
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

    .line 1693
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 1694
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_0

    .line 1695
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1703
    :cond_0
    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1710
    :cond_1
    :goto_0
    return-void

    .line 1704
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 1705
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_3

    .line 1706
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 1708
    :cond_3
    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1593
    const-string v2, "hdcp_checking"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1594
    const-string v1, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateHdcpValues()V

    .line 1596
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1635
    :goto_0
    return v0

    .line 1598
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 1599
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    goto :goto_0

    .line 1601
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    .line 1602
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1604
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 1605
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1607
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_4

    .line 1608
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1610
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_5

    .line 1611
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1613
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_6

    .line 1614
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeOpenGLTracesOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1616
    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_7

    .line 1617
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeTrackFrameTimeOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1619
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_8

    .line 1620
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeDebugHwOverdrawOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1622
    :cond_8
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_9

    .line 1623
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowNonRectClipOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1625
    :cond_9
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_a

    .line 1626
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1628
    :cond_a
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_b

    .line 1629
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    goto :goto_0

    .line 1631
    :cond_b
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledDevelopmentSettings:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_c

    .line 1632
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeDevelopmentSettings(Ljava/lang/Object;)V

    goto :goto_0

    :cond_c
    move v0, v1

    .line 1635
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1431
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1564
    :cond_0
    :goto_0
    return v3

    .line 1438
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getlogs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1444
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1445
    .local v0, "nextIntent":Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1446
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.oem.oemlogkit"

    const-string v6, "com.oem.oemlogkit.OEMLogKitMainActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1449
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1450
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1454
    .end local v0    # "nextIntent":Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_5

    .line 1455
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1456
    iput-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    .line 1457
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 1458
    :cond_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0906f5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f0906f4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x1040013

    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x1040009

    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1464
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 1466
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "adb_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1468
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1469
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1470
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateBugreportOptions()V

    goto/16 :goto_0

    .line 1472
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    if-ne p2, v4, :cond_7

    .line 1473
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 1474
    :cond_6
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0906f6

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x104000a

    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1479
    :cond_7
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_9

    .line 1480
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1481
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v4, "com.android.terminal"

    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_1
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_8
    move v2, v3

    goto :goto_1

    .line 1484
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_9
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_b

    .line 1485
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bugreport_in_power_menu"

    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_a

    :goto_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_a
    move v2, v3

    goto :goto_2

    .line 1488
    :cond_b
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_d

    .line 1489
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

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_c
    move v2, v3

    goto :goto_3

    .line 1493
    :cond_d
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_e

    .line 1494
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeBtHciSnoopLogOptions()V

    goto/16 :goto_0

    .line 1495
    :cond_e
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_10

    .line 1496
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/DevelopmentSettings;->showKeyguardConfirmation(Landroid/content/res/Resources;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1497
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1498
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto/16 :goto_0

    .line 1500
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/settings_ex/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 1503
    :cond_10
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_12

    .line 1504
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mock_location"

    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_11

    :goto_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_11
    move v2, v3

    goto :goto_4

    .line 1507
    :cond_12
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_14

    .line 1508
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "debug_view_attributes"

    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_13

    :goto_5
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_13
    move v2, v3

    goto :goto_5

    .line 1511
    :cond_14
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mQuickBoot:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_16

    .line 1512
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_quickboot"

    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mQuickBoot:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_15

    :goto_6
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_15
    move v2, v3

    goto :goto_6

    .line 1514
    :cond_16
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    if-ne p2, v2, :cond_17

    .line 1515
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settings_ex/AppPicker;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x3e8

    invoke-virtual {p0, v2, v4}, Lcom/android/settings_ex/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1516
    :cond_17
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_18

    .line 1517
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeDebuggerOptions()V

    goto/16 :goto_0

    .line 1518
    :cond_18
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_19

    .line 1519
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeVerifyAppsOverUsbOptions()V

    goto/16 :goto_0

    .line 1520
    :cond_19
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1a

    .line 1521
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeStrictModeVisualOptions()V

    goto/16 :goto_0

    .line 1522
    :cond_1a
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1b

    .line 1523
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_0

    .line 1524
    :cond_1b
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1c

    .line 1525
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_0

    .line 1526
    :cond_1c
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1d

    .line 1527
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowUpdatesOption()V

    goto/16 :goto_0

    .line 1528
    :cond_1d
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1e

    .line 1529
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeDisableOverlaysOption()V

    goto/16 :goto_0

    .line 1530
    :cond_1e
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1f

    .line 1531
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeCpuUsageOptions()V

    goto/16 :goto_0

    .line 1532
    :cond_1f
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_20

    .line 1533
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions()V

    goto/16 :goto_0

    .line 1534
    :cond_20
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_21

    .line 1535
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowAllANRsOptions()V

    goto/16 :goto_0

    .line 1536
    :cond_21
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_22

    .line 1537
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeHardwareUiOptions()V

    goto/16 :goto_0

    .line 1538
    :cond_22
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_23

    .line 1539
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeMsaaOptions()V

    goto/16 :goto_0

    .line 1540
    :cond_23
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_24

    .line 1541
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowHwScreenUpdatesOptions()V

    goto/16 :goto_0

    .line 1542
    :cond_24
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_25

    .line 1543
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowHwLayersUpdatesOptions()V

    goto/16 :goto_0

    .line 1544
    :cond_25
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_26

    .line 1545
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeDebugLayoutOptions()V

    goto/16 :goto_0

    .line 1546
    :cond_26
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_27

    .line 1547
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeForceRtlOptions()V

    goto/16 :goto_0

    .line 1548
    :cond_27
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_28

    .line 1549
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeWifiDisplayCertificationOptions()V

    goto/16 :goto_0

    .line 1550
    :cond_28
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_29

    .line 1551
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeWifiVerboseLoggingOptions()V

    goto/16 :goto_0

    .line 1552
    :cond_29
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2a

    .line 1553
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeWifiAggressiveHandoverOptions()V

    goto/16 :goto_0

    .line 1554
    :cond_2a
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2b

    .line 1555
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeWifiAllowScansWithTrafficOptions()V

    goto/16 :goto_0

    .line 1556
    :cond_2b
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUseAwesomePlayer:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2c

    .line 1557
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeUseAwesomePlayerOptions()V

    goto/16 :goto_0

    .line 1558
    :cond_2c
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2d

    .line 1559
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeUSBAudioOptions()V

    goto/16 :goto_0

    .line 1561
    :cond_2d
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 492
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 494
    iget-boolean v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUnavailable:Z

    if-eqz v4, :cond_1

    .line 496
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 497
    .local v1, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 498
    if-eqz v1, :cond_0

    .line 499
    const v2, 0x7f0906d3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 538
    .end local v1    # "emptyView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 509
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 514
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 515
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v4, "development_settings_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    .line 517
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    iget-boolean v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 518
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledDevelopmentSettings:Landroid/preference/SwitchPreference;

    iget-boolean v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 519
    iget-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 521
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLastEnabledState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 523
    iget-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    if-nez v2, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "development_settings_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 530
    iput-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    .line 531
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    iget-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 532
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledDevelopmentSettings:Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 533
    iget-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0

    .line 511
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1383
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 1406
    :cond_0
    :goto_0
    return-void

    .line 1386
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    if-eq p2, v0, :cond_0

    .line 1387
    if-eqz p2, :cond_3

    .line 1388
    iput-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    .line 1389
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 1390
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0906f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0906f7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 1397
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 1399
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->resetDangerousOptions()V

    .line 1400
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1402
    iput-boolean p2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    .line 1403
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0
.end method

.method pokeSystemProperties()V
    .locals 2

    .prologue
    .line 1719
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDontPokeProperties:Z

    if-nez v0, :cond_0

    .line 1721
    new-instance v0, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1723
    :cond_0
    return-void
.end method

.method updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V
    .locals 1
    .param p1, "switchPreference"    # Landroid/preference/SwitchPreference;
    .param p2, "value"    # Z

    .prologue
    .line 552
    invoke-virtual {p1, p2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 553
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 554
    return-void
.end method
