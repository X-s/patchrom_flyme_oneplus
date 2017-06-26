.class public Lcom/android/settings_ex/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Lcom/android/settings_ex/ButtonBarHandler;
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;


# static fields
.field public static final BACK_STACK_PREFS:Ljava/lang/String; = ":settings:prefs"

.field private static final EMPTY_QUERY:Ljava/lang/String; = ""

.field private static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field private static final EXTRA_CATEGORY_KEY:Ljava/lang/String; = "com.android.settings.category"

.field public static final EXTRA_FRAGMENT_ARG_KEY:Ljava/lang/String; = ":settings:fragment_args_key"

.field protected static final EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field protected static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field protected static final EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"

.field private static final EXTRA_SETTINGS_ACTION:Ljava/lang/String; = "com.android.settings.action.EXTRA_SETTINGS"

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

.field private static final META_DATA_KEY_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings.FRAGMENT_CLASS"

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

.field private isDataUsageSummaryFragment:Z

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

.field private mIsThirdCall:Z

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

    .line 264
    sput-boolean v3, Lcom/android/settings_ex/SettingsActivity;->sShowNoHomeNotice:Z

    .line 292
    const/16 v0, 0x54

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-class v1, Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-class v2, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/android/settings_ex/sim/SimSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/android/settings_ex/TetherSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/android/settings_ex/vpn2/VpnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/android/settings_ex/DateTimeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/android/settings_ex/LocalePicker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/android/settings_ex/inputmethod/UserDictionaryList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/android/settings_ex/UserDictionarySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lcom/android/settings_ex/HomeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lcom/android/settings_ex/DeviceInfoSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lcom/android/settings_ex/applications/ManageAssist;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lcom/android/settings_ex/applications/ProcessStatsUi;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lcom/android/settings_ex/notification/NotificationStation;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Lcom/android/settings_ex/location/LocationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Lcom/android/settings_ex/SecuritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-class v2, Lcom/android/settings_ex/applications/UsageAccessDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-class v2, Lcom/android/settings_ex/PrivacySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-class v2, Lcom/android/settings_ex/DeviceAdminSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-class v2, Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-class v2, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-class v2, Lcom/android/settings_ex/accessibility/ToggleDaltonizerPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-class v2, Lcom/android/settings_ex/tts/TextToSpeechSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-class v2, Lcom/android/settings_ex/deviceinfo/StorageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-class v2, Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-class v2, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-class v2, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-class v2, Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-class v2, Lcom/android/settings_ex/nfc/AndroidBeam;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-class v2, Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-class v2, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-class v2, Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-class v2, Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-class v2, Lcom/android/settings_ex/CryptKeeperSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-class v2, Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-class v2, Lcom/android/settings_ex/DreamSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-class v2, Lcom/android/settings_ex/users/UserSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-class v2, Lcom/android/settings_ex/notification/NotificationAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-class v2, Lcom/android/settings_ex/notification/ZenAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-class v2, Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-class v2, Lcom/android/settings_ex/print/PrintJobSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-class v2, Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-class v2, Lcom/android/settings_ex/nfc/PaymentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-class v2, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-class v2, Lcom/android/settings_ex/notification/ZenModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-class v2, Lcom/android/settings_ex/notification/NotificationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-class v2, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-class v2, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-class v2, Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-class v2, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-class v2, Lcom/android/settings_ex/notification/AppNotificationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-class v2, Lcom/android/settings_ex/notification/OtherSoundSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-class v2, Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-class v2, Lcom/android/settings_ex/WifiCallingSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-class v2, Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-class v2, Lcom/android/settings_ex/notification/ZenModeAutomationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-class v2, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-class v2, Lcom/android/settings_ex/notification/ZenModeEventRuleSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-class v2, Lcom/android/settings_ex/notification/ZenModeExternalRuleSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-class v2, Lcom/android/settings_ex/applications/ProcessStatsUi;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-class v2, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-class v2, Lcom/android/settings_ex/applications/ProcessStatsSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-class v2, Lcom/android/settings_ex/applications/DrawOverlayDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-class v2, Lcom/android/settings_ex/applications/WriteSettingsDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-class v2, Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-class v2, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-class v2, Lcom/oneplus/settings/security/OPSecuritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-class v2, Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-class v2, Lcom/oneplus/settings/notification/OPZenModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-class v2, Lcom/oneplus/settings/notification/OPSpecIncallSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-class v2, Lcom/oneplus/settings/notification/OPThreeKeyAndZenmode;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-class v2, Lcom/oneplus/settings/notification/OPSilentMode;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-class v2, Lcom/oneplus/settings/notification/OPRingPattern;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-class v2, Lcom/oneplus/settings/OPDisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-class v2, Lcom/oneplus/settings/OPWirelessSettingsForThirdPart;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-class v2, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    .line 381
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

    .line 150
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 270
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mIsThirdCall:Z

    .line 275
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->isDataUsageSummaryFragment:Z

    .line 278
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    .line 386
    iput-boolean v2, p0, Lcom/android/settings_ex/SettingsActivity;->mBatteryPresent:Z

    .line 387
    new-instance v0, Lcom/android/settings_ex/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SettingsActivity$1;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 402
    new-instance v0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

    invoke-direct {v0}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

    .line 419
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    .line 428
    new-instance v0, Lcom/android/settings_ex/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SettingsActivity$2;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mHandler:Landroid/os/Handler;

    .line 444
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 445
    iput v2, p0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    return-void

    .line 278
    nop

    :array_0
    .array-data 4
        0x7f1202d7
        0x7f1202d8
        0x7f1202d9
        0x7f1202db
        0x7f1202da
        0x7f1202dd
        0x7f1202de
        0x7f1202e1
        0x7f1202e0
        0x7f1202e3
        0x7f1202e2
        0x7f1202e4
        0x7f1202e9
        0x7f1202ea
        0x7f1202eb
        0x7f1202ed
        0x7f1202e6
        0x7f1202ec
        0x7f1202ef
        0x7f1202f0
        0x7f1202f4
        0x7f1202f1
        0x7f1202f2
        0x7f1202e7
        0x7f1202df
        0x7f1202fe
        0x7f120063
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings_ex/SettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/SettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/settings_ex/SettingsActivity;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/SettingsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->invalidateCategories(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/SettingsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/SettingsActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->buildDashboardCategories(Ljava/util/List;)V

    return-void
.end method

.method private addExternalTiles(Ljava/util/List;)V
    .locals 5
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
    .line 1544
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1545
    .local v0, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settings_ex/dashboard/DashboardTile;>;"
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 1546
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 1547
    .local v2, "user":Landroid/os/UserHandle;
    invoke-direct {p0, p1, v2, v0}, Lcom/android/settings_ex/SettingsActivity;->addExternalTiles(Ljava/util/List;Landroid/os/UserHandle;Ljava/util/Map;)V

    goto :goto_0

    .line 1549
    .end local v2    # "user":Landroid/os/UserHandle;
    :cond_0
    return-void
.end method

.method private addExternalTiles(Ljava/util/List;Landroid/os/UserHandle;Ljava/util/Map;)V
    .locals 15
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/dashboard/DashboardCategory;",
            ">;",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settings_ex/dashboard/DashboardTile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1553
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    .local p3, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settings_ex/dashboard/DashboardTile;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1554
    .local v8, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string v12, "com.android.settings.action.EXTRA_SETTINGS"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1555
    .local v5, "intent":Landroid/content/Intent;
    const/16 v12, 0x80

    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    invoke-virtual {v8, v5, v12, v13}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    .line 1557
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 1558
    .local v9, "resolved":Landroid/content/pm/ResolveInfo;
    iget-boolean v12, v9, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v12, :cond_0

    .line 1562
    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1563
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1564
    .local v7, "metaData":Landroid/os/Bundle;
    if-eqz v7, :cond_1

    const-string v12, "com.android.settings.category"

    invoke-virtual {v7, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1565
    :cond_1
    const-string v13, "Settings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Found "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " for action "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "com.android.settings.action.EXTRA_SETTINGS"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " missing metadata "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-nez v7, :cond_2

    const-string v12, ""

    :goto_1
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v12, "com.android.settings.category"

    goto :goto_1

    .line 1571
    :cond_3
    const-string v12, "com.android.settings.category"

    invoke-virtual {v7, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1572
    .local v3, "categoryKey":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3}, Lcom/android/settings_ex/SettingsActivity;->getCategory(Ljava/util/List;Ljava/lang/String;)Lcom/android/settings_ex/dashboard/DashboardCategory;

    move-result-object v2

    .line 1573
    .local v2, "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    if-nez v2, :cond_4

    .line 1574
    const-string v12, "Settings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Activity "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " has unknown "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "category key "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1578
    :cond_4
    new-instance v6, Landroid/util/Pair;

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1580
    .local v6, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings_ex/dashboard/DashboardTile;

    .line 1581
    .local v11, "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    if-nez v11, :cond_5

    .line 1582
    new-instance v11, Lcom/android/settings_ex/dashboard/DashboardTile;

    .end local v11    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    invoke-direct {v11}, Lcom/android/settings_ex/dashboard/DashboardTile;-><init>()V

    .line 1583
    .restart local v11    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    iget-object v13, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v14, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    iput-object v12, v11, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    .line 1585
    invoke-static {p0, v11}, Lcom/android/settings_ex/Utils;->updateTileToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Lcom/android/settings_ex/dashboard/DashboardTile;)Z

    .line 1588
    iget v12, v2, Lcom/android/settings_ex/dashboard/DashboardCategory;->externalIndex:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_6

    .line 1592
    invoke-virtual {v2, v11}, Lcom/android/settings_ex/dashboard/DashboardCategory;->addTile(Lcom/android/settings_ex/dashboard/DashboardTile;)V

    .line 1596
    :goto_2
    move-object/from16 v0, p3

    invoke-interface {v0, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    :cond_5
    iget-object v12, v11, Lcom/android/settings_ex/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1594
    :cond_6
    iget v12, v2, Lcom/android/settings_ex/dashboard/DashboardCategory;->externalIndex:I

    invoke-virtual {v2, v12, v11}, Lcom/android/settings_ex/dashboard/DashboardCategory;->addTile(ILcom/android/settings_ex/dashboard/DashboardTile;)V

    goto :goto_2

    .line 1600
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    .end local v3    # "categoryKey":Ljava/lang/String;
    .end local v6    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "metaData":Landroid/os/Bundle;
    .end local v9    # "resolved":Landroid/content/pm/ResolveInfo;
    .end local v11    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    :cond_7
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
    .line 1204
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1214
    const-string v0, "oneplus"

    const-string v1, "oneplus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1216
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.finger.print.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    const v0, 0x7f080045

    invoke-static {v0, p1, p0}, Lcom/android/settings_ex/SettingsActivity;->loadCategoriesFromResource(ILjava/util/List;Landroid/content/Context;)V

    .line 1236
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->updateTilesList(Ljava/util/List;)V

    .line 1237
    return-void

    .line 1224
    :cond_0
    const v0, 0x7f080044

    invoke-static {v0, p1, p0}, Lcom/android/settings_ex/SettingsActivity;->loadCategoriesFromResource(ILjava/util/List;Landroid/content/Context;)V

    goto :goto_0

    .line 1230
    :cond_1
    const v0, 0x7f080014

    invoke-static {v0, p1, p0}, Lcom/android/settings_ex/SettingsActivity;->loadCategoriesFromResource(ILjava/util/List;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private getCategory(Ljava/util/List;Ljava/lang/String;)Lcom/android/settings_ex/dashboard/DashboardCategory;
    .locals 3
    .param p2, "categoryKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/dashboard/DashboardCategory;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/settings_ex/dashboard/DashboardCategory;"
        }
    .end annotation

    .prologue
    .line 1604
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/dashboard/DashboardCategory;

    .line 1605
    .local v0, "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    iget-object v2, v0, Lcom/android/settings_ex/dashboard/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1609
    .end local v0    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getHomeActivitiesCount()I
    .locals 2

    .prologue
    .line 811
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 812
    .local v0, "homeApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 813
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method private getMetaData()V
    .locals 5

    .prologue
    .line 1656
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1658
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 1667
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 1660
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mFragmentClass:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1662
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 1664
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
    .line 1010
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1011
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 1026
    :cond_0
    :goto_0
    return-object v0

    .line 1013
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, "intentClass":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1015
    const/4 v0, 0x0

    goto :goto_0

    .line 1017
    :cond_2
    const-string v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1022
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

    .line 487
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 488
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 489
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 490
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg_data_force_refresh"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 492
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private static isLikeShortCutIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 591
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 599
    :cond_0
    :goto_0
    return v2

    .line 595
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Lcom/android/settings_ex/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 596
    sget-object v3, Lcom/android/settings_ex/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 597
    const/4 v2, 0x1

    goto :goto_0

    .line 595
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static isShortCutIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 585
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 586
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string v1, "com.android.settings.SHORTCUT"

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

.method public static loadCategoriesFromResource(ILjava/util/List;Landroid/content/Context;)V
    .locals 20
    .param p0, "resid"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/dashboard/DashboardCategory;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1251
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    const/4 v12, 0x0

    .line 1253
    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 1254
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1258
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    .local v16, "type":I
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 1262
    :cond_1
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1263
    .local v10, "nodeName":Ljava/lang/String;
    const-string v17, "dashboard-categories"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 1264
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "XML document must start with <preference-categories> tag; found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1413
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v10    # "nodeName":Ljava/lang/String;
    .end local v16    # "type":I
    :catch_0
    move-exception v5

    .line 1414
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "Error parsing categories"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1418
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v17

    if-eqz v12, :cond_2

    .line 1419
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v17

    .line 1270
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v10    # "nodeName":Ljava/lang/String;
    .restart local v16    # "type":I
    :cond_3
    const/4 v4, 0x0

    .line 1272
    .local v4, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    .line 1274
    .local v11, "outerDepth":I
    :cond_4
    :goto_0
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1b

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v11, :cond_1b

    .line 1275
    :cond_5
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 1279
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1280
    const-string v17, "dashboard-category"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 1281
    new-instance v3, Lcom/android/settings_ex/dashboard/DashboardCategory;

    invoke-direct {v3}, Lcom/android/settings_ex/dashboard/DashboardCategory;-><init>()V

    .line 1283
    .local v3, "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    sget-object v17, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 1285
    .local v13, "sa":Landroid/content/res/TypedArray;
    const/16 v17, 0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v3, Lcom/android/settings_ex/dashboard/DashboardCategory;->id:J

    .line 1290
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1292
    .local v15, "tv":Landroid/util/TypedValue;
    if-eqz v15, :cond_6

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 1293
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 1294
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v3, Lcom/android/settings_ex/dashboard/DashboardCategory;->titleRes:I

    .line 1299
    :cond_6
    :goto_1
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 1300
    sget-object v17, Lcom/android/internal/R$styleable;->Preference:[I

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 1302
    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1303
    if-eqz v15, :cond_7

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1304
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    if-eqz v17, :cond_10

    .line 1305
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/android/settings_ex/dashboard/DashboardCategory;->key:Ljava/lang/String;

    .line 1310
    :cond_7
    :goto_2
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 1312
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 1314
    .local v6, "innerDepth":I
    :cond_8
    :goto_3
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_19

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v6, :cond_19

    .line 1316
    :cond_9
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 1321
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1322
    .local v8, "innerNodeName":Ljava/lang/String;
    const-string v17, "dashboard-tile"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 1323
    new-instance v14, Lcom/android/settings_ex/dashboard/DashboardTile;

    invoke-direct {v14}, Lcom/android/settings_ex/dashboard/DashboardTile;-><init>()V

    .line 1325
    .local v14, "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    sget-object v17, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 1329
    const/16 v17, 0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v14, Lcom/android/settings_ex/dashboard/DashboardTile;->id:J

    .line 1333
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1334
    if-eqz v15, :cond_a

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 1335
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 1336
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings_ex/dashboard/DashboardTile;->titleRes:I

    .line 1341
    :cond_a
    :goto_4
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1342
    if-eqz v15, :cond_b

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 1343
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    if-eqz v17, :cond_12

    .line 1344
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings_ex/dashboard/DashboardTile;->summaryRes:I

    .line 1349
    :cond_b
    :goto_5
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    .line 1353
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings_ex/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    .line 1355
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 1357
    if-nez v4, :cond_c

    .line 1358
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "curBundle":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1361
    .restart local v4    # "curBundle":Landroid/os/Bundle;
    :cond_c
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 1363
    .local v7, "innerDepth2":I
    :cond_d
    :goto_6
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_15

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v7, :cond_15

    .line 1365
    :cond_e
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_d

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_d

    .line 1370
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1371
    .local v9, "innerNodeName2":Ljava/lang/String;
    const-string v17, "extra"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 1372
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "extra"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1374
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 1415
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    .end local v4    # "curBundle":Landroid/os/Bundle;
    .end local v6    # "innerDepth":I
    .end local v7    # "innerDepth2":I
    .end local v8    # "innerNodeName":Ljava/lang/String;
    .end local v9    # "innerNodeName2":Ljava/lang/String;
    .end local v10    # "nodeName":Ljava/lang/String;
    .end local v11    # "outerDepth":I
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .end local v14    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    .end local v15    # "tv":Landroid/util/TypedValue;
    .end local v16    # "type":I
    :catch_1
    move-exception v5

    .line 1416
    .local v5, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "Error parsing categories"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1296
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v3    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    .restart local v4    # "curBundle":Landroid/os/Bundle;
    .restart local v10    # "nodeName":Ljava/lang/String;
    .restart local v11    # "outerDepth":I
    .restart local v13    # "sa":Landroid/content/res/TypedArray;
    .restart local v15    # "tv":Landroid/util/TypedValue;
    .restart local v16    # "type":I
    :cond_f
    :try_start_4
    iget-object v0, v15, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/android/settings_ex/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 1307
    :cond_10
    iget-object v0, v15, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/android/settings_ex/dashboard/DashboardCategory;->key:Ljava/lang/String;

    goto/16 :goto_2

    .line 1338
    .restart local v6    # "innerDepth":I
    .restart local v8    # "innerNodeName":Ljava/lang/String;
    .restart local v14    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    :cond_11
    iget-object v0, v15, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings_ex/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 1346
    :cond_12
    iget-object v0, v15, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings_ex/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 1376
    .restart local v7    # "innerDepth2":I
    .restart local v9    # "innerNodeName2":Ljava/lang/String;
    :cond_13
    const-string v17, "intent"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 1377
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v12, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_6

    .line 1382
    :cond_14
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 1386
    .end local v9    # "innerNodeName2":Ljava/lang/String;
    :cond_15
    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v17

    if-lez v17, :cond_16

    .line 1387
    iput-object v4, v14, Lcom/android/settings_ex/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 1388
    const/4 v4, 0x0

    .line 1398
    :cond_16
    invoke-virtual {v3, v14}, Lcom/android/settings_ex/dashboard/DashboardCategory;->addTile(Lcom/android/settings_ex/dashboard/DashboardTile;)V

    goto/16 :goto_3

    .line 1400
    .end local v7    # "innerDepth2":I
    .end local v14    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    :cond_17
    const-string v17, "external-tiles"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 1401
    invoke-virtual {v3}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTilesCount()I

    move-result v17

    move/from16 v0, v17

    iput v0, v3, Lcom/android/settings_ex/dashboard/DashboardCategory;->externalIndex:I

    goto/16 :goto_3

    .line 1403
    :cond_18
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    .line 1407
    .end local v8    # "innerNodeName":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1409
    .end local v3    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    .end local v6    # "innerDepth":I
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .end local v15    # "tv":Landroid/util/TypedValue;
    :cond_1a
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1418
    :cond_1b
    if-eqz v12, :cond_1c

    .line 1419
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1421
    :cond_1c
    return-void
.end method

.method public static requestHomeNotice()V
    .locals 1

    .prologue
    .line 1685
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/SettingsActivity;->sShowNoHomeNotice:Z

    .line 1686
    return-void
.end method

.method private revertToInitialFragment()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1749
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1750
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .line 1751
    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 1752
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":settings:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 1755
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1758
    :cond_0
    return-void
.end method

.method private setTitleFromBackStack()I
    .locals 4

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 859
    .local v1, "count":I
    if-nez v1, :cond_1

    .line 860
    iget v2, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    if-lez v2, :cond_0

    .line 861
    iget v2, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsActivity;->setTitle(I)V

    .line 865
    :goto_0
    const/4 v1, 0x0

    .line 872
    .end local v1    # "count":I
    :goto_1
    return v1

    .line 863
    .restart local v1    # "count":I
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 868
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 870
    .local v0, "bse":Landroid/app/FragmentManager$BackStackEntry;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V

    goto :goto_1
.end method

.method private setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V
    .locals 2
    .param p1, "bse"    # Landroid/app/FragmentManager$BackStackEntry;

    .prologue
    .line 877
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v1

    .line 878
    .local v1, "titleRes":I
    if-lez v1, :cond_1

    .line 879
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 883
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 886
    :cond_0
    return-void

    .line 881
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

    .line 817
    const-string v5, ":settings:show_fragment_title_resid"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 819
    .local v3, "initialTitleResId":I
    if-lez v3, :cond_1

    .line 820
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 821
    iput v3, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    .line 823
    const-string v5, ":settings:show_fragment_title_res_package_name"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 825
    .local v4, "initialTitleResPackageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 827
    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/settings_ex/SettingsActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 830
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 832
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 833
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 835
    .restart local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 836
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

    .line 840
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget v5, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/SettingsActivity;->setTitle(I)V

    goto :goto_0

    .line 843
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :cond_1
    iput v6, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    .line 844
    const-string v5, ":settings:show_fragment_title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 846
    .local v2, "initialTitle":Ljava/lang/String;
    if-eqz v2, :cond_2

    .end local v2    # "initialTitle":Ljava/lang/String;
    :goto_1
    iput-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 847
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 846
    .restart local v2    # "initialTitle":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1
.end method

.method private switchToDashbord(Ljava/lang/String;Landroid/os/Bundle;ZILjava/lang/CharSequence;)Landroid/app/Fragment;
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "validate"    # Z
    .param p4, "titleResId"    # I
    .param p5, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1771
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1772
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

    .line 1775
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1776
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1778
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1779
    if-lez p4, :cond_2

    .line 1780
    invoke-virtual {v1, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1784
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1785
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1786
    return-object v0

    .line 1781
    :cond_2
    if-eqz p5, :cond_1

    .line 1782
    invoke-virtual {v1, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
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
    .line 1173
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1174
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

    .line 1177
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1178
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1180
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const v2, 0x7f12020e

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1181
    if-eqz p7, :cond_1

    .line 1182
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 1184
    :cond_1
    if-eqz p4, :cond_2

    .line 1185
    const-string v2, ":settings:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1187
    :cond_2
    if-lez p5, :cond_4

    .line 1188
    invoke-virtual {v1, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1192
    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1193
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1194
    return-object v0

    .line 1189
    :cond_4
    if-eqz p6, :cond_3

    .line 1190
    invoke-virtual {v1, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private switchToSearchResultsFragmentIfNeeded()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1728
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_0

    .line 1742
    :goto_0
    return-void

    .line 1731
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f12020e

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    .line 1733
    .local v8, "current":Landroid/app/Fragment;
    if-eqz v8, :cond_1

    instance-of v0, v8, Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_1

    .line 1734
    check-cast v8, Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .end local v8    # "current":Landroid/app/Fragment;
    iput-object v8, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .line 1740
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 1741
    iput-boolean v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    goto :goto_0

    .line 1736
    .restart local v8    # "current":Landroid/app/Fragment;
    :cond_1
    const-class v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const v5, 0x7f0c0c2b

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

    .line 1614
    const-string v4, "home_prefs"

    invoke-virtual {p0, v4, v3}, Lcom/android/settings_ex/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1616
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v4, "do_show"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1651
    :goto_0
    return v2

    .line 1621
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->getHomeActivitiesCount()I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    .line 1622
    iget v4, p0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 1628
    sget-boolean v4, Lcom/android/settings_ex/SettingsActivity;->sShowNoHomeNotice:Z

    if-eqz v4, :cond_1

    .line 1629
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/settings_ex/SettingsActivity;->sShowNoHomeNotice:Z

    .line 1630
    invoke-static {p0}, Lcom/android/settings_ex/dashboard/NoHomeDialogFragment;->show(Landroid/app/Activity;)V

    :cond_1
    move v2, v3

    .line 1632
    goto :goto_0

    .line 1639
    :cond_2
    iget-object v3, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    if-nez v3, :cond_3

    .line 1640
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 1642
    :cond_3
    iget-object v3, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    const-string v4, "show"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1650
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "do_show"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1645
    :catch_0
    move-exception v0

    .line 1647
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Settings"

    const-string v4, "Problem looking up home activity!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateTilesList(Ljava/util/List;)V
    .locals 18
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
    .line 1424
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v15, "show"

    sget-object v16, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v17, "eng"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 1428
    .local v10, "showDev":Z
    const-string v14, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserManager;

    .line 1430
    .local v13, "um":Landroid/os/UserManager;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    .line 1431
    .local v11, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_15

    .line 1433
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/dashboard/DashboardCategory;

    .line 1436
    .local v3, "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    iget-wide v14, v3, Lcom/android/settings_ex/dashboard/DashboardCategory;->id:J

    long-to-int v7, v14

    .line 1437
    .local v7, "id":I
    invoke-virtual {v3}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTilesCount()I

    move-result v14

    add-int/lit8 v8, v14, -0x1

    .line 1438
    .local v8, "n":I
    :goto_1
    if-ltz v8, :cond_14

    .line 1440
    invoke-virtual {v3, v8}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings_ex/dashboard/DashboardTile;

    move-result-object v12

    .line 1441
    .local v12, "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    const/4 v9, 0x0

    .line 1442
    .local v9, "removeTile":Z
    iget-wide v14, v12, Lcom/android/settings_ex/dashboard/DashboardTile;->id:J

    long-to-int v7, v14

    .line 1443
    const v14, 0x7f1202dc

    if-eq v7, v14, :cond_0

    const v14, 0x7f1202e8

    if-ne v7, v14, :cond_4

    .line 1445
    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/settings_ex/Utils;->updateTileToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Lcom/android/settings_ex/dashboard/DashboardTile;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1448
    const/4 v9, 0x1

    .line 1529
    :cond_1
    :goto_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v14, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v14

    if-nez v14, :cond_2

    .line 1531
    const/4 v9, 0x1

    .line 1534
    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v3}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTilesCount()I

    move-result v14

    if-ge v8, v14, :cond_3

    .line 1535
    invoke-virtual {v3, v8}, Lcom/android/settings_ex/dashboard/DashboardCategory;->removeTile(I)V

    .line 1537
    :cond_3
    add-int/lit8 v8, v8, -0x1

    .line 1538
    goto :goto_1

    .line 1450
    :cond_4
    const v14, 0x7f1202d8

    if-ne v7, v14, :cond_5

    .line 1452
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "android.hardware.wifi"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1454
    const/4 v9, 0x1

    goto :goto_2

    .line 1456
    :cond_5
    const v14, 0x7f1202d9

    if-ne v7, v14, :cond_6

    .line 1459
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "android.hardware.bluetooth"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1461
    const/4 v9, 0x1

    goto :goto_2

    .line 1463
    :cond_6
    const v14, 0x7f1202db

    if-ne v7, v14, :cond_7

    .line 1465
    invoke-static {}, Lcom/android/settings_ex/Utils;->isBandwidthControlEnabled()Z

    move-result v14

    if-nez v14, :cond_1

    .line 1466
    const/4 v9, 0x1

    goto :goto_2

    .line 1468
    :cond_7
    const v14, 0x7f1202e4

    if-ne v7, v14, :cond_8

    .line 1472
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings_ex/SettingsActivity;->mBatteryPresent:Z

    if-nez v14, :cond_1

    .line 1473
    const/4 v9, 0x1

    goto :goto_2

    .line 1475
    :cond_8
    const v14, 0x7f1202df

    if-ne v7, v14, :cond_9

    .line 1476
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings_ex/SettingsActivity;->updateHomeSettingTiles(Lcom/android/settings_ex/dashboard/DashboardTile;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1477
    const/4 v9, 0x1

    goto :goto_2

    .line 1479
    :cond_9
    const v14, 0x7f1202e6

    if-ne v7, v14, :cond_c

    .line 1480
    const-string v14, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/UserManager;

    invoke-virtual {v14}, Landroid/os/UserManager;->getUserCount()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_b

    const/4 v4, 0x1

    .line 1482
    .local v4, "hasMultipleUsers":Z
    :goto_3
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1485
    :cond_a
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1480
    .end local v4    # "hasMultipleUsers":Z
    :cond_b
    const/4 v4, 0x0

    goto :goto_3

    .line 1487
    :cond_c
    const v14, 0x7f1202e7

    if-ne v7, v14, :cond_f

    .line 1488
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "android.hardware.nfc"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 1490
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1493
    :cond_d
    invoke-static/range {p0 .. p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    .line 1494
    .local v2, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "android.hardware.nfc.hce"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1499
    :cond_e
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1502
    .end local v2    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_f
    const v14, 0x7f1202f2

    if-ne v7, v14, :cond_10

    .line 1503
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "android.software.print"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    .line 1505
    .local v5, "hasPrintingSupport":Z
    if-nez v5, :cond_1

    .line 1506
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1508
    .end local v5    # "hasPrintingSupport":Z
    :cond_10
    const v14, 0x7f1202f3

    if-ne v7, v14, :cond_12

    .line 1509
    if-eqz v10, :cond_11

    const-string v14, "no_debugging_features"

    invoke-virtual {v13, v14}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1511
    :cond_11
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1513
    :cond_12
    const v14, 0x7f1202fe

    if-ne v7, v14, :cond_13

    .line 1514
    const-string v14, "com.oneplus.noviceteaching"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1515
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1517
    :cond_13
    const v14, 0x7f1202e2

    if-ne v7, v14, :cond_1

    .line 1519
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1431
    .end local v9    # "removeTile":Z
    .end local v12    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1540
    .end local v3    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    .end local v7    # "id":I
    .end local v8    # "n":I
    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/SettingsActivity;->addExternalTiles(Ljava/util/List;)V

    .line 1541
    return-void
.end method


# virtual methods
.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 0
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 1138
    invoke-virtual {p0, p2, p3}, Lcom/android/settings_ex/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 1139
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->finish()V

    .line 1140
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
    .line 454
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/SettingsActivity;->buildDashboardCategories(Ljava/util/List;)V

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 984
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 985
    .local v4, "superIntent":Landroid/content/Intent;
    invoke-direct {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 989
    .local v3, "startingFragment":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 990
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 991
    .local v2, "modIntent":Landroid/content/Intent;
    const-string v5, ":settings:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 992
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 993
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 994
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0    # "args":Landroid/os/Bundle;
    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 998
    .end local v1    # "args":Landroid/os/Bundle;
    .restart local v0    # "args":Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 999
    const-string v5, ":settings:show_fragment_args"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1002
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 996
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

    .line 1002
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getResultIntentData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    return-object v0
.end method

.method public getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 1671
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
    .line 975
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/settings_ex/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 976
    sget-object v1, Lcom/android/settings_ex/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 977
    const/4 v1, 0x1

    .line 979
    :goto_1
    return v1

    .line 975
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 979
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public needToRevertToInitialFragment()V
    .locals 1

    .prologue
    .line 1745
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1746
    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 853
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromBackStack()I

    .line 854
    return-void
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 1706
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 496
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 497
    invoke-static {p0}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/search/Index;->update()V

    .line 498
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 618
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 621
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getMetaData()V

    .line 623
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 624
    .local v17, "intent":Landroid/content/Intent;
    const-string v2, "settings:ui_options"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string v5, "settings:ui_options"

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/Window;->setUiOptions(I)V

    .line 628
    :cond_0
    const-string v2, "development"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/android/settings_ex/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 633
    const-string v2, ":settings:show_fragment"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 637
    .local v3, "initialFragmentName":Ljava/lang/String;
    const-string v2, "com.android.settings.DataUsageSummary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 638
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->isDataUsageSummaryFragment:Z

    .line 640
    :cond_1
    invoke-static/range {v17 .. v17}, Lcom/android/settings_ex/SettingsActivity;->isShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static/range {v17 .. v17}, Lcom/android/settings_ex/SettingsActivity;->isLikeShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ":settings:show_fragment_as_shortcut"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_2
    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShortcut:Z

    .line 645
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    .line 646
    .local v16, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    .line 648
    .local v15, "className":Ljava/lang/String;
    const-class v2, Lcom/android/settings_ex/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    .line 653
    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/android/settings_ex/SubSettings;

    if-nez v2, :cond_3

    const-string v2, ":settings:show_fragment_as_subsetting"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_3
    const/16 v18, 0x1

    .line 659
    .local v18, "isSubSettings":Z
    :goto_1
    if-eqz v18, :cond_4

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getThemeResId()I

    move-result v20

    .line 663
    .local v20, "themeResId":I
    const v2, 0x7f0d006f

    move/from16 v0, v20

    if-eq v0, v2, :cond_4

    const v2, 0x7f0d0071

    move/from16 v0, v20

    if-eq v0, v2, :cond_4

    .line 665
    const v2, 0x7f0d006a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->setTheme(I)V

    .line 668
    .end local v20    # "themeResId":I
    :cond_4
    const-string v2, "third_call_finish"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsThirdCall:Z

    .line 670
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_d

    const v2, 0x7f040107

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->setContentView(I)V

    .line 673
    const v2, 0x7f12020e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    .line 675
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 677
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_5

    .line 679
    invoke-static/range {p0 .. p0}, Lcom/android/settings_ex/Utils;->isLowStorage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ex/search/Index;->update()V

    .line 687
    :cond_5
    :goto_3
    if-eqz p1, :cond_f

    .line 691
    const-string v2, ":settings:search_menu_expanded"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 693
    const-string v2, ":settings:search_query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 695
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 697
    const-string v2, ":settings:categories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 699
    .local v14, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    if-eqz v14, :cond_6

    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 702
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromBackStack()I

    .line 705
    :cond_6
    const-string v2, ":settings:show_home_as_up"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 707
    const-string v2, ":settings:show_search"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    .line 708
    const-string v2, ":settings:home_activities_count"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    .line 745
    .end local v14    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_7

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 751
    :cond_7
    const v2, 0x7f12020f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/widget/SwitchBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 754
    const-string v2, "extra_prefs_show_button_bar"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 756
    const v2, 0x7f1200bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 757
    .local v12, "buttonBar":Landroid/view/View;
    if-eqz v12, :cond_a

    .line 758
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 760
    const v2, 0x7f12019d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 761
    .local v11, "backButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings_ex/SettingsActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings_ex/SettingsActivity$3;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    invoke-virtual {v11, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    const v2, 0x7f12019e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    .line 768
    .local v19, "skipButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings_ex/SettingsActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings_ex/SettingsActivity$4;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 774
    const v2, 0x7f12003f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/settings_ex/SettingsActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings_ex/SettingsActivity$5;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 783
    const-string v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 784
    const-string v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 786
    .local v13, "buttonText":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 792
    .end local v13    # "buttonText":Ljava/lang/String;
    :cond_8
    :goto_5
    const-string v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 793
    const-string v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 795
    .restart local v13    # "buttonText":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 796
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 801
    .end local v13    # "buttonText":Ljava/lang/String;
    :cond_9
    :goto_6
    const-string v2, "extra_prefs_show_skip"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 802
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 807
    .end local v11    # "backButton":Landroid/widget/Button;
    .end local v12    # "buttonBar":Landroid/view/View;
    .end local v19    # "skipButton":Landroid/widget/Button;
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getHomeActivitiesCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    .line 808
    return-void

    .line 640
    .end local v15    # "className":Ljava/lang/String;
    .end local v16    # "cn":Landroid/content/ComponentName;
    .end local v18    # "isSubSettings":Z
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 653
    .restart local v15    # "className":Ljava/lang/String;
    .restart local v16    # "cn":Landroid/content/ComponentName;
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 670
    .restart local v18    # "isSubSettings":Z
    :cond_d
    const v2, 0x7f040108

    goto/16 :goto_2

    .line 682
    :cond_e
    const-string v2, "Settings"

    const-string v5, "Cannot update the Indexer as we are running low on storage space!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 714
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v2, :cond_12

    .line 715
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    .line 717
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShortcut:Z

    if-eqz v2, :cond_10

    .line 718
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 724
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 726
    const-string v2, ":settings:show_fragment_args"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 728
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

    goto/16 :goto_4

    .line 719
    .end local v4    # "initialArguments":Landroid/os/Bundle;
    :cond_10
    if-eqz v18, :cond_11

    .line 720
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    goto :goto_7

    .line 722
    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    goto :goto_7

    .line 732
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 734
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    .line 735
    const v2, 0x7f0c0c2a

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    .line 739
    const-class v2, Lcom/android/settings_ex/dashboard/DashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/settings_ex/SettingsActivity;->switchToDashbord(Ljava/lang/String;Landroid/os/Bundle;ZILjava/lang/CharSequence;)Landroid/app/Fragment;

    goto/16 :goto_4

    .line 789
    .restart local v11    # "backButton":Landroid/widget/Button;
    .restart local v12    # "buttonBar":Landroid/view/View;
    .restart local v13    # "buttonText":Ljava/lang/String;
    .restart local v19    # "skipButton":Landroid/widget/Button;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 798
    :cond_14
    invoke-virtual {v11, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    if-nez v0, :cond_0

    .line 512
    const/4 v0, 0x0

    .line 542
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 965
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 967
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 969
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 970
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 607
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->isFromInstalledappdetails()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->finish()V

    .line 613
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1719
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1720
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v0, :cond_0

    .line 1721
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->revertToInitialFragment()V

    .line 1724
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1711
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1712
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1714
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 561
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_2

    .line 566
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->isDataUsageSummaryFragment:Z

    if-eqz v0, :cond_1

    .line 567
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->isFromInstalledappdetails()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 580
    :goto_0
    return v0

    .line 573
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->onBackPressed()V

    .line 578
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 576
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->finish()V

    goto :goto_1

    .line 580
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 955
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 956
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v0, :cond_0

    .line 957
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 960
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

    invoke-virtual {v0}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->unregister()V

    .line 961
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 464
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 465
    .local v3, "titleRes":I
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    const v3, 0x7f0c05ed

    .line 475
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

    .line 477
    const/4 v0, 0x1

    return v0

    .line 467
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

    .line 469
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 470
    const v3, 0x7f0c03df

    goto :goto_0

    .line 472
    :cond_2
    const v3, 0x7f0c03dd

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 483
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 1697
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1698
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    if-nez v0, :cond_0

    .line 1699
    const/4 v0, 0x0

    .line 1701
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
    .line 1690
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1691
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1692
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 922
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 923
    iget-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v1, :cond_0

    .line 924
    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 927
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->getHomeActivitiesCount()I

    move-result v0

    .line 928
    .local v0, "newHomeActivityCount":I
    iget v1, p0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    if-eq v0, v1, :cond_1

    .line 929
    iput v0, p0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    .line 930
    invoke-direct {p0, v2}, Lcom/android/settings_ex/SettingsActivity;->invalidateCategories(Z)V

    .line 933
    :cond_1
    new-instance v1, Lcom/android/settings_ex/SettingsActivity$6;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/SettingsActivity$6;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    iput-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 940
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 943
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 946
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->register(Landroid/content/Context;)V

    .line 948
    iget-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 949
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsActivity;->onQueryTextSubmit(Ljava/lang/String;)Z

    .line 951
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 890
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 892
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 893
    const-string v2, ":settings:categories"

    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 896
    :cond_0
    const-string v2, ":settings:show_home_as_up"

    iget-boolean v3, p0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 897
    const-string v2, ":settings:show_search"

    iget-boolean v3, p0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 899
    iget-boolean v2, p0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    if-eqz v2, :cond_1

    .line 908
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 910
    .local v0, "isExpanded":Z
    :goto_0
    const-string v2, ":settings:search_menu_expanded"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 912
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 914
    .local v1, "query":Ljava/lang/String;
    :goto_1
    const-string v2, ":settings:search_query"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    .end local v0    # "isExpanded":Z
    .end local v1    # "query":Ljava/lang/String;
    :cond_1
    const-string v2, ":settings:home_activities_count"

    iget v3, p0, Lcom/android/settings_ex/SettingsActivity;->mHomeActivitiesCount:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 918
    return-void

    .line 908
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 912
    .restart local v0    # "isExpanded":Z
    :cond_3
    const-string v1, ""

    goto :goto_1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 502
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 504
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v0, :cond_0

    .line 505
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->revertToInitialFragment()V

    .line 507
    :cond_0
    return-void
.end method

.method public setResultIntentData(Landroid/content/Intent;)V
    .locals 0
    .param p1, "resultIntentData"    # Landroid/content/Intent;

    .prologue
    .line 1765
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    .line 1766
    return-void
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 1680
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
    .line 1152
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1154
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x7f12020e

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1155
    if-eqz p2, :cond_0

    .line 1156
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1158
    const-string v1, ":settings:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1163
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1164
    return-void

    .line 1160
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
    .line 1057
    const/4 v6, 0x0

    .line 1058
    .local v6, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 1059
    if-eqz p4, :cond_1

    .line 1060
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1066
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

    .line 1068
    return-void

    .line 1063
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
    .line 1106
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1107
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1122
    :goto_0
    return-void

    .line 1110
    :cond_0
    const/4 v4, 0x0

    .line 1111
    .local v4, "title":Ljava/lang/String;
    if-gez p3, :cond_1

    .line 1112
    if-eqz p4, :cond_2

    .line 1113
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1119
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V

    goto :goto_0

    .line 1116
    :cond_2
    const-string v4, ""

    goto :goto_1
.end method
