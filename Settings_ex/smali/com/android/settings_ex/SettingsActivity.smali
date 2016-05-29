.class public Lcom/android/settings_ex/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/android/settings_ex/ButtonBarHandler;


# static fields
.field public static final BACK_STACK_PREFS:Ljava/lang/String; = ":settings:prefs"

.field private static final EMPTY_QUERY:Ljava/lang/String; = ""

.field private static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field public static final EXTRA_FRAGMENT_ARG_KEY:Ljava/lang/String; = ":settings:fragment_args_key"

.field protected static final EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field protected static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field protected static final EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"

.field public static final EXTRA_SHOW_FRAGMENT:Ljava/lang/String; = ":settings:show_fragment"

.field public static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":settings:show_fragment_args"

.field public static final EXTRA_SHOW_FRAGMENT_AS_SHORTCUT:Ljava/lang/String; = ":settings:show_fragment_as_shortcut"

.field public static final EXTRA_SHOW_FRAGMENT_AS_SUBSETTING:Ljava/lang/String; = ":settings:show_fragment_as_subsetting"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE:Ljava/lang/String; = ":settings:show_fragment_title"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE_RESID:Ljava/lang/String; = ":settings:show_fragment_title_resid"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE_RES_PACKAGE_NAME:Ljava/lang/String; = ":settings:show_fragment_title_res_package_name"

.field private static final EXTRA_UI_OPTIONS:Ljava/lang/String; = "settings:ui_options"

.field private static final LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "Settings"

.field private static final META_DATA_KEY_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings_ex.FRAGMENT_CLASS"

.field private static final MSG_BUILD_CATEGORIES:I = 0x1

.field private static final MSG_DATA_FORCE_REFRESH:Ljava/lang/String; = "msg_data_force_refresh"

.field private static final SAVE_KEY_CATEGORIES:Ljava/lang/String; = ":settings:categories"

.field private static final SAVE_KEY_HOME_ACTIVITIES_COUNT:Ljava/lang/String; = ":settings:home_activities_count"

.field private static final SAVE_KEY_SEARCH_MENU_EXPANDED:Ljava/lang/String; = ":settings:search_menu_expanded"

.field private static final SAVE_KEY_SEARCH_QUERY:Ljava/lang/String; = ":settings:search_query"

.field private static final SAVE_KEY_SHOW_HOME_AS_UP:Ljava/lang/String; = ":settings:show_home_as_up"

.field private static final SAVE_KEY_SHOW_SEARCH:Ljava/lang/String; = ":settings:show_search"

.field private static sShowNoHomeNotice:Z


# instance fields
.field private SETTINGS_FOR_RESTRICTED:[I

.field private bIsThirdCall:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContent:Landroid/view/ViewGroup;

.field private mCurrentFragment:Landroid/app/Fragment;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mDisplayHomeAsUpEnabled:Z

.field private mDisplaySearch:Z

.field private final mDynamicIndexableContentMonitor:Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

.field private mFragmentClass:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHomeActivitiesCount:I

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I

.field private mIsShortcut:Z

.field private mIsShowingDashboard:Z

.field private mIsShowingHotspot:Z

.field private mIsShowingVPN:Z

.field private mNeedToRevertToInitialFragment:Z

.field private mNextButton:Landroid/widget/Button;

.field private mResultIntentData:Landroid/content/Intent;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchMenuItemExpanded:Z

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 223
    sput-boolean v3, Lcom/android/settings_ex/SettingsActivity;->sShowNoHomeNotice:Z

    .line 246
    const/16 v0, 0x45

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-class v1, Lcom/android/settings_ex/mobile/MobileNetworkSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-class v2, Lcom/android/settings_ex/vpn2/VpnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/settings_ex/WallpaperTypeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/android/settings_ex/FingerprintAndPWD;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/android/settings_ex/timer/AccessibilityTimerShutdownSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/android/settings_ex/sensor/MotionSensorSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/android/settings_ex/cloud/CloudServiceSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/android/settings_ex/TetherSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/android/settings_ex/vpn2/VpnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lcom/android/settings_ex/DateTimeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lcom/android/settings_ex/LocalePicker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lcom/android/settings_ex/voice/VoiceInputSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Lcom/android/settings_ex/inputmethod/UserDictionaryList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Lcom/android/settings_ex/UserDictionarySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-class v2, Lcom/android/settings_ex/HomeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-class v2, Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-class v2, Lcom/android/settings_ex/DeviceInfoSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-class v2, Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-class v2, Lcom/android/settings_ex/applications/ProcessStatsUi;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-class v2, Lcom/android/settings_ex/notification/NotificationStation;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-class v2, Lcom/android/settings_ex/location/LocationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-class v2, Lcom/android/settings_ex/SecuritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-class v2, Lcom/android/settings_ex/UsageAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-class v2, Lcom/android/settings_ex/PrivacySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-class v2, Lcom/android/settings_ex/DeviceAdminSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-class v2, Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-class v2, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-class v2, Lcom/android/settings_ex/accessibility/ToggleDaltonizerPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-class v2, Lcom/android/settings_ex/tts/TextToSpeechSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-class v2, Lcom/android/settings_ex/deviceinfo/Memory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-class v2, Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-class v2, Lcom/android/settings_ex/deviceinfo/UsbSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-class v2, Lcom/android/settings_ex/nfc/AndroidBeam;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-class v2, Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-class v2, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-class v2, Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-class v2, Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-class v2, Lcom/android/settings_ex/CryptKeeperSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-class v2, Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-class v2, Lcom/android/settings_ex/DreamSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-class v2, Lcom/android/settings_ex/users/UserSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-class v2, Lcom/android/settings_ex/notification/NotificationAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-class v2, Lcom/android/settings_ex/notification/ConditionProviderSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-class v2, Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-class v2, Lcom/android/settings_ex/print/PrintJobSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-class v2, Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-class v2, Lcom/android/settings_ex/nfc/PaymentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-class v2, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-class v2, Lcom/android/settings_ex/notification/ZenModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-class v2, Lcom/android/settings_ex/notification/NotificationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-class v2, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-class v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-class v2, Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-class v2, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-class v2, Lcom/android/settings_ex/notification/NotificationAppList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-class v2, Lcom/android/settings_ex/notification/AppNotificationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-class v2, Lcom/android/settings_ex/notification/OtherSoundSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-class v2, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-class v2, Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    .line 317
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings_ex/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 232
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    .line 322
    iput-boolean v2, p0, Lcom/android/settings_ex/SettingsActivity;->mBatteryPresent:Z

    .line 323
    new-instance v0, Lcom/android/settings_ex/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SettingsActivity$1;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 338
    new-instance v0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

    invoke-direct {v0}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

    .line 358
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    .line 367
    new-instance v0, Lcom/android/settings_ex/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SettingsActivity$2;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mHandler:Landroid/os/Handler;

    .line 383
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 384
    iput v2, p0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    .line 503
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->bIsThirdCall:Z

    return-void

    .line 232
    nop

    :array_0
    .array-data 4
        0x7f0f0285
        0x7f0f0288
        0x7f0f0298
        0x7f0f02a6
        0x7f0f027f
        0x7f0f0280
        0x7f0f0281
        0x7f0f0282
        0x7f0f0289
        0x7f0f028a
        0x7f0f0290
        0x7f0f028e
        0x7f0f0297
        0x7f0f0299
        0x7f0f02a0
        0x7f0f029c
        0x7f0f029f
        0x7f0f028f
        0x7f0f02a4
        0x7f0f006d
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings_ex/SettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/SettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/settings_ex/SettingsActivity;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/SettingsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->invalidateCategories(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/SettingsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/SettingsActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->buildDashboardCategories(Ljava/util/List;)V

    return-void
.end method

.method private buildDashboardCategories(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1216
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1220
    const-string v0, "oneplus"

    const-string v1, "oneplus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1222
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.finger.print.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1225
    const v0, 0x7f060037

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/SettingsActivity;->loadCategoriesFromResource(ILjava/util/List;)V

    .line 1240
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->updateTilesList(Ljava/util/List;)V

    .line 1241
    return-void

    .line 1230
    :cond_0
    const v0, 0x7f060047

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/SettingsActivity;->loadCategoriesFromResource(ILjava/util/List;)V

    goto :goto_0

    .line 1236
    :cond_1
    const v0, 0x7f060017

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/SettingsActivity;->loadCategoriesFromResource(ILjava/util/List;)V

    goto :goto_0
.end method

.method private checkLanguageTpye()I
    .locals 5

    .prologue
    const v3, 0x7f020061

    .line 1431
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 1434
    .local v2, "localplace":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1435
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1436
    .local v0, "language":Ljava/lang/String;
    const-string v4, "zh"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "CN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1443
    :cond_0
    :goto_0
    return v3

    .line 1438
    :cond_1
    const-string v4, "zh"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "TW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1440
    :cond_2
    const-string v4, "en"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "US"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1441
    const v3, 0x7f020067

    goto :goto_0
.end method

.method private getHomeActivitiesCount()I
    .locals 2

    .prologue
    .line 802
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 803
    .local v0, "homeApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 804
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method private getMetaData()V
    .locals 5

    .prologue
    .line 1597
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1599
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 1608
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 1601
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings_ex.FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mFragmentClass:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1603
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 1605
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get Metadata for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1041
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1042
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 1057
    :cond_0
    :goto_0
    return-object v0

    .line 1044
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1045
    .local v0, "intentClass":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1046
    const/4 v0, 0x0

    goto :goto_0

    .line 1048
    :cond_2
    const-string v1, "com.android.settings_ex.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings_ex.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings_ex.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1053
    :cond_3
    const-class v1, Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private invalidateCategories(Z)V
    .locals 3
    .param p1, "forceRefresh"    # Z

    .prologue
    const/4 v2, 0x1

    .line 426
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 427
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 428
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 429
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg_data_force_refresh"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 431
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private static isLikeShortCutIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 493
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 501
    :cond_0
    :goto_0
    return v2

    .line 497
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Lcom/android/settings_ex/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 498
    sget-object v3, Lcom/android/settings_ex/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 499
    const/4 v2, 0x1

    goto :goto_0

    .line 497
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isSIMExist()Z
    .locals 2

    .prologue
    .line 795
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 797
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isShortCutIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 487
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 488
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string v1, "com.android.settings_ex.SHORTCUT"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isShowingOnceMenu()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x1e

    .line 719
    const-wide/16 v0, 0x0

    .line 720
    .local v0, "day":J
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd"

    invoke-direct {v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 722
    .local v3, "formats":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 723
    .local v6, "todayDate":Ljava/util/Date;
    const/4 v5, 0x0

    .line 725
    .local v5, "saveDate":Ljava/util/Date;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "hotspot_start_init_date"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 728
    .local v4, "hotdate":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "vpn_start_init_date"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 734
    .local v7, "vpndate":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 736
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x5265c00

    div-long v0, v8, v10

    .line 739
    cmp-long v8, v0, v12

    if-gez v8, :cond_0

    .line 740
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingHotspot:Z

    .line 745
    :goto_0
    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 747
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x5265c00

    div-long v0, v8, v10

    .line 750
    cmp-long v8, v0, v12

    if-gez v8, :cond_1

    .line 751
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingVPN:Z

    .line 761
    :goto_1
    return-void

    .line 742
    :cond_0
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingHotspot:Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 756
    :catch_0
    move-exception v2

    .line 758
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 753
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_1
    const/4 v8, 0x0

    :try_start_1
    iput-boolean v8, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingVPN:Z
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private loadCategoriesFromResource(ILjava/util/List;)V
    .locals 22
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1255
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    const/4 v13, 0x0

    .line 1257
    .local v13, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    .line 1258
    invoke-static {v13}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1262
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v17

    .local v17, "type":I
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 1266
    :cond_1
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1267
    .local v11, "nodeName":Ljava/lang/String;
    const-string v18, "dashboard-categories"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 1268
    new-instance v18, Ljava/lang/RuntimeException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "XML document must start with <preference-categories> tag; found"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1414
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v11    # "nodeName":Ljava/lang/String;
    .end local v17    # "type":I
    :catch_0
    move-exception v5

    .line 1415
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v18, Ljava/lang/RuntimeException;

    const-string v19, "Error parsing categories"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1419
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v18

    if-eqz v13, :cond_2

    .line 1420
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v18

    .line 1274
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v11    # "nodeName":Ljava/lang/String;
    .restart local v17    # "type":I
    :cond_3
    const/4 v4, 0x0

    .line 1276
    .local v4, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    .line 1278
    .local v12, "outerDepth":I
    :cond_4
    :goto_0
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1a

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v12, :cond_1a

    .line 1279
    :cond_5
    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 1283
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1284
    const-string v18, "dashboard-category"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 1285
    new-instance v3, Lcom/android/settings_ex/dashboard/DashboardCategory;

    invoke-direct {v3}, Lcom/android/settings_ex/dashboard/DashboardCategory;-><init>()V

    .line 1287
    .local v3, "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    sget-object v18, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/SettingsActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 1289
    .local v14, "sa":Landroid/content/res/TypedArray;
    const/16 v18, 0x1

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v3, Lcom/android/settings_ex/dashboard/DashboardCategory;->id:J

    .line 1294
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v16

    .line 1296
    .local v16, "tv":Landroid/util/TypedValue;
    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 1297
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 1298
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v3, Lcom/android/settings_ex/dashboard/DashboardCategory;->titleRes:I

    .line 1303
    :cond_6
    :goto_1
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1305
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 1307
    .local v6, "innerDepth":I
    :cond_7
    :goto_2
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v6, :cond_18

    .line 1309
    :cond_8
    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 1314
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1315
    .local v8, "innerNodeName":Ljava/lang/String;
    const-string v18, "dashboard-tile"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 1316
    new-instance v15, Lcom/android/settings_ex/dashboard/DashboardTile;

    invoke-direct {v15}, Lcom/android/settings_ex/dashboard/DashboardTile;-><init>()V

    .line 1318
    .local v15, "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    sget-object v18, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/SettingsActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 1321
    const/16 v18, 0x1

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v15, Lcom/android/settings_ex/dashboard/DashboardTile;->id:J

    .line 1325
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v16

    .line 1326
    if-eqz v16, :cond_9

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 1327
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 1328
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v15, Lcom/android/settings_ex/dashboard/DashboardTile;->titleRes:I

    .line 1333
    :cond_9
    :goto_3
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v16

    .line 1334
    if-eqz v16, :cond_a

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 1335
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v18, v0

    if-eqz v18, :cond_11

    .line 1336
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v15, Lcom/android/settings_ex/dashboard/DashboardTile;->summaryRes:I

    .line 1341
    :cond_a
    :goto_4
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move/from16 v0, v18

    iput v0, v15, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    .line 1345
    iget v0, v15, Lcom/android/settings_ex/dashboard/DashboardTile;->titleRes:I

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 1347
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    iget v0, v15, Lcom/android/settings_ex/dashboard/DashboardTile;->titleRes:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1349
    .local v10, "listtile":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f090681

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1353
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->checkLanguageTpye()I

    move-result v18

    move/from16 v0, v18

    iput v0, v15, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    .line 1359
    .end local v10    # "listtile":Ljava/lang/String;
    :cond_b
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/android/settings_ex/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    .line 1361
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1363
    if-nez v4, :cond_c

    .line 1364
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "curBundle":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1367
    .restart local v4    # "curBundle":Landroid/os/Bundle;
    :cond_c
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 1369
    .local v7, "innerDepth2":I
    :cond_d
    :goto_5
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_14

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v7, :cond_14

    .line 1371
    :cond_e
    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    .line 1376
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1377
    .local v9, "innerNodeName2":Ljava/lang/String;
    const-string v18, "extra"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 1378
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "extra"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1380
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 1416
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    .end local v4    # "curBundle":Landroid/os/Bundle;
    .end local v6    # "innerDepth":I
    .end local v7    # "innerDepth2":I
    .end local v8    # "innerNodeName":Ljava/lang/String;
    .end local v9    # "innerNodeName2":Ljava/lang/String;
    .end local v11    # "nodeName":Ljava/lang/String;
    .end local v12    # "outerDepth":I
    .end local v14    # "sa":Landroid/content/res/TypedArray;
    .end local v15    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    .end local v16    # "tv":Landroid/util/TypedValue;
    .end local v17    # "type":I
    :catch_1
    move-exception v5

    .line 1417
    .local v5, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v18, Ljava/lang/RuntimeException;

    const-string v19, "Error parsing categories"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1300
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v3    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    .restart local v4    # "curBundle":Landroid/os/Bundle;
    .restart local v11    # "nodeName":Ljava/lang/String;
    .restart local v12    # "outerDepth":I
    .restart local v14    # "sa":Landroid/content/res/TypedArray;
    .restart local v16    # "tv":Landroid/util/TypedValue;
    .restart local v17    # "type":I
    :cond_f
    :try_start_4
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v3, Lcom/android/settings_ex/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 1330
    .restart local v6    # "innerDepth":I
    .restart local v8    # "innerNodeName":Ljava/lang/String;
    .restart local v15    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    :cond_10
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/android/settings_ex/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 1338
    :cond_11
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/android/settings_ex/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 1382
    .restart local v7    # "innerDepth2":I
    .restart local v9    # "innerNodeName2":Ljava/lang/String;
    :cond_12
    const-string v18, "intent"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 1383
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v13, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_5

    .line 1387
    :cond_13
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 1391
    .end local v9    # "innerNodeName2":Ljava/lang/String;
    :cond_14
    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v18

    if-lez v18, :cond_15

    .line 1392
    iput-object v4, v15, Lcom/android/settings_ex/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 1393
    const/4 v4, 0x0

    .line 1398
    :cond_15
    iget-wide v0, v15, Lcom/android/settings_ex/dashboard/DashboardTile;->id:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x7f0f0282

    cmp-long v18, v18, v20

    if-nez v18, :cond_16

    invoke-static/range {p0 .. p0}, Lcom/android/settings_ex/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1400
    :cond_16
    invoke-virtual {v3, v15}, Lcom/android/settings_ex/dashboard/DashboardCategory;->addTile(Lcom/android/settings_ex/dashboard/DashboardTile;)V

    goto/16 :goto_2

    .line 1404
    .end local v7    # "innerDepth2":I
    .end local v15    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    :cond_17
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1408
    .end local v8    # "innerNodeName":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1410
    .end local v3    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    .end local v6    # "innerDepth":I
    .end local v14    # "sa":Landroid/content/res/TypedArray;
    .end local v16    # "tv":Landroid/util/TypedValue;
    :cond_19
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1419
    :cond_1a
    if-eqz v13, :cond_1b

    .line 1420
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1422
    :cond_1b
    return-void
.end method

.method public static requestHomeNotice()V
    .locals 1

    .prologue
    .line 1626
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/SettingsActivity;->sShowNoHomeNotice:Z

    .line 1627
    return-void
.end method

.method private revertToInitialFragment()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1690
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1691
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .line 1692
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 1693
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":settings:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 1696
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1697
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1699
    :cond_0
    return-void
.end method

.method private setTitleFromBackStack()I
    .locals 4

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 850
    .local v1, "count":I
    if-nez v1, :cond_1

    .line 851
    iget v2, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    if-lez v2, :cond_0

    .line 852
    iget v2, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsActivity;->setTitle(I)V

    .line 856
    :goto_0
    const/4 v1, 0x0

    .line 863
    .end local v1    # "count":I
    :goto_1
    return v1

    .line 854
    .restart local v1    # "count":I
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 859
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 861
    .local v0, "bse":Landroid/app/FragmentManager$BackStackEntry;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V

    goto :goto_1
.end method

.method private setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V
    .locals 2
    .param p1, "bse"    # Landroid/app/FragmentManager$BackStackEntry;

    .prologue
    .line 868
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v1

    .line 869
    .local v1, "titleRes":I
    if-lez v1, :cond_1

    .line 870
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 874
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    .line 875
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 877
    :cond_0
    return-void

    .line 872
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 808
    const-string v5, ":settings:show_fragment_title_resid"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 810
    .local v3, "initialTitleResId":I
    if-lez v3, :cond_1

    .line 811
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 812
    iput v3, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    .line 814
    const-string v5, ":settings:show_fragment_title_res_package_name"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 816
    .local v4, "initialTitleResPackageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 818
    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/settings_ex/SettingsActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 821
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 823
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 824
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 826
    .restart local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 827
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find package"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 831
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget v5, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/SettingsActivity;->setTitle(I)V

    goto :goto_0

    .line 834
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :cond_1
    iput v6, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    .line 835
    const-string v5, ":settings:show_fragment_title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 837
    .local v2, "initialTitle":Ljava/lang/String;
    if-eqz v2, :cond_2

    .end local v2    # "initialTitle":Ljava/lang/String;
    :goto_1
    iput-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 838
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 837
    .restart local v2    # "initialTitle":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1
.end method

.method private switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "validate"    # Z
    .param p4, "addToBackStack"    # Z
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "withTransition"    # Z

    .prologue
    .line 1183
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1184
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid fragment for this activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1188
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1189
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1191
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const v2, 0x7f0f0213

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1192
    if-eqz p7, :cond_1

    .line 1193
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 1195
    :cond_1
    if-eqz p4, :cond_2

    .line 1196
    const-string v2, ":settings:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1198
    :cond_2
    if-lez p5, :cond_4

    .line 1199
    invoke-virtual {v1, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1203
    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1204
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1205
    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    .line 1206
    return-object v0

    .line 1200
    :cond_4
    if-eqz p6, :cond_3

    .line 1201
    invoke-virtual {v1, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private switchToSearchResultsFragmentIfNeeded()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1669
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_0

    .line 1683
    :goto_0
    return-void

    .line 1672
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0f0213

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    .line 1674
    .local v8, "current":Landroid/app/Fragment;
    if-eqz v8, :cond_1

    instance-of v0, v8, Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_1

    .line 1675
    check-cast v8, Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .end local v8    # "current":Landroid/app/Fragment;
    iput-object v8, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .line 1681
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 1682
    iput-boolean v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    goto :goto_0

    .line 1677
    .restart local v8    # "current":Landroid/app/Fragment;
    :cond_1
    const-class v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const v5, 0x7f090a7c

    move-object v0, p0

    move-object v6, v2

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    goto :goto_1
.end method

.method private updateHomeSettingTiles(Lcom/android/settings_ex/dashboard/DashboardTile;)Z
    .locals 6
    .param p1, "tile"    # Lcom/android/settings_ex/dashboard/DashboardTile;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1555
    const-string v4, "home_prefs"

    invoke-virtual {p0, v4, v3}, Lcom/android/settings_ex/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1557
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v4, "do_show"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1592
    :goto_0
    return v2

    .line 1562
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->getHomeActivitiesCount()I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    .line 1563
    iget v4, p0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 1569
    sget-boolean v4, Lcom/android/settings_ex/SettingsActivity;->sShowNoHomeNotice:Z

    if-eqz v4, :cond_1

    .line 1570
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/settings_ex/SettingsActivity;->sShowNoHomeNotice:Z

    .line 1571
    invoke-static {p0}, Lcom/android/settings_ex/dashboard/NoHomeDialogFragment;->show(Landroid/app/Activity;)V

    :cond_1
    move v2, v3

    .line 1573
    goto :goto_0

    .line 1580
    :cond_2
    iget-object v3, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    if-nez v3, :cond_3

    .line 1581
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 1583
    :cond_3
    iget-object v3, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    const-string v4, "show"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1591
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "do_show"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1586
    :catch_0
    move-exception v0

    .line 1588
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Settings"

    const-string v4, "Problem looking up home activity!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateTilesList(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1460
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    const-string v8, "user"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 1462
    .local v7, "um":Landroid/os/UserManager;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 1471
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_c

    .line 1473
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/dashboard/DashboardCategory;

    .line 1476
    .local v0, "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    iget-wide v8, v0, Lcom/android/settings_ex/dashboard/DashboardCategory;->id:J

    long-to-int v2, v8

    .line 1477
    .local v2, "id":I
    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTilesCount()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .line 1478
    .local v3, "n":I
    :goto_1
    if-ltz v3, :cond_b

    .line 1480
    invoke-virtual {v0, v3}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings_ex/dashboard/DashboardTile;

    move-result-object v6

    .line 1481
    .local v6, "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    const/4 v4, 0x0

    .line 1482
    .local v4, "removeTile":Z
    iget-wide v8, v6, Lcom/android/settings_ex/dashboard/DashboardTile;->id:J

    long-to-int v2, v8

    .line 1483
    const v8, 0x7f0f0284

    if-eq v2, v8, :cond_0

    const v8, 0x7f0f0295

    if-ne v2, v8, :cond_4

    .line 1485
    :cond_0
    invoke-static {p0, v6}, Lcom/android/settings_ex/Utils;->updateTileToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Lcom/android/settings_ex/dashboard/DashboardTile;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1488
    const/4 v4, 0x1

    .line 1535
    :cond_1
    :goto_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings_ex/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v8, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1537
    const/4 v4, 0x1

    .line 1540
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTilesCount()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 1541
    invoke-virtual {v0, v3}, Lcom/android/settings_ex/dashboard/DashboardCategory;->removeTile(I)V

    .line 1543
    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 1544
    goto :goto_1

    .line 1490
    :cond_4
    const v8, 0x7f0f0280

    if-ne v2, v8, :cond_5

    .line 1492
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "android.hardware.wifi"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1494
    const/4 v4, 0x1

    goto :goto_2

    .line 1496
    :cond_5
    const v8, 0x7f0f0281

    if-ne v2, v8, :cond_6

    .line 1499
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1501
    const/4 v4, 0x1

    goto :goto_2

    .line 1503
    :cond_6
    const v8, 0x7f0f0288

    if-ne v2, v8, :cond_7

    .line 1505
    iget-boolean v8, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingVPN:Z

    if-nez v8, :cond_1

    .line 1506
    const/4 v4, 0x1

    goto :goto_2

    .line 1509
    :cond_7
    const v8, 0x7f0f0286

    if-ne v2, v8, :cond_8

    .line 1511
    iget-boolean v8, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingHotspot:Z

    if-nez v8, :cond_1

    .line 1512
    const/4 v4, 0x1

    goto :goto_2

    .line 1515
    :cond_8
    const v8, 0x7f0f0287

    if-ne v2, v8, :cond_9

    .line 1517
    const/4 v4, 0x1

    goto :goto_2

    .line 1519
    :cond_9
    const v8, 0x7f0f029b

    if-ne v2, v8, :cond_a

    .line 1528
    const/4 v4, 0x1

    goto :goto_2

    .line 1529
    :cond_a
    const v8, 0x7f0f02a6

    if-ne v2, v8, :cond_1

    .line 1530
    const-string v8, "com.oneplus.noviceteaching"

    invoke-static {p0, v8}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1531
    const/4 v4, 0x1

    goto :goto_2

    .line 1471
    .end local v4    # "removeTile":Z
    .end local v6    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1551
    .end local v0    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    .end local v2    # "id":I
    .end local v3    # "n":I
    :cond_c
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 766
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 790
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 769
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 770
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-virtual {v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getShowStatus()Z

    move-result v0

    .line 771
    .local v0, "status":Z
    if-nez v0, :cond_0

    move v1, v2

    .line 772
    goto :goto_0

    .line 774
    .end local v0    # "status":Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 775
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->getShowStatus()Z

    move-result v0

    .line 776
    .restart local v0    # "status":Z
    if-nez v0, :cond_0

    move v1, v2

    .line 777
    goto :goto_0

    .line 779
    .end local v0    # "status":Z
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/android/settings_ex/deviceinfo/UsbSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/settings_ex/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getShowStatus()Z

    move-result v0

    .line 781
    .restart local v0    # "status":Z
    if-nez v0, :cond_0

    move v1, v2

    .line 782
    goto :goto_0

    .line 766
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 0
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 1148
    invoke-virtual {p0, p2, p3}, Lcom/android/settings_ex/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 1149
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->finish()V

    .line 1150
    return-void
.end method

.method public getDashboardCategories(Z)Ljava/util/List;
    .locals 1
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/SettingsActivity;->buildDashboardCategories(Ljava/util/List;)V

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 1015
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1016
    .local v4, "superIntent":Landroid/content/Intent;
    invoke-direct {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 1020
    .local v3, "startingFragment":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1021
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1022
    .local v2, "modIntent":Landroid/content/Intent;
    const-string v5, ":settings:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1023
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1024
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1025
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0    # "args":Landroid/os/Bundle;
    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 1029
    .end local v1    # "args":Landroid/os/Bundle;
    .restart local v0    # "args":Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1030
    const-string v5, ":settings:show_fragment_args"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1033
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 1027
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v2    # "modIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "args":Landroid/os/Bundle;
    goto :goto_0

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 1033
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getResultIntentData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    return-object v0
.end method

.method public getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 1006
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/settings_ex/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1007
    sget-object v1, Lcom/android/settings_ex/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1008
    const/4 v1, 0x1

    .line 1010
    :goto_1
    return v1

    .line 1006
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1010
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public needToRevertToInitialFragment()V
    .locals 1

    .prologue
    .line 1686
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1687
    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 844
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromBackStack()I

    .line 845
    return-void
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 1647
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 435
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 436
    invoke-static {p0}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/search/Index;->update()V

    .line 437
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 522
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 525
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getMetaData()V

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 528
    .local v19, "intent":Landroid/content/Intent;
    const-string v2, "settings:ui_options"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string v5, "settings:ui_options"

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/Window;->setUiOptions(I)V

    .line 544
    :cond_0
    const-string v2, ":settings:show_fragment"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 547
    .local v3, "initialFragmentName":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings_ex/SettingsActivity;->isShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static/range {v19 .. v19}, Lcom/android/settings_ex/SettingsActivity;->isLikeShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ":settings:show_fragment_as_shortcut"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_1
    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShortcut:Z

    .line 552
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 553
    .local v18, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    .line 555
    .local v17, "className":Ljava/lang/String;
    const-class v2, Lcom/android/settings_ex/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    .line 560
    const-class v2, Lcom/android/settings_ex/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ":settings:show_fragment_as_subsetting"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_2
    const/16 v20, 0x1

    .line 567
    .local v20, "isSubSettings":Z
    :goto_1
    if-eqz v20, :cond_3

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getThemeResId()I

    move-result v22

    .line 571
    .local v22, "themeResId":I
    const v2, 0x7f0a006a

    move/from16 v0, v22

    if-eq v0, v2, :cond_3

    const v2, 0x7f0a006c

    move/from16 v0, v22

    if-eq v0, v2, :cond_3

    .line 573
    const v2, 0x7f0a0061

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->setTheme(I)V

    .line 576
    .end local v22    # "themeResId":I
    :cond_3
    const-string v2, "third_call_finish"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->bIsThirdCall:Z

    .line 578
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_c

    const v2, 0x7f0400ca

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->setContentView(I)V

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 581
    const v2, 0x7f0f0213

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 585
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_4

    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ex/search/Index;->update()V

    .line 589
    :cond_4
    if-eqz p1, :cond_d

    .line 593
    const-string v2, ":settings:search_menu_expanded"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 595
    const-string v2, ":settings:search_query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 597
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 599
    const-string v2, ":settings:categories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 601
    .local v16, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    if-eqz v16, :cond_5

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 604
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromBackStack()I

    .line 607
    :cond_5
    const-string v2, ":settings:show_home_as_up"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 609
    const-string v2, ":settings:show_search"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    .line 610
    const-string v2, ":settings:home_activities_count"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    .line 652
    .end local v16    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_6

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 657
    :cond_6
    const v2, 0x7f0f0214

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/widget/SwitchBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 660
    const-string v2, "extra_prefs_show_button_bar"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 662
    const v2, 0x7f0f01ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 663
    .local v14, "buttonBar":Landroid/view/View;
    if-eqz v14, :cond_9

    .line 664
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/view/View;->setVisibility(I)V

    .line 666
    const v2, 0x7f0f01ad

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 667
    .local v13, "backButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings_ex/SettingsActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings_ex/SettingsActivity$3;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 673
    const v2, 0x7f0f01ae

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    .line 674
    .local v21, "skipButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings_ex/SettingsActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings_ex/SettingsActivity$4;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    const v2, 0x7f0f004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/settings_ex/SettingsActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings_ex/SettingsActivity$5;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    const-string v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 690
    const-string v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 692
    .local v15, "buttonText":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 698
    .end local v15    # "buttonText":Ljava/lang/String;
    :cond_7
    :goto_4
    const-string v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 699
    const-string v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 701
    .restart local v15    # "buttonText":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 702
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 707
    .end local v15    # "buttonText":Ljava/lang/String;
    :cond_8
    :goto_5
    const-string v2, "extra_prefs_show_skip"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 708
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 713
    .end local v13    # "backButton":Landroid/widget/Button;
    .end local v14    # "buttonBar":Landroid/view/View;
    .end local v21    # "skipButton":Landroid/widget/Button;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getHomeActivitiesCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    .line 715
    return-void

    .line 547
    .end local v17    # "className":Ljava/lang/String;
    .end local v18    # "cn":Landroid/content/ComponentName;
    .end local v20    # "isSubSettings":Z
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 560
    .restart local v17    # "className":Ljava/lang/String;
    .restart local v18    # "cn":Landroid/content/ComponentName;
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 578
    .restart local v20    # "isSubSettings":Z
    :cond_c
    const v2, 0x7f0400cb

    goto/16 :goto_2

    .line 617
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v2, :cond_10

    .line 621
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShortcut:Z

    if-eqz v2, :cond_e

    .line 622
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 623
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    .line 634
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 636
    const-string v2, ":settings:show_fragment_args"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 638
    .local v4, "initialArguments":Landroid/os/Bundle;
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings_ex/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_3

    .line 624
    .end local v4    # "initialArguments":Landroid/os/Bundle;
    :cond_e
    if-eqz v20, :cond_f

    .line 628
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 629
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    goto :goto_6

    .line 631
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 632
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    goto :goto_6

    .line 643
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 645
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    .line 646
    const v2, 0x7f090a7b

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    .line 647
    const-class v2, Lcom/android/settings_ex/dashboard/DashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/settings_ex/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_3

    .line 695
    .restart local v13    # "backButton":Landroid/widget/Button;
    .restart local v14    # "buttonBar":Landroid/view/View;
    .restart local v15    # "buttonText":Ljava/lang/String;
    .restart local v21    # "skipButton":Landroid/widget/Button;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 704
    :cond_12
    invoke-virtual {v13, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    if-nez v0, :cond_0

    .line 451
    const/4 v0, 0x0

    .line 483
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 989
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1001
    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1660
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1661
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v0, :cond_0

    .line 1662
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->revertToInitialFragment()V

    .line 1665
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1652
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1653
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1655
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->bIsThirdCall:Z

    if-eqz v0, :cond_1

    .line 509
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->finish()V

    .line 512
    const/4 v0, 0x1

    .line 517
    :goto_0
    return v0

    .line 514
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 517
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 974
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 984
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

    invoke-virtual {v0}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->unregister()V

    .line 985
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 403
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 404
    .local v3, "titleRes":I
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    const v3, 0x7f09046e

    .line 414
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 416
    const/4 v0, 0x1

    return v0

    .line 406
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    const v3, 0x7f09025d

    goto :goto_0

    .line 411
    :cond_2
    const v3, 0x7f09025b

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 1638
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1639
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    if-nez v0, :cond_0

    .line 1640
    const/4 v0, 0x0

    .line 1642
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1631
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1632
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1633
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 915
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 919
    #invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->isShowingOnceMenu()V

    .line 921
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->getHomeActivitiesCount()I

    move-result v0

    .line 922
    .local v0, "newHomeActivityCount":I
    iget v1, p0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    if-eq v0, v1, :cond_0

    .line 923
    iput v0, p0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    .line 924
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/SettingsActivity;->invalidateCategories(Z)V

    .line 955
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->register(Landroid/content/Context;)V

    .line 970
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 881
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 883
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Settings onSaveInstanceState !!!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 885
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 886
    const-string v2, ":settings:categories"

    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 889
    :cond_0
    const-string v2, ":settings:show_home_as_up"

    iget-boolean v3, p0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 890
    const-string v2, ":settings:show_search"

    iget-boolean v3, p0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 892
    iget-boolean v2, p0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    if-eqz v2, :cond_1

    .line 901
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 903
    .local v0, "isExpanded":Z
    :goto_0
    const-string v2, ":settings:search_menu_expanded"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 905
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 907
    .local v1, "query":Ljava/lang/String;
    :goto_1
    const-string v2, ":settings:search_query"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    .end local v0    # "isExpanded":Z
    .end local v1    # "query":Ljava/lang/String;
    :cond_1
    const-string v2, ":settings:home_activities_count"

    iget v3, p0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 911
    return-void

    .line 901
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 905
    .restart local v0    # "isExpanded":Z
    :cond_3
    const-string v1, ""

    goto :goto_1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 441
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 443
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v0, :cond_0

    .line 444
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->revertToInitialFragment()V

    .line 446
    :cond_0
    return-void
.end method

.method public setResultIntentData(Landroid/content/Intent;)V
    .locals 0
    .param p1, "resultIntentData"    # Landroid/content/Intent;

    .prologue
    .line 1706
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    .line 1707
    return-void
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 1621
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1164
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x7f0f0213

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1165
    if-eqz p2, :cond_0

    .line 1166
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1168
    const-string v1, ":settings:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1173
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1174
    return-void

    .line 1170
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 8
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 1088
    const/4 v6, 0x0

    .line 1089
    .local v6, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 1090
    if-eqz p4, :cond_1

    .line 1091
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1097
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-static/range {v0 .. v7}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 1099
    return-void

    .line 1094
    :cond_1
    const-string v6, ""

    goto :goto_0
.end method

.method public startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 1121
    const/4 v4, 0x0

    .line 1122
    .local v4, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 1123
    if-eqz p4, :cond_1

    .line 1124
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1130
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V

    .line 1132
    return-void

    .line 1127
    :cond_1
    const-string v4, ""

    goto :goto_0
.end method
