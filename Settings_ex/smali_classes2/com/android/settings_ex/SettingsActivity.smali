.class public Lcom/android/settings_ex/SettingsActivity;
.super Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Lcom/android/settings_ex/ButtonBarHandler;
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SettingsActivity$1;,
        Lcom/android/settings_ex/SettingsActivity$2;,
        Lcom/android/settings_ex/SettingsActivity$3;
    }
.end annotation


# static fields
.field private static final ACTION_TIMER_SWITCH:Ljava/lang/String; = "qualcomm.intent.action.TIMER_SWITCH"

.field private static final ACTIVATE_SEARCH:I = 0x0

.field private static final ACTIVATE_SEARCH_DELAY:I = 0x12c

.field public static final BACK_STACK_PREFS:Ljava/lang/String; = ":settings:prefs"

.field private static final EMPTY_QUERY:Ljava/lang/String; = ""

.field private static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field public static final EXTRA_FRAGMENT_ARG_KEY:Ljava/lang/String; = ":settings:fragment_args_key"

.field public static final EXTRA_HIDE_DRAWER:Ljava/lang/String; = ":settings:hide_drawer"

.field public static final EXTRA_LAUNCH_ACTIVITY_ACTION:Ljava/lang/String; = ":settings:launch_activity_action"

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

.field static final EXTRA_SHOW_MENU:Ljava/lang/String; = "show_drawer_menu"

.field private static final EXTRA_UI_OPTIONS:Ljava/lang/String; = "settings:ui_options"

.field private static final LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

.field private static final LOADER_ID_INDEXABLE_CONTENT_MONITOR:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Settings"

.field private static final LTE_4G_FRAGMENT:Ljava/lang/String; = "com.android.settings_ex.Lte4GEnableSetting"

.field public static final META_DATA_KEY_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings_ex.FRAGMENT_CLASS"

.field public static final META_DATA_KEY_LAUNCH_ACTIVITY_ACTION:Ljava/lang/String; = "com.android.settings_ex.ACTIVITY_ACTION"

.field private static final MOBILENETWORK_FRAGMENT:Ljava/lang/String; = "com.android.settings_ex.MobileNetworkMain"

.field private static final MSG_DATA_FORCE_REFRESH:Ljava/lang/String; = "msg_data_force_refresh"

.field private static final ONEPLUS_CLOUD_PACKAGE:Ljava/lang/String; = "com.oneplus.cloud"

.field private static final PROFILEMGR_MAIN_FRAGMENT:Ljava/lang/String; = "com.android.settings_ex.ProfileMgrMain"

.field private static final REQUEST_SUGGESTION:I = 0x2a

.field private static final SAVE_KEY_CATEGORIES:Ljava/lang/String; = ":settings:categories"

.field private static final SAVE_KEY_HOME_ACTIVITIES_COUNT:Ljava/lang/String; = ":settings:home_activities_count"

.field private static final SAVE_KEY_SEARCH_MENU_EXPANDED:Ljava/lang/String; = ":settings:search_menu_expanded"

.field private static final SAVE_KEY_SEARCH_QUERY:Ljava/lang/String; = ":settings:search_query"

.field private static final SAVE_KEY_SHOW_HOME_AS_UP:Ljava/lang/String; = ":settings:show_home_as_up"

.field private static final SAVE_KEY_SHOW_SEARCH:Ljava/lang/String; = ":settings:show_search"

.field private static final SYSTEM_UPDATE:Ljava/lang/String; = "android.settings.SystemUpdateActivity"


# instance fields
.field private SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActivityAction:Ljava/lang/String;

.field private mAppBarLayout:Lcom/oneplus/lib/design/widget/AppBarLayout;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContent:Landroid/view/ViewGroup;

.field private mCoordinatorLayout:Lcom/oneplus/lib/design/widget/CoordinatorLayout;

.field private mCurrentSuggestion:Landroid/content/ComponentName;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mDisplayHomeAsUpEnabled:Z

.field private mDisplaySearch:Z

.field private final mDynamicIndexableContentMonitor:Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

.field private mFragmentClass:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I

.field private mIsShortcut:Z

.field private mIsShowingDashboard:Z

.field private mMainContentId:I

.field private mNeedToRevertToInitialFragment:Z

.field private mNextButton:Landroid/widget/Button;

.field private mResultIntentData:Landroid/content/Intent;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchMenuItemExpanded:Z

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mToolbarLayout:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

.field private final mUserAddRemoveReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/SettingsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/SettingsActivity;)Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/SettingsActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/SettingsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/SettingsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/SettingsActivity;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->doUpdateTilesList()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->updateTilesList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 341
    const/16 v0, 0x78

    new-array v0, v0, [Ljava/lang/String;

    .line 342
    const-class v1, Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 343
    const-class v1, Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 344
    const-class v1, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 345
    const-class v1, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 346
    const-class v1, Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 347
    const-class v1, Lcom/android/settings_ex/sim/SimSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 348
    const-class v1, Lcom/android/settings_ex/TetherSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 349
    const-class v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 350
    const-class v1, Lcom/android/settings_ex/vpn2/VpnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 351
    const-class v1, Lcom/android/settings_ex/DateTimeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 352
    const-class v1, Lcom/android/settings_ex/OtherDeviceFunctionsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 353
    const-class v1, Lcom/android/settings_ex/localepicker/LocaleListEditor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 354
    const-class v1, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 355
    const-class v1, Lcom/android/settings_ex/inputmethod/AvailableVirtualKeyboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 356
    const-class v1, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 357
    const-class v1, Lcom/android/settings_ex/inputmethod/UserDictionaryList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 358
    const-class v1, Lcom/android/settings_ex/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 359
    const-class v1, Lcom/android/settings_ex/HomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 360
    const-class v1, Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 361
    const-class v1, Lcom/android/settings_ex/DeviceInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 362
    const-class v1, Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 363
    const-class v1, Lcom/android/settings_ex/applications/NotificationApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 364
    const-class v1, Lcom/android/settings_ex/applications/ManageAssist;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 365
    const-class v1, Lcom/android/settings_ex/applications/ProcessStatsUi;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 366
    const-class v1, Lcom/android/settings_ex/notification/NotificationStation;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 367
    const-class v1, Lcom/android/settings_ex/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 368
    const-class v1, Lcom/android/settings_ex/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 369
    const-class v1, Lcom/android/settings_ex/applications/UsageAccessDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 370
    const-class v1, Lcom/android/settings_ex/PrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 371
    const-class v1, Lcom/android/settings_ex/DeviceAdminSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 372
    const-class v1, Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 373
    const-class v1, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizard;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 374
    const-class v1, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 375
    const-class v1, Lcom/android/settings_ex/accessibility/ToggleDaltonizerPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 376
    const-class v1, Lcom/android/settings_ex/tts/TextToSpeechSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 377
    const-class v1, Lcom/android/settings_ex/deviceinfo/StorageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 378
    const-class v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeForget;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 379
    const-class v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 380
    const-class v1, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 381
    const-class v1, Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 382
    const-class v1, Lcom/android/settings_ex/nfc/AndroidBeam;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 383
    const-class v1, Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 384
    const-class v1, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 385
    const-class v1, Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 386
    const-class v1, Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 387
    const-class v1, Lcom/android/settings_ex/CryptKeeperSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 388
    const-class v1, Lcom/android/settings_ex/datausage/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 389
    const-class v1, Lcom/android/settings_ex/DreamSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 390
    const-class v1, Lcom/android/settings_ex/users/UserSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 391
    const-class v1, Lcom/android/settings_ex/notification/NotificationAccessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 392
    const-class v1, Lcom/android/settings_ex/notification/ZenAccessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 393
    const-class v1, Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 394
    const-class v1, Lcom/android/settings_ex/print/PrintJobSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 395
    const-class v1, Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 396
    const-class v1, Lcom/android/settings_ex/nfc/PaymentSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 397
    const-class v1, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 398
    const-class v1, Lcom/android/settings_ex/inputmethod/KeyboardLayoutPickerFragment2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 399
    const-class v1, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 400
    const-class v1, Lcom/android/settings_ex/notification/ZenModeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 401
    const-class v1, Lcom/android/settings_ex/notification/SoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 402
    const-class v1, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 403
    const-class v1, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 404
    const-class v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 405
    const-class v1, Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 406
    const-class v1, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    aput-object v1, v0, v2

    .line 407
    const-class v1, Lcom/android/settings_ex/notification/AppNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x41

    aput-object v1, v0, v2

    .line 408
    const-class v1, Lcom/android/settings_ex/notification/OtherSoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 409
    const-class v1, Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x43

    aput-object v1, v0, v2

    .line 410
    const-class v1, Lcom/android/settings_ex/ApnEditor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x44

    aput-object v1, v0, v2

    .line 411
    const-class v1, Lcom/android/settings_ex/WifiCallingSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x45

    aput-object v1, v0, v2

    .line 412
    const-class v1, Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x46

    aput-object v1, v0, v2

    .line 413
    const-class v1, Lcom/android/settings_ex/notification/ZenModeAutomationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x47

    aput-object v1, v0, v2

    .line 414
    const-class v1, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x48

    aput-object v1, v0, v2

    .line 415
    const-class v1, Lcom/android/settings_ex/notification/ZenModeEventRuleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x49

    aput-object v1, v0, v2

    .line 416
    const-class v1, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    .line 417
    const-class v1, Lcom/android/settings_ex/applications/ProcessStatsUi;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    .line 418
    const-class v1, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    .line 419
    const-class v1, Lcom/android/settings_ex/applications/ProcessStatsSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    .line 420
    const-class v1, Lcom/android/settings_ex/applications/DrawOverlayDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    .line 421
    const-class v1, Lcom/android/settings_ex/applications/WriteSettingsDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    .line 422
    const-class v1, Lcom/android/settings_ex/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x50

    aput-object v1, v0, v2

    .line 423
    const-class v1, Lcom/android/settings_ex/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x51

    aput-object v1, v0, v2

    .line 424
    const-class v1, Lcom/android/settings_ex/applications/VrListenerSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x52

    aput-object v1, v0, v2

    .line 425
    const-class v1, Lcom/android/settings_ex/accounts/ManagedProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x53

    aput-object v1, v0, v2

    .line 426
    const-class v1, Lcom/android/settings_ex/accounts/ChooseAccountActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x54

    aput-object v1, v0, v2

    .line 427
    const-class v1, Lcom/android/settings_ex/IccLockSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x55

    aput-object v1, v0, v2

    .line 428
    const-class v1, Lcom/android/settings_ex/deviceinfo/ImeiInformation;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x56

    aput-object v1, v0, v2

    .line 429
    const-class v1, Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x57

    aput-object v1, v0, v2

    .line 430
    const-class v1, Lcom/android/settings_ex/deviceinfo/Status;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x58

    aput-object v1, v0, v2

    .line 431
    const-class v1, Lcom/android/settings_ex/TestingSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x59

    aput-object v1, v0, v2

    .line 432
    const-class v1, Lcom/android/settings_ex/wifi/WifiAPITest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    .line 433
    const-class v1, Lcom/android/settings_ex/wifi/WifiInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    .line 435
    const-class v1, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    .line 436
    const-class v1, Lcom/oneplus/settings/storage/OPStorageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    .line 437
    const-class v1, Lcom/oneplus/settings/OPApplicationsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    .line 438
    const-class v1, Lcom/oneplus/settings/OPDeviceName;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    .line 439
    const-class v1, Lcom/oneplus/settings/OPButtonsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x60

    aput-object v1, v0, v2

    .line 440
    const-class v1, Lcom/oneplus/settings/OPGestureSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x61

    aput-object v1, v0, v2

    .line 441
    const-class v1, Lcom/oneplus/settings/OPCredentialsManagementSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x62

    aput-object v1, v0, v2

    .line 442
    const-class v1, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x63

    aput-object v1, v0, v2

    .line 443
    const-class v1, Lcom/oneplus/settings/notification/OPRingPattern;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    aput-object v1, v0, v2

    .line 444
    const-class v1, Lcom/oneplus/settings/notification/OPSilentMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    aput-object v1, v0, v2

    .line 445
    const-class v1, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x66

    aput-object v1, v0, v2

    .line 446
    const-class v1, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x67

    aput-object v1, v0, v2

    .line 447
    const-class v1, Lcom/android/settings_ex/datausage/DataUsageList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x68

    aput-object v1, v0, v2

    .line 448
    const-class v1, Lcom/android/settings_ex/Settings$OPRingModeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x69

    aput-object v1, v0, v2

    .line 449
    const-class v1, Lcom/android/settings_ex/Settings$OPSilentModeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    .line 450
    const-class v1, Lcom/android/settings_ex/datausage/DataSaverSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    .line 451
    const-class v1, Lcom/oneplus/settings/better/OPNightMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    .line 452
    const-class v1, Lcom/oneplus/settings/better/OPReadingMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    .line 453
    const-class v1, Lcom/oneplus/settings/better/OPGamingMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    .line 454
    const-class v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    .line 455
    const-class v1, Lcom/oneplus/settings/others/OPOthersSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x70

    aput-object v1, v0, v2

    .line 456
    const-class v1, Lcom/oneplus/settings/OPPreInstalledAppList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x71

    aput-object v1, v0, v2

    .line 459
    const-class v1, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x72

    aput-object v1, v0, v2

    .line 460
    const-class v1, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x73

    aput-object v1, v0, v2

    .line 462
    const-class v1, Lcom/oneplus/settings/OPDefaultHomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x74

    aput-object v1, v0, v2

    .line 463
    const-class v1, Lcom/oneplus/settings/OPFontStyleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x75

    aput-object v1, v0, v2

    .line 464
    const-class v1, Lcom/oneplus/settings/better/OPAppLocker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x76

    aput-object v1, v0, v2

    .line 466
    const-class v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x77

    aput-object v1, v0, v2

    .line 341
    sput-object v0, Lcom/android/settings_ex/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    .line 471
    new-array v0, v4, [Ljava/lang/String;

    .line 472
    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    aput-object v1, v0, v3

    .line 471
    sput-object v0, Lcom/android/settings_ex/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    .line 190
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 190
    invoke-direct {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;-><init>()V

    .line 303
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    .line 305
    const-class v1, Lcom/android/settings_ex/Settings$WifiSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 306
    const-class v1, Lcom/android/settings_ex/Settings$BluetoothSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 307
    const-class v1, Lcom/android/settings_ex/Settings$MobileNetworkMainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 308
    const-class v1, Lcom/android/settings_ex/Settings$TetherSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 309
    const-class v1, Lcom/android/settings_ex/Settings$DataUsageSummaryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 310
    const-class v1, Lcom/android/settings_ex/Settings$RoamingSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 311
    const-class v1, Lcom/android/settings_ex/Settings$SimSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 312
    const-class v1, Lcom/android/settings_ex/Settings$Lte4GEnableActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 313
    const-class v1, Lcom/android/settings_ex/Settings$WirelessSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 315
    const-class v1, Lcom/android/settings_ex/Settings$HomeSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 316
    const-class v1, Lcom/android/settings_ex/Settings$SoundSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 317
    const-class v1, Lcom/android/settings_ex/Settings$DisplaySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 318
    const-class v1, Lcom/android/settings_ex/Settings$StorageSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 319
    const-class v1, Lcom/android/settings_ex/Settings$ManageApplicationsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 320
    const-class v1, Lcom/android/settings_ex/Settings$PowerUsageSummaryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 322
    const-class v1, Lcom/android/settings_ex/Settings$ProfileMgrMainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 323
    const-class v1, Lcom/android/settings_ex/Settings$LocationSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 324
    const-class v1, Lcom/android/settings_ex/Settings$SecuritySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 325
    const-class v1, Lcom/android/settings_ex/Settings$InputMethodAndLanguageSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 326
    const-class v1, Lcom/android/settings_ex/Settings$UserSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 327
    const-class v1, Lcom/android/settings_ex/Settings$AccountSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 329
    const-class v1, Lcom/android/settings_ex/Settings$DateTimeSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 330
    const-class v1, Lcom/android/settings_ex/Settings$DeviceInfoSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 331
    const-class v1, Lcom/android/settings_ex/Settings$AccessibilitySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 332
    const-class v1, Lcom/android/settings_ex/Settings$PrintSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 333
    const-class v1, Lcom/android/settings_ex/Settings$PaymentSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 334
    const-class v1, Lcom/android/settings_ex/Settings$TimerSwitchSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 335
    const-class v1, Lcom/android/settings_ex/Settings$SystemUpdateActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 336
    const-class v1, Lcom/android/settings_ex/Settings$OtherDeviceFunctionsSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 337
    const-class v1, Lcom/android/settings_ex/Settings$OPCloudServiceSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 338
    const-class v1, Lcom/android/settings_ex/Settings$OPOthersSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 303
    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    .line 478
    iput-boolean v4, p0, Lcom/android/settings_ex/SettingsActivity;->mBatteryPresent:Z

    .line 479
    new-instance v0, Lcom/android/settings_ex/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SettingsActivity$1;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 494
    new-instance v0, Lcom/android/settings_ex/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SettingsActivity$2;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mUserAddRemoveReceiver:Landroid/content/BroadcastReceiver;

    .line 506
    new-instance v0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

    invoke-direct {v0}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;-><init>()V

    .line 505
    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

    .line 519
    const v0, 0x7f1102ed

    iput v0, p0, Lcom/android/settings_ex/SettingsActivity;->mMainContentId:I

    .line 524
    iput-boolean v3, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    .line 533
    iput-boolean v3, p0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 541
    new-instance v0, Lcom/android/settings_ex/SettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SettingsActivity$3;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mHandler:Landroid/os/Handler;

    .line 190
    return-void
.end method

.method private doUpdateTilesList()V
    .locals 22

    .prologue
    .line 1385
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1386
    .local v12, "pm":Landroid/content/pm/PackageManager;
    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v17

    .line 1387
    .local v17, "um":Landroid/os/UserManager;
    invoke-virtual/range {v17 .. v17}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v10

    .line 1389
    .local v10, "isAdmin":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 1390
    .local v11, "packageName":Ljava/lang/String;
    new-instance v18, Landroid/content/ComponentName;

    const-class v19, Lcom/android/settings_ex/Settings$WifiSettingsActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    const-string/jumbo v19, "android.hardware.wifi"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v19

    .line 1390
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1393
    new-instance v18, Landroid/content/ComponentName;

    .line 1394
    const-class v19, Lcom/android/settings_ex/Settings$BluetoothSettingsActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1393
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    const-string/jumbo v19, "android.hardware.bluetooth"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v19

    .line 1393
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1399
    new-instance v19, Landroid/content/ComponentName;

    .line 1400
    const-class v18, Lcom/android/settings_ex/Settings$TetherSettingsActivity;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1399
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v20, 0x7f0c0024

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-nez v18, :cond_3

    .line 1402
    const-string/jumbo v18, "android.hardware.wifi"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    .line 1399
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1405
    new-instance v19, Landroid/content/ComponentName;

    .line 1406
    const-class v18, Lcom/android/settings_ex/Settings$MobileNetworkMainActivity;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1405
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v20, 0x7f0c0024

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1408
    const-string/jumbo v18, "android.hardware.telephony"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    .line 1405
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1411
    new-instance v19, Landroid/content/ComponentName;

    .line 1412
    const-class v18, Lcom/android/settings_ex/Settings$AccessibilitySettingsActivity;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1411
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v20, 0x7f0c0024

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-eqz v18, :cond_5

    const/16 v18, 0x0

    .line 1411
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1415
    new-instance v18, Landroid/content/ComponentName;

    .line 1416
    const-class v19, Lcom/android/settings_ex/Settings$Lte4GEnableActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1415
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c0023

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 1415
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1419
    new-instance v18, Landroid/content/ComponentName;

    .line 1420
    const-class v19, Lcom/android/settings_ex/Settings$DataUsageSummaryActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1419
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    invoke-static {}, Lcom/android/settings_ex/Utils;->isBandwidthControlEnabled()Z

    move-result v19

    .line 1419
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1423
    new-instance v18, Landroid/content/ComponentName;

    .line 1424
    const-class v19, Lcom/android/settings_ex/Settings$RoamingSettingsActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1423
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c001e

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 1423
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1427
    new-instance v18, Landroid/content/ComponentName;

    .line 1428
    const-class v19, Lcom/android/settings_ex/Settings$SimSettingsActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1427
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    invoke-static/range {p0 .. p0}, Lcom/android/settings_ex/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v19

    .line 1427
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1431
    new-instance v18, Landroid/content/ComponentName;

    .line 1432
    const-class v19, Lcom/android/settings_ex/Settings$PowerUsageSummaryActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1431
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/SettingsActivity;->mBatteryPresent:Z

    move/from16 v19, v0

    .line 1431
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1435
    new-instance v19, Landroid/content/ComponentName;

    .line 1436
    const-class v18, Lcom/android/settings_ex/Settings$UserSettingsActivity;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1435
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1438
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v18

    if-eqz v18, :cond_6

    const/16 v18, 0x0

    .line 1435
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1440
    invoke-static/range {p0 .. p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    .line 1442
    .local v3, "adapter":Landroid/nfc/NfcAdapter;
    new-instance v19, Landroid/content/ComponentName;

    .line 1443
    const-class v18, Lcom/android/settings_ex/Settings$PaymentSettingsActivity;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1442
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    const-string/jumbo v18, "android.hardware.nfc"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1445
    const-string/jumbo v18, "android.hardware.nfc.hce"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    .line 1444
    if-eqz v18, :cond_9

    .line 1446
    if-eqz v3, :cond_8

    const/16 v18, 0x1

    .line 1442
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1448
    new-instance v19, Landroid/content/ComponentName;

    .line 1449
    const-class v18, Lcom/android/settings_ex/Settings$PrintSettingsActivity;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1448
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v20, 0x7f0c0024

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-nez v18, :cond_a

    .line 1451
    const-string/jumbo v18, "android.software.print"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    .line 1448
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1454
    new-instance v19, Landroid/content/ComponentName;

    .line 1455
    const-class v18, Lcom/android/settings_ex/Settings$DeviceInfoSettingsActivity;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1454
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v20, 0x7f0c0024

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-eqz v18, :cond_b

    const/16 v18, 0x0

    .line 1454
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1459
    new-instance v18, Landroid/content/ComponentName;

    .line 1460
    const-class v19, Lcom/android/settings_ex/Settings$OtherDeviceFunctionsSettingsActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1459
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c0024

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 1459
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1464
    new-instance v18, Landroid/content/ComponentName;

    .line 1465
    const-class v19, Lcom/android/settings_ex/Settings$SystemUpdateActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1464
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c0024

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 1464
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1469
    new-instance v18, Landroid/content/ComponentName;

    .line 1470
    const-class v19, Lcom/android/settings_ex/Settings$ProfileMgrMainActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1469
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c0026

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 1469
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1473
    new-instance v18, Landroid/content/ComponentName;

    .line 1474
    const-class v19, Lcom/android/settings_ex/Settings$OPOthersSettingsActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1473
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    const/16 v19, 0x1

    .line 1473
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1477
    new-instance v19, Landroid/content/ComponentName;

    .line 1478
    const-class v18, Lcom/android/settings_ex/Settings$OPCloudServiceSettings;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1477
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const-string/jumbo v20, "com.oneplus.cloud"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v18

    if-eqz v18, :cond_c

    :cond_0
    const/16 v18, 0x0

    .line 1477
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1483
    new-instance v18, Landroid/content/ComponentName;

    .line 1484
    const-class v19, Lcom/android/settings_ex/Settings$OPFontStyleSettingsActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1483
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportFontStyleSetting()Z

    move-result v19

    .line 1483
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1489
    new-instance v18, Landroid/content/ComponentName;

    .line 1490
    const-class v19, Lcom/android/settings_ex/Settings$OPDefaultHomeSettingsActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1489
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->isShowLauncherTile()Z

    move-result v19

    .line 1489
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    .line 1495
    const-string/jumbo v19, "show"

    sget-object v20, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v21, "eng"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 1494
    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 1496
    const-string/jumbo v18, "no_debugging_features"

    invoke-virtual/range {v17 .. v18}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    const/4 v13, 0x0

    .line 1497
    .local v13, "showDev":Z
    :goto_8
    new-instance v18, Landroid/content/ComponentName;

    .line 1498
    const-class v19, Lcom/android/settings_ex/Settings$DevelopmentSettingsActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1497
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v13, v10, v12}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1502
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/settings_ex/qstile/DevelopmentTiles;->setTilesEnabled(Landroid/content/Context;Z)V

    .line 1505
    const/4 v14, 0x0

    .line 1506
    .local v14, "showTimerSwitch":Z
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v18, "qualcomm.intent.action.TIMER_SWITCH"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1507
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 1508
    const/16 v19, 0x0

    .line 1507
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 1509
    .local v8, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 1515
    :cond_1
    :goto_9
    new-instance v18, Landroid/content/ComponentName;

    .line 1516
    const-class v19, Lcom/android/settings_ex/Settings$TimerSwitchSettingsActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1515
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v14, v10, v12}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1519
    if-eqz v10, :cond_10

    .line 1384
    :cond_2
    return-void

    .line 1401
    .end local v3    # "adapter":Landroid/nfc/NfcAdapter;
    .end local v8    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v13    # "showDev":Z
    .end local v14    # "showTimerSwitch":Z
    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 1407
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 1413
    :cond_5
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 1438
    :cond_6
    const/16 v18, 0x1

    goto/16 :goto_3

    .line 1437
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 1446
    .restart local v3    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 1444
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 1450
    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 1456
    :cond_b
    const/16 v18, 0x1

    goto/16 :goto_6

    .line 1479
    :cond_c
    const/16 v18, 0x1

    goto/16 :goto_7

    .line 1496
    :cond_d
    const/4 v13, 0x1

    .restart local v13    # "showDev":Z
    goto/16 :goto_8

    .line 1494
    .end local v13    # "showDev":Z
    :cond_e
    const/4 v13, 0x0

    .restart local v13    # "showDev":Z
    goto/16 :goto_8

    .line 1512
    .restart local v8    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v14    # "showTimerSwitch":Z
    :cond_f
    const/4 v14, 0x0

    goto :goto_9

    .line 1521
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v4

    .line 1522
    .local v4, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/drawer/DashboardCategory;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "category$iterator":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_exlib/drawer/DashboardCategory;

    .line 1523
    .local v5, "category":Lcom/android/settings_exlib/drawer/DashboardCategory;
    iget-object v0, v5, Lcom/android/settings_exlib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "tile$iterator":Ljava/util/Iterator;
    :cond_12
    :goto_a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings_exlib/drawer/Tile;

    .line 1524
    .local v15, "tile":Lcom/android/settings_exlib/drawer/Tile;
    iget-object v0, v15, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 1525
    .local v7, "component":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v19

    .line 1525
    invoke-static/range {v18 .. v19}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_12

    .line 1527
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v7, v1, v10, v12}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    goto :goto_a
.end method

.method private getLauncherPackageName()Ljava/util/List;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1536
    sget-object v6, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1537
    .local v1, "myPkg":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1538
    .local v2, "packageNames":Ljava/util/List;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1539
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.category.HOME"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1540
    sget-object v6, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1541
    const/high16 v7, 0x20000

    .line 1540
    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1542
    .local v3, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "ri$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1543
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1546
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1548
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 1549
    :cond_2
    return-object v8

    .line 1551
    :cond_3
    return-object v2
.end method

.method private getMetaData()V
    .locals 5

    .prologue
    .line 1575
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1576
    const/16 v4, 0x80

    .line 1575
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1577
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    :cond_0
    return-void

    .line 1578
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings_ex.FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 1579
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings_ex.ACTIVITY_ACTION"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mActivityAction:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1573
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :goto_0
    return-void

    .line 1580
    :catch_0
    move-exception v1

    .line 1582
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot get Metadata for: "

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

.method private getMetricsTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:show_fragment"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:show_fragment"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 673
    :cond_0
    const-string/jumbo v1, "com.android.settings_ex."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 674
    const-string/jumbo v1, "com.android.settings_ex."

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 676
    :cond_1
    return-object v0
.end method

.method private getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 1148
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    return-object v1

    .line 1150
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1151
    .local v0, "intentClass":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    .line 1153
    :cond_1
    const-string/jumbo v1, "com.android.settings_ex.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1154
    const-string/jumbo v1, "com.android.settings_ex.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1153
    if-nez v1, :cond_2

    .line 1155
    const-string/jumbo v1, "com.android.settings_ex.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1153
    if-eqz v1, :cond_3

    .line 1157
    :cond_2
    const-class v1, Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1160
    :cond_3
    return-object v0
.end method

.method private static isLikeShortCutIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 685
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 686
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 687
    return v3

    .line 689
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings_ex/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 690
    sget-object v2, Lcom/android/settings_ex/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    .line 689
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 692
    :cond_2
    return v3
.end method

.method private static isShortCutIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 680
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 681
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string/jumbo v1, "com.android.settings_ex.SHORTCUT"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isShowLauncherTile()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1556
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->getLauncherPackageName()Ljava/util/List;

    move-result-object v0

    .line 1557
    .local v0, "launcherName":Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 1558
    return v2

    .line 1560
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private revertToInitialFragment()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1692
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCoordinatorLayout:Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mAppBarLayout:Lcom/oneplus/lib/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mToolbarLayout:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    .line 1693
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCoordinatorLayout:Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setNestedScrollingEnabled(Z)V

    .line 1694
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mAppBarLayout:Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->setExpanded(Z)V

    .line 1695
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mToolbarLayout:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setTitleEnabled(Z)V

    .line 1698
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1699
    iput-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .line 1700
    iput-boolean v2, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 1701
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, ":settings:prefs"

    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 1703
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1704
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1689
    :cond_1
    return-void
.end method

.method private setCoordinatorLayoutEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCoordinatorLayout:Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mAppBarLayout:Lcom/oneplus/lib/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mToolbarLayout:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    .line 1659
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCoordinatorLayout:Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setNestedScrollingEnabled(Z)V

    .line 1660
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mAppBarLayout:Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->setExpanded(Z)V

    .line 1661
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mToolbarLayout:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setTitleEnabled(Z)V

    .line 1657
    :cond_0
    return-void
.end method

.method private setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .param p3, "isAdmin"    # Z
    .param p4, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 1566
    if-eqz p3, :cond_1

    .line 1570
    .end local p2    # "enabled":Z
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;Z)V

    .line 1565
    return-void

    .line 1566
    .restart local p2    # "enabled":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1567
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1568
    const/4 p2, 0x0

    .local p2, "enabled":Z
    goto :goto_0
.end method

.method private setTitleFromBackStack()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1000
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 1002
    .local v1, "count":I
    if-nez v1, :cond_1

    .line 1003
    iget v2, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    if-lez v2, :cond_0

    .line 1004
    iget v2, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsActivity;->setTitle(I)V

    .line 1008
    :goto_0
    return v3

    .line 1006
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1011
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 1012
    .local v0, "bse":Landroid/app/FragmentManager$BackStackEntry;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V

    .line 1014
    return v1
.end method

.method private setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V
    .locals 2
    .param p1, "bse"    # Landroid/app/FragmentManager$BackStackEntry;

    .prologue
    .line 1019
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v1

    .line 1020
    .local v1, "titleRes":I
    if-lez v1, :cond_1

    .line 1021
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1025
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    .line 1026
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1017
    :cond_0
    return-void

    .line 1023
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
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 965
    const-string/jumbo v5, ":settings:show_fragment_title_resid"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 966
    .local v3, "initialTitleResId":I
    if-lez v3, :cond_1

    .line 967
    iput-object v7, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 968
    iput v3, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    .line 971
    const-string/jumbo v5, ":settings:show_fragment_title_res_package_name"

    .line 970
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 972
    .local v4, "initialTitleResPackageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 975
    :try_start_0
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v6, 0x0

    .line 974
    invoke-virtual {p0, v4, v6, v5}, Lcom/android/settings_ex/SettingsActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 976
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 977
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 978
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    return-void

    .line 980
    .end local v0    # "authContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 981
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not find package"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 984
    .restart local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :cond_0
    iget v5, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/SettingsActivity;->setTitle(I)V

    goto :goto_0

    .line 987
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :cond_1
    iput v6, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    .line 988
    const-string/jumbo v5, ":settings:show_fragment_title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 989
    .local v2, "initialTitle":Ljava/lang/String;
    if-eqz v2, :cond_2

    .end local v2    # "initialTitle":Ljava/lang/String;
    :goto_1
    iput-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 990
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 989
    .restart local v2    # "initialTitle":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1
.end method

.method private setToolBar()V
    .locals 2

    .prologue
    .line 589
    iget-boolean v1, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v1, :cond_1

    .line 590
    const v1, 0x7f1102e9

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    iput-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mCoordinatorLayout:Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    .line 591
    const v1, 0x7f1102ea

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/AppBarLayout;

    iput-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mAppBarLayout:Lcom/oneplus/lib/design/widget/AppBarLayout;

    .line 592
    const v1, 0x7f1102eb

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    iput-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mToolbarLayout:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    .line 593
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 595
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 597
    :cond_0
    const v1, 0x7f1102ec

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    .line 598
    .local v0, "toolbar":Landroid/widget/Toolbar;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 588
    .end local v0    # "toolbar":Landroid/widget/Toolbar;
    :cond_1
    return-void
.end method

.method private switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;
    .locals 9
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "validate"    # Z
    .param p4, "addToBackStack"    # Z
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "withTransition"    # Z

    .prologue
    .line 1276
    const-class v6, Lcom/android/settings_ex/sim/SimSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1277
    const-string/jumbo v6, "Settings"

    const-string/jumbo v7, "switchToFragment, launch simSettings  "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "com.android.settings_ex.sim.SIM_SUB_INFO_SETTINGS"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1280
    .local v4, "provisioningIntent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1281
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->finish()V

    .line 1282
    const/4 v6, 0x0

    return-object v6

    .line 1285
    .end local v4    # "provisioningIntent":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v6, "com.android.settings_ex.Lte4GEnableSetting"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1286
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.settings.SETTINGS"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1287
    .local v2, "newIntent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1288
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1289
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->finish()V

    .line 1290
    const/4 v6, 0x0

    return-object v6

    .line 1293
    .end local v2    # "newIntent":Landroid/content/Intent;
    :cond_1
    const-string/jumbo v6, "com.android.settings_ex.ProfileMgrMain"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1294
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1295
    .local v3, "profilemgrIntent":Landroid/content/Intent;
    const-string/jumbo v6, "com.codeaurora.STARTPROFILE"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1296
    const-string/jumbo v6, "com.android.profile"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1297
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1298
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->finish()V

    .line 1299
    const/4 v6, 0x0

    return-object v6

    .line 1301
    .end local v3    # "profilemgrIntent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v6, "com.android.settings_ex.MobileNetworkMain"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1302
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1303
    .local v1, "mobileNetworkIntent":Landroid/content/Intent;
    const-string/jumbo v6, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1304
    const-string/jumbo v6, "com.qualcomm.qti.networksetting"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1305
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1306
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->finish()V

    .line 1307
    const/4 v6, 0x0

    return-object v6

    .line 1311
    .end local v1    # "mobileNetworkIntent":Landroid/content/Intent;
    :cond_3
    const-string/jumbo v6, "android.settings.SystemUpdateActivity"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1312
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->SystemUpdateHandle()V

    .line 1313
    const/4 v6, 0x0

    return-object v6

    .line 1317
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1321
    :cond_5
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1322
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 1323
    .local v5, "transaction":Landroid/app/FragmentTransaction;
    iget v6, p0, Lcom/android/settings_ex/SettingsActivity;->mMainContentId:I

    invoke-virtual {v5, v6, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1324
    if-eqz p7, :cond_6

    .line 1325
    iget-object v6, p0, Lcom/android/settings_ex/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    invoke-static {v6}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 1327
    :cond_6
    if-eqz p4, :cond_7

    .line 1328
    const-string/jumbo v6, ":settings:prefs"

    invoke-virtual {v5, v6}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1330
    :cond_7
    if-lez p5, :cond_a

    .line 1331
    invoke-virtual {v5, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1335
    :cond_8
    :goto_0
    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1336
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1337
    return-object v0

    .line 1318
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v5    # "transaction":Landroid/app/FragmentTransaction;
    :cond_9
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid fragment for this activity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1332
    .restart local v0    # "f":Landroid/app/Fragment;
    .restart local v5    # "transaction":Landroid/app/FragmentTransaction;
    :cond_a
    if-eqz p6, :cond_8

    .line 1333
    invoke-virtual {v5, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private switchToSearchResultsFragmentIfNeeded()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1667
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_0

    .line 1668
    return-void

    .line 1671
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings_ex/SettingsActivity;->setCoordinatorLayoutEnable(Z)V

    .line 1673
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/SettingsActivity;->mMainContentId:I

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
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 1682
    iput-boolean v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 1666
    return-void

    .line 1678
    .restart local v8    # "current":Landroid/app/Fragment;
    :cond_1
    const-class v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1679
    const v5, 0x7f0e0e0b

    move-object v0, p0

    move-object v6, v2

    move v7, v4

    .line 1677
    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    goto :goto_0
.end method

.method private updateSearchIndex()V
    .locals 2

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/SettingsActivity$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/SettingsActivity$4;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 696
    return-void
.end method

.method private updateTilesList()V
    .locals 1

    .prologue
    .line 1376
    new-instance v0, Lcom/android/settings_ex/SettingsActivity$9;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SettingsActivity$9;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 1372
    return-void
.end method


# virtual methods
.method public SystemUpdateHandle()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1342
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    .line 1343
    const-string/jumbo v10, "carrier_config"

    .line 1342
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1344
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1345
    .local v0, "b":Landroid/os/PersistableBundle;
    const-string/jumbo v9, "ci_action_on_sys_update_bool"

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1346
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/android/settings_ex/Utils;->ciActionOnSysUpdate(Landroid/content/Context;Landroid/os/PersistableBundle;)V

    .line 1349
    :cond_0
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v9, "android.settings.SYSTEM_UPDATE_SETTINGS"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1350
    .local v6, "newIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1351
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v7, v6, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 1353
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 1354
    .local v5, "listSize":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 1355
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 1356
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1357
    .local v2, "flags":I
    and-int/lit8 v9, v2, 0x1

    if-eqz v9, :cond_1

    .line 1360
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1361
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1362
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1360
    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 1363
    const/high16 v9, 0x10000000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1364
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1365
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->finish()V

    .line 1366
    return-void

    .line 1354
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1340
    .end local v2    # "flags":I
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-void
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 0
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 1248
    invoke-virtual {p0, p2, p3}, Lcom/android/settings_ex/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 1249
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->finish()V

    .line 1247
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 1117
    invoke-super {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1118
    .local v4, "superIntent":Landroid/content/Intent;
    invoke-direct {p0, v4}, Lcom/android/settings_ex/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 1121
    .local v3, "startingFragment":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1122
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1123
    .local v2, "modIntent":Landroid/content/Intent;
    const-string/jumbo v5, ":settings:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1124
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1125
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1126
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0    # "args":Landroid/os/Bundle;
    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 1130
    .end local v1    # "args":Landroid/os/Bundle;
    .restart local v0    # "args":Landroid/os/Bundle;
    :goto_0
    const-string/jumbo v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1131
    const-string/jumbo v5, ":settings:show_fragment_args"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1132
    return-object v2

    .line 1128
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "args":Landroid/os/Bundle;
    goto :goto_0

    .line 1134
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mActivityAction:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 1135
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1136
    .restart local v2    # "modIntent":Landroid/content/Intent;
    const-string/jumbo v5, ":settings:launch_activity_action"

    iget-object v6, p0, Lcom/android/settings_ex/SettingsActivity;->mActivityAction:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1137
    return-object v2

    .line 1140
    .end local v2    # "modIntent":Landroid/content/Intent;
    :cond_2
    return-object v4
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getResultIntentData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    new-instance v0, Lcom/android/settings_ex/SharedPreferencesLogger;

    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/SharedPreferencesLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 665
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 1588
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
    .line 1109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/settings_ex/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1110
    sget-object v1, Lcom/android/settings_ex/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 1109
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1112
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public needToRevertToInitialFragment()V
    .locals 1

    .prologue
    .line 1686
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1685
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1723
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCurrentSuggestion:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 1724
    if-eqz p2, :cond_0

    .line 1725
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mCurrentSuggestion:Landroid/content/ComponentName;

    .line 1726
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 1725
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1728
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1722
    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 996
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromBackStack()I

    .line 995
    return-void
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 1618
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 605
    invoke-super {p0, p1}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 606
    const-string/jumbo v0, "setting search"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-static {p0}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/search/Index;->update()V

    .line 609
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->setToolBar()V

    .line 604
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 30
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 728
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/SettingsActivity;->setRequestedOrientation(I)V

    .line 730
    invoke-super/range {p0 .. p1}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 731
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 732
    .local v28, "startTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->updateSearchIndex()V

    .line 734
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .line 736
    const/16 v7, 0x2000

    .line 735
    invoke-virtual {v4, v7}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 740
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getMetaData()V

    .line 741
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v22

    .line 742
    .local v22, "intent":Landroid/content/Intent;
    const-string/jumbo v4, ":settings:launch_activity_action"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 743
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/SettingsActivity;->mActivityAction:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 745
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/SettingsActivity;->mActivityAction:Ljava/lang/String;

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->finish()V

    .line 751
    return-void

    .line 746
    :catch_0
    move-exception v21

    .line 747
    .local v21, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "Settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Activity not found for action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/SettingsActivity;->mActivityAction:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 754
    .end local v21    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    const-string/jumbo v4, "settings:ui_options"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 755
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const-string/jumbo v7, "settings:ui_options"

    const/4 v8, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/view/Window;->setUiOptions(I)V

    .line 757
    :cond_3
    const-string/jumbo v4, ":settings:hide_drawer"

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 758
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/SettingsActivity;->setIsDrawerPresent(Z)V

    .line 761
    :cond_4
    const-string/jumbo v4, "development"

    .line 762
    const/4 v7, 0x0

    .line 761
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/android/settings_ex/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 765
    const-string/jumbo v4, ":settings:show_fragment"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 767
    .local v5, "initialFragmentName":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/android/settings_ex/SettingsActivity;->isShortCutIntent(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-static/range {v22 .. v22}, Lcom/android/settings_ex/SettingsActivity;->isLikeShortCutIntent(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 768
    const-string/jumbo v4, ":settings:show_fragment_as_shortcut"

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 767
    :goto_1
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShortcut:Z

    .line 770
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    .line 771
    .local v20, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v19

    .line 773
    .local v19, "className":Ljava/lang/String;
    const-class v4, Lcom/android/settings_ex/Settings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 774
    const-class v4, Lcom/android/settings_ex/Settings$WirelessSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 773
    if-nez v4, :cond_f

    .line 775
    const-class v4, Lcom/android/settings_ex/Settings$DeviceSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 773
    if-nez v4, :cond_f

    .line 776
    const-class v4, Lcom/android/settings_ex/Settings$PersonalSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 773
    if-nez v4, :cond_f

    .line 777
    const-class v4, Lcom/android/settings_ex/Settings$WirelessSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 773
    :goto_2
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    .line 782
    move-object/from16 v0, p0

    instance-of v4, v0, Lcom/android/settings_ex/SubSettings;

    if-nez v4, :cond_10

    .line 783
    const-string/jumbo v4, ":settings:show_fragment_as_subsetting"

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    .line 786
    .local v23, "isSubSettings":Z
    :goto_3
    if-eqz v23, :cond_5

    .line 788
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getThemeResId()I

    move-result v27

    .line 789
    .local v27, "themeResId":I
    const v4, 0x7f100412

    move/from16 v0, v27

    if-eq v0, v4, :cond_5

    .line 790
    const v4, 0x7f100414

    move/from16 v0, v27

    if-eq v0, v4, :cond_5

    .line 791
    const v4, 0x7f10040b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/SettingsActivity;->setTheme(I)V

    .line 796
    .end local v27    # "themeResId":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v4, :cond_6

    .line 797
    const v4, 0x7f100407

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/SettingsActivity;->setTheme(I)V

    .line 800
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v4, :cond_11

    .line 801
    const v4, 0x7f040192

    .line 800
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/SettingsActivity;->setContentView(I)V

    .line 802
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/SettingsActivity;->mMainContentId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    .line 803
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 804
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 819
    if-eqz p1, :cond_12

    .line 823
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->setToolBar()V

    .line 825
    const-string/jumbo v4, ":settings:search_menu_expanded"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 826
    const-string/jumbo v4, ":settings:search_query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 828
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 831
    const-string/jumbo v4, ":settings:categories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 832
    .local v18, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/drawer/DashboardCategory;>;"
    if-eqz v18, :cond_7

    .line 833
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 834
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 835
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromBackStack()I

    .line 838
    :cond_7
    const-string/jumbo v4, ":settings:show_home_as_up"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 839
    const-string/jumbo v4, ":settings:show_search"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    .line 870
    .end local v18    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/drawer/DashboardCategory;>;"
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v4, :cond_8

    .line 872
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v7, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 874
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v4, v7}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 877
    :cond_8
    const v4, 0x7f1102ee

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/widget/SwitchBar;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/SettingsActivity;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 878
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/SettingsActivity;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-eqz v4, :cond_9

    .line 879
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/SettingsActivity;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/settings_ex/widget/SwitchBar;->setMetricsTag(Ljava/lang/String;)V

    .line 882
    :cond_9
    const-string/jumbo v4, "extra_prefs_show_button_bar"

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 884
    const v4, 0x7f110283

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 885
    .local v16, "buttonBar":Landroid/view/View;
    if-eqz v16, :cond_c

    .line 886
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 888
    const v4, 0x7f110284

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 889
    .local v15, "backButton":Landroid/widget/Button;
    new-instance v4, Lcom/android/settings_ex/SettingsActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/settings_ex/SettingsActivity$5;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    invoke-virtual {v15, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 895
    const v4, 0x7f11015c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/Button;

    .line 896
    .local v26, "skipButton":Landroid/widget/Button;
    new-instance v4, Lcom/android/settings_ex/SettingsActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/settings_ex/SettingsActivity$6;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 902
    const v4, 0x7f1100da

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    .line 903
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/settings_ex/SettingsActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/settings_ex/SettingsActivity$7;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 911
    const-string/jumbo v4, "extra_prefs_set_next_text"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 912
    const-string/jumbo v4, "extra_prefs_set_next_text"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 913
    .local v17, "buttonText":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 914
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 920
    .end local v17    # "buttonText":Ljava/lang/String;
    :cond_a
    :goto_7
    const-string/jumbo v4, "extra_prefs_set_back_text"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 921
    const-string/jumbo v4, "extra_prefs_set_back_text"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 922
    .restart local v17    # "buttonText":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 923
    const/16 v4, 0x8

    invoke-virtual {v15, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 929
    .end local v17    # "buttonText":Ljava/lang/String;
    :cond_b
    :goto_8
    const-string/jumbo v4, "extra_prefs_show_skip"

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 930
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 935
    .end local v15    # "backButton":Landroid/widget/Button;
    .end local v16    # "buttonBar":Landroid/view/View;
    .end local v26    # "skipButton":Landroid/widget/Button;
    :cond_c
    invoke-static/range {p0 .. p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v25

    .line 936
    .local v25, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v25, :cond_d

    .line 937
    new-instance v24, Landroid/nfc/NdefMessage;

    const-string/jumbo v4, "com.android.settings_ex"

    invoke-static {v4}, Landroid/nfc/NdefRecord;->createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v4

    const/4 v7, 0x0

    new-array v7, v7, [Landroid/nfc/NdefRecord;

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v7}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 938
    .local v24, "msg":Landroid/nfc/NdefMessage;
    const/4 v4, 0x0

    new-array v4, v4, [Landroid/app/Activity;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2, v4}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 726
    .end local v24    # "msg":Landroid/nfc/NdefMessage;
    :cond_d
    return-void

    .line 767
    .end local v19    # "className":Ljava/lang/String;
    .end local v20    # "cn":Landroid/content/ComponentName;
    .end local v23    # "isSubSettings":Z
    .end local v25    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_e
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 773
    .restart local v19    # "className":Ljava/lang/String;
    .restart local v20    # "cn":Landroid/content/ComponentName;
    :cond_f
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 782
    :cond_10
    const/16 v23, 0x1

    goto/16 :goto_3

    .line 801
    .restart local v23    # "isSubSettings":Z
    :cond_11
    const v4, 0x7f040193

    goto/16 :goto_4

    .line 841
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v4, :cond_15

    .line 842
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    .line 844
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/SettingsActivity;->mIsShortcut:Z

    if-eqz v4, :cond_13

    .line 845
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 851
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings_ex/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 853
    const-string/jumbo v4, ":settings:show_fragment_args"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 855
    .local v6, "initialArguments":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 854
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 855
    const/4 v11, 0x0

    move-object/from16 v4, p0

    .line 854
    invoke-direct/range {v4 .. v11}, Lcom/android/settings_ex/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_5

    .line 846
    .end local v6    # "initialArguments":Landroid/os/Bundle;
    :cond_13
    if-eqz v23, :cond_14

    .line 847
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    goto :goto_9

    .line 849
    :cond_14
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    goto :goto_9

    .line 858
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SettingsActivity;->setToolBar()V

    .line 861
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 863
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    .line 864
    const v4, 0x7f0e0e0a

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    .line 865
    const-class v4, Lcom/android/settings_ex/dashboard/DashboardSummary;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 866
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 865
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 866
    const/4 v14, 0x0

    move-object/from16 v7, p0

    .line 865
    invoke-direct/range {v7 .. v14}, Lcom/android/settings_ex/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_5

    .line 872
    :cond_16
    const/4 v4, 0x1

    goto/16 :goto_6

    .line 917
    .restart local v15    # "backButton":Landroid/widget/Button;
    .restart local v16    # "buttonBar":Landroid/view/View;
    .restart local v17    # "buttonText":Ljava/lang/String;
    .restart local v26    # "skipButton":Landroid/widget/Button;
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/SettingsActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 926
    :cond_18
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 617
    iget-boolean v4, p0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 619
    :cond_0
    return v5

    .line 622
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 623
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v4, 0x7f140004

    invoke-virtual {v0, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 626
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 628
    .local v1, "query":Ljava/lang/String;
    const v4, 0x7f11041b

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    .line 629
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SearchView;

    iput-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    .line 631
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v4, :cond_3

    .line 632
    :cond_2
    return v5

    .line 635
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    if-eqz v4, :cond_4

    .line 636
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    iget-object v5, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 639
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 641
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "android:id/search_src_text"

    invoke-virtual {v4, v5, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 642
    .local v2, "searchViewId":I
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, v2}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 643
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->isAndroidModeOn(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 644
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b02b5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 649
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 650
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 652
    iget-boolean v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v4, :cond_5

    .line 653
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->expandActionView()Z

    .line 655
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, v1, v7}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 657
    return v7

    .line 646
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b02b6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1098
    invoke-super {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->onDestroy()V

    .line 1099
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 1101
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1100
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1102
    iput-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1097
    :cond_0
    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1631
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1632
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v0, :cond_0

    .line 1633
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->revertToInitialFragment()V

    .line 1636
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1623
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1624
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1626
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1738
    invoke-super {p0, p1}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 573
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 574
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    const v0, 0x7f0e083c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 577
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, -0x1

    .line 578
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 577
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 579
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 584
    const/4 v0, 0x0

    return v0
.end method

.method public onProfileTileOpen()V
    .locals 1

    .prologue
    .line 1651
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v0, :cond_0

    .line 1652
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->finish()V

    .line 1650
    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 1609
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1610
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    if-nez v0, :cond_0

    .line 1611
    const/4 v0, 0x0

    return v0

    .line 1613
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1602
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1603
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1604
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 948
    invoke-super {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->onResume()V

    .line 950
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "show_drawer_menu"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0201e7

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 947
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1032
    invoke-super {p0, p1}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1034
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1035
    const-string/jumbo v2, ":settings:categories"

    iget-object v3, p0, Lcom/android/settings_ex/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1038
    :cond_0
    const-string/jumbo v2, ":settings:show_home_as_up"

    iget-boolean v3, p0, Lcom/android/settings_ex/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1039
    const-string/jumbo v2, ":settings:show_search"

    iget-boolean v3, p0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1041
    iget-boolean v2, p0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    if-eqz v2, :cond_1

    .line 1047
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    .line 1048
    :goto_0
    const-string/jumbo v2, ":settings:search_menu_expanded"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1050
    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1051
    .local v1, "query":Ljava/lang/String;
    :goto_1
    const-string/jumbo v2, ":settings:search_query"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    .end local v1    # "query":Ljava/lang/String;
    :cond_1
    return-void

    .line 1047
    :cond_2
    const/4 v0, 0x0

    .local v0, "isExpanded":Z
    goto :goto_0

    .line 1050
    .end local v0    # "isExpanded":Z
    :cond_3
    const-string/jumbo v1, ""

    .restart local v1    # "query":Ljava/lang/String;
    goto :goto_1
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 1057
    invoke-super {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->onStart()V

    .line 1059
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v0, :cond_0

    .line 1060
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->revertToInitialFragment()V

    .line 1063
    :cond_0
    new-instance v0, Lcom/android/settings_ex/SettingsActivity$8;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SettingsActivity$8;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1069
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 1070
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1069
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1072
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1073
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mUserAddRemoveReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1074
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mUserAddRemoveReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1078
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mDisplaySearch:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1081
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;->updateTilesList()V

    .line 1056
    return-void

    .line 1079
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsActivity;->onQueryTextSubmit(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1086
    invoke-super {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->onStop()V

    .line 1088
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1089
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mUserAddRemoveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1090
    iget-object v1, p0, Lcom/android/settings_ex/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

    invoke-virtual {v1}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->unregister()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    :goto_0
    return-void

    .line 1091
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected onTileClicked(Lcom/android/settings_exlib/drawer/Tile;)V
    .locals 1
    .param p1, "tile"    # Lcom/android/settings_exlib/drawer/Tile;

    .prologue
    .line 1641
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v0, :cond_0

    .line 1643
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->openTile(Lcom/android/settings_exlib/drawer/Tile;)Z

    .line 1640
    :goto_0
    return-void

    .line 1645
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->onTileClicked(Lcom/android/settings_exlib/drawer/Tile;)V

    goto :goto_0
.end method

.method protected setMainContentId(I)V
    .locals 0
    .param p1, "contentId"    # I

    .prologue
    .line 961
    iput p1, p0, Lcom/android/settings_ex/SettingsActivity;->mMainContentId:I

    .line 960
    return-void
.end method

.method public setResultIntentData(Landroid/content/Intent;)V
    .locals 0
    .param p1, "resultIntentData"    # Landroid/content/Intent;

    .prologue
    .line 1713
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    .line 1712
    return-void
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 1597
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .prologue
    .line 1260
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1261
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    iget v1, p0, Lcom/android/settings_ex/SettingsActivity;->mMainContentId:I

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1262
    if-eqz p2, :cond_0

    .line 1263
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1264
    const-string/jumbo v1, ":settings:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1268
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1259
    return-void

    .line 1266
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
    .line 1184
    const/4 v6, 0x0

    .line 1185
    .local v6, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 1186
    if-eqz p4, :cond_1

    .line 1187
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1194
    .end local v6    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    .line 1193
    invoke-static/range {v0 .. v7}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 1183
    return-void

    .line 1190
    .restart local v6    # "title":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, ""

    .local v6, "title":Ljava/lang/String;
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
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1221
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 1222
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1210
    :goto_0
    return-void

    .line 1224
    :cond_0
    const/4 v4, 0x0

    .line 1225
    .local v4, "title":Ljava/lang/String;
    if-gez p3, :cond_1

    .line 1226
    if-eqz p4, :cond_2

    .line 1227
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1234
    .end local v4    # "title":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/android/settings_ex/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    .line 1233
    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V

    goto :goto_0

    .line 1230
    .restart local v4    # "title":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, ""

    .local v4, "title":Ljava/lang/String;
    goto :goto_1
.end method

.method public startSuggestion(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1717
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SettingsActivity;->mCurrentSuggestion:Landroid/content/ComponentName;

    .line 1718
    const/16 v0, 0x2a

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ex/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1716
    return-void
.end method
