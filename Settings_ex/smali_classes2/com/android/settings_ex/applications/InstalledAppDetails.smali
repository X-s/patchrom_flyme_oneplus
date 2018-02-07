.class public Lcom/android/settings_ex/applications/InstalledAppDetails;
.super Lcom/android/settings_ex/applications/AppInfoBase;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/InstalledAppDetails$1;,
        Lcom/android/settings_ex/applications/InstalledAppDetails$2;,
        Lcom/android/settings_ex/applications/InstalledAppDetails$3;,
        Lcom/android/settings_ex/applications/InstalledAppDetails$BatteryUpdater;,
        Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/settings_ex/applications/InstalledAppDetails$MemoryUpdater;
    }
.end annotation


# static fields
.field private static final DLG_DISABLE:I = 0x2

.field private static final DLG_FORCE_STOP:I = 0x1

.field private static final DLG_SPECIAL_DISABLE:I = 0x3

.field private static final KEY_BATTERY:Ljava/lang/String; = "battery"

.field private static final KEY_DATA:Ljava/lang/String; = "data_settings"

.field private static final KEY_GOOGLE__INPUTMETHOD:Ljava/lang/String; = "com.google.android.inputmethod.latin"

.field private static final KEY_HEADER:Ljava/lang/String; = "header_view"

.field private static final KEY_LATIN_INPUTMETHOD:Ljava/lang/String; = "com.android.inputmethod.latin"

.field private static final KEY_LAUNCH:Ljava/lang/String; = "preferred_settings"

.field private static final KEY_MEMORY:Ljava/lang/String; = "memory"

.field private static final KEY_NOTIFICATION:Ljava/lang/String; = "notification_settings"

.field private static final KEY_PERMISSION:Ljava/lang/String; = "permission_settings"

.field private static final KEY_STORAGE:Ljava/lang/String; = "storage_settings"

.field private static final LOADER_CHART_DATA:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "InstalledAppDetails"

.field private static final NOTIFICATION_TUNER_SETTING:Ljava/lang/String; = "show_importance_slider"

.field private static final REQUEST_REMOVE_DEVICE_ADMIN:I = 0x1

.field public static final REQUEST_UNINSTALL:I = 0x0

.field private static final SUB_INFO_FRAGMENT:I = 0x1

.field public static final UNINSTALL_ALL_USERS_MENU:I = 0x1

.field public static final UNINSTALL_UPDATES:I = 0x2


# instance fields
.field private final mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

.field private mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryPreference:Landroid/support/v7/preference/Preference;

.field private mChartData:Lcom/android/settings_exlib/net/ChartData;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private final mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settings_exlib/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mDataPreference:Landroid/support/v7/preference/Preference;

.field private mDisableAfterUninstall:Z

.field private mForceStopButton:Landroid/widget/Button;

.field private mHeader:Lcom/android/settings_ex/applications/LayoutPreference;

.field private final mHomePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mLaunchPreference:Landroid/support/v7/preference/Preference;

.field private mMemoryPreference:Landroid/support/v7/preference/Preference;

.field private mNotificationPreference:Landroid/support/v7/preference/Preference;

.field private final mPermissionCallback:Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;

.field private mPermissionsPreference:Landroid/support/v7/preference/Preference;

.field private mShowUninstalled:Z

.field private mSipper:Lcom/android/internal/os/BatterySipper;

.field protected mStats:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

.field protected mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mStoragePreference:Landroid/support/v7/preference/Preference;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/applications/InstalledAppDetails;)Lcom/android/internal/os/BatteryStatsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDataPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMemoryPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/net/INetworkStatsSession;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/applications/InstalledAppDetails;Lcom/android/settings_exlib/net/ChartData;)Lcom/android/settings_exlib/net/ChartData;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mChartData:Lcom/android/settings_exlib/net/ChartData;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/applications/InstalledAppDetails;Lcom/android/internal/os/BatterySipper;)Lcom/android/internal/os/BatterySipper;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/applications/InstalledAppDetails;)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getDataSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/applications/InstalledAppDetails;Ljava/lang/Class;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "fragment"    # Ljava/lang/Class;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings_ex/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # Z
    .param p3, "andDisable"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings_ex/applications/InstalledAppDetails;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppInfoBase;-><init>()V

    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 177
    new-instance v0, Lcom/android/settings_ex/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    .line 1212
    new-instance v0, Lcom/android/settings_ex/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$1;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1231
    new-instance v0, Lcom/android/settings_ex/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$2;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 1239
    new-instance v0, Lcom/android/settings_ex/applications/InstalledAppDetails$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$3;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    .line 1238
    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionCallback:Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    .line 124
    return-void
.end method

.method private addAppInstallerInfoPref(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 11
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    const/4 v10, 0x0

    .line 939
    const/4 v3, 0x0

    .line 942
    .local v3, "installerPackageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 946
    .end local v3    # "installerPackageName":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_0

    .line 947
    return-void

    .line 943
    .restart local v3    # "installerPackageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 944
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v7, Lcom/android/settings_ex/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception while retrieving the package installer of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 949
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "installerPackageName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/android/settings_ex/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 951
    .local v2, "installerLabel":Ljava/lang/CharSequence;
    if-nez v2, :cond_1

    .line 952
    return-void

    .line 954
    :cond_1
    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 955
    .local v0, "category":Landroid/support/v7/preference/PreferenceCategory;
    const v7, 0x7f0e0a32

    invoke-virtual {v0, v7}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 956
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 957
    new-instance v5, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 958
    .local v5, "pref":Landroid/support/v7/preference/Preference;
    const v7, 0x7f0e0a33

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 959
    const-string/jumbo v7, "app_info_store"

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 960
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v10

    const v8, 0x7f0e0a34

    invoke-virtual {p0, v8, v7}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 961
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.SHOW_APP_INFO"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 963
    .local v4, "intent":Landroid/content/Intent;
    invoke-direct {p0, v4}, Lcom/android/settings_ex/applications/InstalledAppDetails;->resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    .line 964
    .local v6, "result":Landroid/content/Intent;
    if-eqz v6, :cond_2

    .line 965
    const-string/jumbo v7, "android.intent.extra.PACKAGE_NAME"

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 966
    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 970
    :goto_1
    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 938
    return-void

    .line 968
    :cond_2
    invoke-virtual {v5, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private addDynamicPrefs()V
    .locals 11

    .prologue
    const v5, 0x7f0e0f04

    .line 869
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    return-void

    .line 872
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    .line 873
    .local v10, "screen":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/applications/DefaultHomePreference;->hasHomePreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 874
    new-instance v0, Lcom/android/settings_ex/applications/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 875
    const-class v2, Lcom/android/settings_ex/applications/AdvancedAppSettings;

    const-string/jumbo v3, "default_home"

    const v4, 0x7f0e0ff9

    .line 874
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/applications/ShortcutPreference;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;II)V

    invoke-virtual {v10, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 878
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->hasBrowserPreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 879
    new-instance v0, Lcom/android/settings_ex/applications/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 880
    const-class v2, Lcom/android/settings_ex/applications/AdvancedAppSettings;

    const-string/jumbo v3, "default_browser"

    const v4, 0x7f0e0f1e

    .line 879
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/applications/ShortcutPreference;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;II)V

    invoke-virtual {v10, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 883
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/applications/DefaultPhonePreference;->hasPhonePreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 884
    new-instance v0, Lcom/android/settings_ex/applications/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 885
    const-class v2, Lcom/android/settings_ex/applications/AdvancedAppSettings;

    const-string/jumbo v3, "default_phone_app"

    const v4, 0x7f0e0f20

    .line 884
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/applications/ShortcutPreference;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;II)V

    invoke-virtual {v10, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 888
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/applications/DefaultEmergencyPreference;->hasEmergencyPreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 889
    new-instance v0, Lcom/android/settings_ex/applications/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 890
    const-class v2, Lcom/android/settings_ex/applications/AdvancedAppSettings;

    const-string/jumbo v3, "default_emergency_app"

    .line 891
    const v4, 0x7f0e09f0

    .line 889
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/applications/ShortcutPreference;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;II)V

    invoke-virtual {v10, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 893
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/applications/DefaultSmsPreference;->hasSmsPreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 894
    new-instance v0, Lcom/android/settings_ex/applications/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 895
    const-class v2, Lcom/android/settings_ex/applications/AdvancedAppSettings;

    const-string/jumbo v3, "default_sms_app"

    const v4, 0x7f0e093d

    .line 894
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/applications/ShortcutPreference;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;II)V

    invoke-virtual {v10, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 898
    :cond_5
    const-string/jumbo v0, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->hasPermission(Ljava/lang/String;)Z

    move-result v7

    .line 899
    .local v7, "hasDrawOverOtherApps":Z
    const-string/jumbo v0, "android.permission.WRITE_SETTINGS"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->hasPermission(Ljava/lang/String;)Z

    move-result v8

    .line 900
    .local v8, "hasWriteSettings":Z
    if-nez v7, :cond_6

    if-eqz v8, :cond_8

    .line 901
    :cond_6
    new-instance v6, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 902
    .local v6, "category":Landroid/support/v7/preference/PreferenceCategory;
    const v0, 0x7f0e0f03

    invoke-virtual {v6, v0}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 903
    invoke-virtual {v10, v6}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 905
    if-eqz v7, :cond_7

    .line 906
    new-instance v9, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 907
    .local v9, "pref":Landroid/support/v7/preference/Preference;
    const v0, 0x7f0e0f7d

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 908
    const-string/jumbo v0, "system_alert_window"

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 909
    new-instance v0, Lcom/android/settings_ex/applications/InstalledAppDetails$8;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$8;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 917
    invoke-virtual {v6, v9}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 919
    .end local v9    # "pref":Landroid/support/v7/preference/Preference;
    :cond_7
    if-eqz v8, :cond_8

    .line 920
    new-instance v9, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 921
    .restart local v9    # "pref":Landroid/support/v7/preference/Preference;
    const v0, 0x7f0e0f8b

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 922
    const-string/jumbo v0, "write_settings_apps"

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 923
    new-instance v0, Lcom/android/settings_ex/applications/InstalledAppDetails$9;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$9;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 931
    invoke-virtual {v6, v9}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 935
    .end local v6    # "category":Landroid/support/v7/preference/PreferenceCategory;
    .end local v9    # "pref":Landroid/support/v7/preference/Preference;
    :cond_8
    invoke-direct {p0, v10}, Lcom/android/settings_ex/applications/InstalledAppDetails;->addAppInstallerInfoPref(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 868
    return-void
.end method

.method private checkForceStop()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 723
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    invoke-direct {p0, v6}, Lcom/android/settings_ex/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 722
    :goto_0
    return-void

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 729
    invoke-direct {p0, v5}, Lcom/android/settings_ex/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 731
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 732
    const-string/jumbo v2, "package"

    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 731
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 733
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.intent.extra.PACKAGES"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    const-string/jumbo v0, "android.intent.extra.UID"

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 735
    const-string/jumbo v0, "android.intent.extra.user_handle"

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 736
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 737
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    .line 736
    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 702
    const-string/jumbo v4, "activity"

    .line 701
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 703
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 704
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 705
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v3, p1, v2}, Lcom/android/settings_exlib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    .line 706
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v3, p1, v2}, Lcom/android/settings_exlib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 707
    .local v1, "newEnt":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    if-eqz v1, :cond_0

    .line 708
    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 710
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->checkForceStop()V

    .line 700
    return-void
.end method

.method private getDataSummary()Ljava/lang/CharSequence;
    .locals 7

    .prologue
    .line 630
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mChartData:Lcom/android/settings_exlib/net/ChartData;

    if-eqz v1, :cond_1

    .line 631
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mChartData:Lcom/android/settings_exlib/net/ChartData;

    iget-object v1, v1, Lcom/android/settings_exlib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v2

    .line 632
    .local v2, "totalBytes":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 633
    const v1, 0x7f0e0f6e

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 635
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 636
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 637
    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 638
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mChartData:Lcom/android/settings_exlib/net/ChartData;

    iget-object v4, v4, Lcom/android/settings_exlib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v4

    .line 639
    const v6, 0x10010

    .line 638
    invoke-static {v0, v4, v5, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    .line 636
    const v4, 0x7f0e0eea

    invoke-virtual {p0, v4, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 641
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "totalBytes":J
    :cond_1
    const v1, 0x7f0e0a16

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNotificationSummary(Lcom/android/settings_ex/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "appRow"    # Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1066
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "show_importance_slider"

    .line 1065
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_4

    const/4 v3, 0x1

    .line 1067
    .local v3, "showSlider":Z
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    .local v5, "summaryAttributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1069
    .local v4, "summary":Ljava/lang/StringBuffer;
    if-eqz v3, :cond_5

    .line 1070
    iget v6, p0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->appImportance:I

    const/16 v7, -0x3e8

    if-eq v6, v7, :cond_0

    .line 1071
    new-array v6, v9, [Ljava/lang/Object;

    .line 1072
    iget v7, p0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->appImportance:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f0e0ef6

    .line 1071
    invoke-virtual {p1, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1091
    :cond_0
    :goto_1
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v6, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1092
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 1091
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    .line 1093
    .local v2, "lockscreenSecure":Z
    if-eqz v2, :cond_1

    .line 1094
    iget v6, p0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->appVisOverride:I

    if-nez v6, :cond_9

    .line 1095
    const v6, 0x7f0e0ef2

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    :cond_1
    :goto_2
    iget-boolean v6, p0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->appBypassDnd:Z

    if-eqz v6, :cond_2

    .line 1101
    const v6, 0x7f0e0ef4

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1103
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1104
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_a

    .line 1105
    if-lez v1, :cond_3

    .line 1106
    const v6, 0x7f0e0ef5

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1108
    :cond_3
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1104
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1065
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "lockscreenSecure":Z
    .end local v3    # "showSlider":Z
    .end local v4    # "summary":Ljava/lang/StringBuffer;
    .end local v5    # "summaryAttributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "showSlider":Z
    goto :goto_0

    .line 1075
    .restart local v4    # "summary":Ljava/lang/StringBuffer;
    .restart local v5    # "summaryAttributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    iget-boolean v6, p0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v6, :cond_6

    .line 1076
    const v6, 0x7f0e0ef0

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1078
    :cond_6
    iget v6, p0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->appImportance:I

    if-nez v6, :cond_7

    .line 1079
    const v6, 0x7f0e03ba

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1080
    :cond_7
    iget v6, p0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->appImportance:I

    if-ne v6, v9, :cond_8

    .line 1081
    const v6, 0x7f0e03b8

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1082
    :cond_8
    iget v6, p0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->appImportance:I

    if-le v6, v9, :cond_0

    .line 1083
    iget v6, p0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->appImportance:I

    const/4 v7, 0x5

    if-ge v6, v7, :cond_0

    .line 1087
    const v6, 0x7f0e03b6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1096
    .restart local v2    # "lockscreenSecure":Z
    :cond_9
    iget v6, p0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->appVisOverride:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 1097
    const v6, 0x7f0e0ef3

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1110
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getNotificationSummary(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "appEntry"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1055
    new-instance v0, Lcom/android/settings_ex/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/NotificationBackend;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getNotificationSummary(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Landroid/content/Context;Lcom/android/settings_ex/notification/NotificationBackend;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getNotificationSummary(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Landroid/content/Context;Lcom/android/settings_ex/notification/NotificationBackend;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "appEntry"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backend"    # Lcom/android/settings_ex/notification/NotificationBackend;

    .prologue
    .line 1060
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p1, v1, v2}, Lcom/android/settings_ex/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    move-result-object v0

    .line 1061
    .local v0, "appRow":Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    invoke-static {v0, p1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getNotificationSummary(Lcom/android/settings_ex/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static getTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1045
    invoke-static {p0}, Lcom/android/settings_ex/datausage/DataUsageList;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0

    .line 1048
    :cond_0
    invoke-static {p0}, Lcom/android/settings_ex/datausage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1049
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0

    .line 1051
    :cond_1
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method private handleDisableable(Landroid/widget/Button;)Z
    .locals 5
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const v4, 0x7f0e09e1

    .line 191
    const/4 v0, 0x0

    .line 196
    .local v0, "disableable":Z
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.android.inputmethod.latin"

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    const-string/jumbo v1, "com.google.android.inputmethod.latin"

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 196
    if-nez v1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    .line 196
    if-eqz v1, :cond_1

    .line 201
    :cond_0
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    .line 210
    :goto_0
    return v0

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->isDisabledUntilUsed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 206
    :cond_2
    const v1, 0x7f0e09e2

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 207
    const/4 v0, 0x1

    goto :goto_0

    .line 203
    :cond_3
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    .line 204
    const/4 v0, 0x1

    .line 202
    goto :goto_0
.end method

.method private handleHeader()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 413
    const-string/jumbo v4, "header_view"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/applications/LayoutPreference;

    iput-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHeader:Lcom/android/settings_ex/applications/LayoutPreference;

    .line 416
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHeader:Lcom/android/settings_ex/applications/LayoutPreference;

    const v5, 0x7f11017f

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 417
    .local v0, "btnPanel":Landroid/view/View;
    const v4, 0x7f1101db

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 418
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v5, 0x7f0e09d8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 419
    const v4, 0x7f11033c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 420
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 422
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHeader:Lcom/android/settings_ex/applications/LayoutPreference;

    const v5, 0x7f11017e

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 423
    .local v1, "gear":Landroid/view/View;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.APPLICATION_PREFERENCES"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    .local v2, "i":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    invoke-direct {p0, v2}, Lcom/android/settings_ex/applications/InstalledAppDetails;->resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    .line 426
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 427
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 428
    new-instance v4, Lcom/android/settings_ex/applications/InstalledAppDetails$4;

    invoke-direct {v4, p0, v3}, Lcom/android/settings_ex/applications/InstalledAppDetails$4;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;Landroid/content/Intent;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    :goto_0
    return-void

    .line 435
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 974
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 975
    :cond_0
    return v2

    .line 977
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 978
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 979
    const/4 v1, 0x1

    return v1

    .line 977
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 982
    :cond_3
    return v2
.end method

.method private initUninstallButtons()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 219
    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    move v4, v6

    .line 220
    .local v4, "isBundled":Z
    :cond_0
    const/4 v2, 0x1

    .line 221
    .local v2, "enabled":Z
    if-eqz v4, :cond_9

    .line 222
    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-direct {p0, v7}, Lcom/android/settings_ex/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v2

    .line 234
    .end local v2    # "enabled":Z
    :goto_0
    if-eqz v4, :cond_1

    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 235
    const/4 v2, 0x0

    .line 241
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/settings_ex/applications/InstalledAppDetails;->isProfileOrDeviceOwner(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 242
    const/4 v2, 0x0

    .line 246
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/settings_ex/Utils;->isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 247
    const/4 v2, 0x0

    .line 251
    :cond_3
    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/admin/DevicePolicyManager;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 252
    const/4 v2, 0x0

    .line 261
    :cond_4
    if-eqz v2, :cond_5

    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 262
    if-eqz v4, :cond_b

    .line 263
    const/4 v2, 0x0

    .line 279
    :cond_5
    :goto_1
    iget-boolean v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    if-eqz v6, :cond_6

    .line 280
    const/4 v2, 0x0

    .line 285
    :cond_6
    :try_start_0
    const-string/jumbo v6, "webviewupdate"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v5

    .line 286
    .local v5, "webviewUpdateService":Landroid/webkit/IWebViewUpdateService;
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroid/webkit/IWebViewUpdateService;->isFallbackPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_7

    .line 287
    const/4 v2, 0x0

    .line 293
    :cond_7
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 294
    if-eqz v2, :cond_8

    .line 296
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    :cond_8
    return-void

    .line 224
    .end local v5    # "webviewUpdateService":Landroid/webkit/IWebViewUpdateService;
    .restart local v2    # "enabled":Z
    :cond_9
    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x800000

    and-int/2addr v7, v8

    if-nez v7, :cond_a

    .line 225
    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_a

    .line 228
    const/4 v2, 0x0

    .line 230
    :cond_a
    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v8, 0x7f0e09de

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 265
    .end local v2    # "enabled":Z
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v3, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 267
    .local v0, "currentDefaultHome":Landroid/content/ComponentName;
    if-nez v0, :cond_d

    .line 270
    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    if-le v7, v6, :cond_c

    const/4 v2, 0x1

    .restart local v2    # "enabled":Z
    goto :goto_1

    .end local v2    # "enabled":Z
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "enabled":Z
    goto :goto_1

    .line 274
    .end local v2    # "enabled":Z
    :cond_d
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v2, 0x0

    .restart local v2    # "enabled":Z
    goto :goto_1

    .end local v2    # "enabled":Z
    :cond_e
    const/4 v2, 0x1

    .restart local v2    # "enabled":Z
    goto :goto_1

    .line 289
    .end local v0    # "currentDefaultHome":Landroid/content/ComponentName;
    .end local v2    # "enabled":Z
    .end local v3    # "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private isDisabledUntilUsed()Z
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 215
    const/4 v1, 0x4

    .line 214
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProfileOrDeviceOwner(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 302
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 304
    .local v4, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 303
    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 305
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnAnyUser(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 306
    return v7

    .line 308
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "userInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 309
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 310
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 311
    return v7

    .line 314
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v5, 0x0

    return v5
.end method

.method private isSingleUser()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 837
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserCount()I

    move-result v0

    .line 838
    .local v0, "userCount":I
    if-eq v0, v1, :cond_0

    .line 839
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 838
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 839
    goto :goto_0
.end method

.method private resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 440
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 441
    .local v0, "result":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 441
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 4
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v1, 0x0

    .line 519
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHeader:Lcom/android/settings_ex/applications/LayoutPreference;

    const v3, 0x7f1100a0

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 520
    .local v0, "appSnippet":Landroid/view/View;
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v2, v3}, Lcom/android/settings_exlib/applications/ApplicationsState;->ensureIcon(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)V

    .line 521
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 522
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 521
    :cond_0
    invoke-static {v0, v2, v3, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->setupAppSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 518
    return-void
.end method

.method public static setupAppSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 8
    .param p0, "appSnippet"    # Landroid/view/View;
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "versionName"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1023
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 1024
    const v3, 0x1020018

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1023
    const v5, 0x7f040207

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1026
    const v3, 0x1020006

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1027
    .local v1, "iconView":Landroid/widget/ImageView;
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1029
    const v3, 0x1020016

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1030
    .local v2, "labelView":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1032
    const v3, 0x7f110386

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1034
    .local v0, "appVersion":Landroid/widget/TextView;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1035
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1036
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1037
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 1038
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 1037
    const v5, 0x7f0e0a19

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1022
    :goto_0
    return-void

    .line 1040
    :cond_0
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 526
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 528
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 529
    .local v1, "match":I
    if-ltz v1, :cond_0

    .line 530
    const/4 v2, 0x1

    return v2

    .line 532
    .end local v1    # "match":I
    :catch_0
    move-exception v0

    .line 537
    :cond_0
    return v3
.end method

.method private startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V
    .locals 1
    .param p2, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 763
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    invoke-static {p1, p2, p0, v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;Lcom/android/settings_ex/SettingsPreferenceFragment;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)V

    .line 762
    return-void
.end method

.method public static startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;Lcom/android/settings_ex/SettingsPreferenceFragment;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "caller"    # Lcom/android/settings_ex/SettingsPreferenceFragment;
    .param p3, "appEntry"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/CharSequence;",
            "Lcom/android/settings_ex/SettingsPreferenceFragment;",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    .line 769
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 770
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "package"

    iget-object v3, p3, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string/jumbo v1, "uid"

    iget-object v3, p3, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 772
    const-string/jumbo v1, "hideInfoButton"

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 774
    invoke-virtual {p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 775
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 767
    return-void
.end method

.method private startManagePermissionsActivity()V
    .locals 5

    .prologue
    .line 743
    sget-boolean v2, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    .line 745
    .local v2, "isCtaVersion":Z
    if-eqz v2, :cond_0

    .line 746
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.oneplus.security.action.OPPERMISSION_APP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 747
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "packageName"

    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :goto_1
    return-void

    .line 750
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 751
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.PACKAGE_NAME"

    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    const-string/jumbo v3, "hideInfoButton"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "InstalledAppDetails"

    const-string/jumbo v4, "No app can handle android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # Z
    .param p3, "andDisable"    # Z

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->stopListeningToPackageRemove()V

    .line 693
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 694
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 695
    .local v1, "uninstallIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 696
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 697
    iput-boolean p3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 690
    return-void
.end method

.method private updateBattery()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 616
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    if-eqz v2, :cond_0

    .line 617
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 618
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v0

    .line 620
    .local v0, "dischargeAmount":I
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 621
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v4

    .line 620
    div-double/2addr v2, v4

    .line 621
    int-to-double v4, v0

    .line 620
    mul-double/2addr v2, v4

    .line 621
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 620
    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 622
    .local v1, "percentOfMax":I
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryPreference:Landroid/support/v7/preference/Preference;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f0e0f3c

    invoke-virtual {p0, v4, v3}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 615
    .end local v0    # "dischargeAmount":I
    .end local v1    # "percentOfMax":I
    :goto_0
    return-void

    .line 624
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 625
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryPreference:Landroid/support/v7/preference/Preference;

    const v3, 0x7f0e0f3d

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDynamicPrefs()V
    .locals 5

    .prologue
    const v3, 0x7f0e04b5

    const v2, 0x7f0e04b4

    .line 986
    const-string/jumbo v1, "default_home"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 987
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 988
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/settings_ex/applications/DefaultHomePreference;->isHomeDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 991
    :cond_0
    const-string/jumbo v1, "default_browser"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 992
    if-eqz v0, :cond_1

    .line 993
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->isBrowserDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 996
    :cond_1
    const-string/jumbo v1, "default_phone_app"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 997
    if-eqz v0, :cond_2

    .line 998
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/settings_ex/applications/DefaultPhonePreference;->isPhoneDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 1001
    :cond_2
    const-string/jumbo v1, "default_emergency_app"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 1002
    if-eqz v0, :cond_3

    .line 1003
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    .line 1004
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1003
    invoke-static {v1, v4}, Lcom/android/settings_ex/applications/DefaultEmergencyPreference;->isEmergencyDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 1006
    :cond_3
    const-string/jumbo v1, "default_sms_app"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 1007
    if-eqz v0, :cond_4

    .line 1008
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/settings_ex/applications/DefaultSmsPreference;->isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_4
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 1011
    :cond_4
    const-string/jumbo v1, "system_alert_window"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 1012
    if-eqz v0, :cond_5

    .line 1013
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    invoke-static {v1, v2}, Lcom/android/settings_ex/applications/DrawOverlayDetails;->getSummary(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1015
    :cond_5
    const-string/jumbo v1, "write_settings_apps"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 1016
    if-eqz v0, :cond_6

    .line 1017
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    invoke-static {v1, v2}, Lcom/android/settings_ex/applications/WriteSettingsDetails;->getSummary(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 985
    :cond_6
    return-void

    :cond_7
    move v1, v3

    .line 989
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 994
    goto :goto_1

    :cond_9
    move v1, v3

    .line 999
    goto :goto_2

    :cond_a
    move v1, v3

    .line 1004
    goto :goto_3

    :cond_b
    move v2, v3

    .line 1009
    goto :goto_4
.end method

.method private updateForceStopButton(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 714
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 713
    :goto_0
    return-void

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 718
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 6
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .prologue
    const v5, 0x7f0e0a2d

    const v2, 0x7f0e0a2c

    const v4, 0x7f0e0a07

    const/4 v3, 0x0

    .line 646
    packed-switch p1, :pswitch_data_0

    .line 687
    return-object v3

    .line 648
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 649
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 648
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 651
    new-instance v1, Lcom/android/settings_ex/applications/InstalledAppDetails$5;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$5;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    .line 648
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 662
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 663
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 662
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 665
    new-instance v1, Lcom/android/settings_ex/applications/InstalledAppDetails$6;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$6;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    .line 662
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 675
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 676
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e0a25

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 675
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 677
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e0a26

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 675
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 678
    new-instance v1, Lcom/android/settings_ex/applications/InstalledAppDetails$7;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$7;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    const v2, 0x7f0e0a06

    .line 675
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 646
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 342
    const/16 v0, 0x14

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 377
    invoke-super {p0, p1}, Lcom/android/settings_ex/applications/AppInfoBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 378
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 379
    return-void

    .line 381
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->handleHeader()V

    .line 383
    const-string/jumbo v0, "notification_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationPreference:Landroid/support/v7/preference/Preference;

    .line 384
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 385
    const-string/jumbo v0, "storage_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mStoragePreference:Landroid/support/v7/preference/Preference;

    .line 386
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mStoragePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 387
    const-string/jumbo v0, "permission_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/support/v7/preference/Preference;

    .line 388
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 389
    const-string/jumbo v0, "data_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDataPreference:Landroid/support/v7/preference/Preference;

    .line 390
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDataPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDataPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 393
    :cond_1
    const-string/jumbo v0, "battery"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryPreference:Landroid/support/v7/preference/Preference;

    .line 394
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 395
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 396
    const-string/jumbo v0, "memory"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMemoryPreference:Landroid/support/v7/preference/Preference;

    .line 397
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMemoryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 399
    const-string/jumbo v0, "preferred_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/Preference;

    .line 400
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    .line 401
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 376
    :goto_0
    return-void

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 408
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 497
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/applications/AppInfoBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 498
    packed-switch p1, :pswitch_data_0

    .line 496
    :goto_0
    return-void

    .line 500
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz v0, :cond_0

    .line 501
    iput-boolean v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 502
    new-instance v1, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 503
    const/4 v2, 0x3

    .line 502
    invoke-direct {v1, p0, v0, v2}, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v2, v3, [Ljava/lang/Object;

    .line 504
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v2, v4

    .line 502
    invoke-virtual {v1, v2}, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 508
    :cond_0
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 509
    invoke-virtual {p0, v3, v3}, Lcom/android/settings_ex/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    goto :goto_0

    .line 511
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->startListeningToPackageRemove()V

    goto :goto_0

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 783
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    if-nez v6, :cond_0

    .line 784
    invoke-virtual {p0, v9, v9}, Lcom/android/settings_ex/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 785
    return-void

    .line 787
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 788
    .local v2, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_b

    .line 789
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 790
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->stopListeningToPackageRemove()V

    .line 791
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 792
    .local v0, "activity":Landroid/app/Activity;
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/settings_ex/DeviceAdminAdd;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 793
    .local v4, "uninstallDAIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    .line 794
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    .line 793
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    invoke-virtual {v0, v4, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 796
    return-void

    .line 798
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v4    # "uninstallDAIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 799
    iget v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUserId:I

    .line 798
    invoke-static {v6, v2, v7}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfUninstallBlocked(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 800
    .local v1, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    iget-boolean v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    if-nez v6, :cond_5

    .line 801
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUserId:I

    invoke-static {v6, v2, v7}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    .line 802
    :goto_0
    if-eqz v1, :cond_2

    if-eqz v3, :cond_6

    .line 804
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_9

    .line 805
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_3

    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->isDisabledUntilUsed()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 815
    :cond_3
    new-instance v6, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;

    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v7, v9, [Ljava/lang/Object;

    .line 817
    check-cast v5, Ljava/lang/Object;

    aput-object v5, v7, v8

    .line 815
    invoke-virtual {v6, v7}, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 782
    .end local v1    # "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    :cond_4
    :goto_1
    return-void

    .line 800
    .restart local v1    # "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    :cond_5
    const/4 v3, 0x1

    .local v3, "uninstallBlockedBySystem":Z
    goto :goto_0

    .line 803
    .end local v3    # "uninstallBlockedBySystem":Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/settings_exlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    .line 809
    :cond_7
    iget-boolean v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v5, :cond_8

    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->isSingleUser()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 810
    const/4 v5, 0x3

    invoke-virtual {p0, v5, v8}, Lcom/android/settings_ex/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_1

    .line 812
    :cond_8
    const/4 v5, 0x2

    invoke-virtual {p0, v5, v8}, Lcom/android/settings_ex/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_1

    .line 819
    :cond_9
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x800000

    and-int/2addr v5, v6

    if-nez v5, :cond_a

    .line 820
    invoke-direct {p0, v2, v9, v8}, Lcom/android/settings_ex/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 822
    :cond_a
    invoke-direct {p0, v2, v8, v8}, Lcom/android/settings_ex/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 824
    .end local v1    # "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    :cond_b
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v5, :cond_4

    .line 825
    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppsControlDisallowedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    if-eqz v5, :cond_d

    .line 829
    :cond_c
    invoke-virtual {p0, v9, v8}, Lcom/android/settings_ex/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_1

    .line 827
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppsControlDisallowedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 826
    invoke-static {v5, v6}, Lcom/android/settings_exlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 320
    invoke-super {p0, p1}, Lcom/android/settings_ex/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    .line 322
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    .line 323
    const v2, 0x7f080034

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/InstalledAppDetails;->addPreferencesFromResource(I)V

    .line 324
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->addDynamicPrefs()V

    .line 326
    invoke-static {}, Lcom/android/settings_ex/Utils;->isBandwidthControlEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    const-string/jumbo v2, "netstats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 327
    invoke-static {v2}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    .line 330
    .local v1, "statsService":Landroid/net/INetworkStatsService;
    :try_start_0
    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v1    # "statsService":Landroid/net/INetworkStatsService;
    :goto_0
    new-instance v2, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 319
    return-void

    .line 331
    .restart local v1    # "statsService":Landroid/net/INetworkStatsService;
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 335
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "statsService":Landroid/net/INetworkStatsService;
    :cond_0
    const-string/jumbo v2, "data_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/InstalledAppDetails;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 447
    const/4 v0, 0x2

    const v1, 0x7f0e09e4

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 449
    const v0, 0x7f0e09df

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 446
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 373
    invoke-super {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->onDestroy()V

    .line 371
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 484
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 492
    return v1

    .line 486
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 487
    return v2

    .line 489
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 490
    return v2

    .line 484
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPackageRemoved()V
    .locals 2

    .prologue
    .line 1115
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->finishActivity(I)V

    .line 1116
    invoke-super {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->onPackageRemoved()V

    .line 1114
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 367
    invoke-super {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->onPause()V

    .line 365
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 844
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mStoragePreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 845
    const-class v0, Lcom/android/settings_ex/applications/AppStorageSettings;

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mStoragePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    .line 865
    :goto_0
    return v4

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 847
    const-class v0, Lcom/android/settings_ex/notification/AppNotificationSettings;

    .line 848
    const v1, 0x7f0e0e47

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 847
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 849
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 850
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->startManagePermissionsActivity()V

    goto :goto_0

    .line 851
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_3

    .line 852
    const-class v0, Lcom/android/settings_ex/applications/AppLaunchSettings;

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 853
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMemoryPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_4

    .line 854
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 855
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ProcStatsData;->getMemInfo()Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mStats:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    .line 854
    invoke-static {v0, v1, v5, v2}, Lcom/android/settings_ex/applications/ProcessStatsBase;->launchMemoryDetail(Lcom/android/settings_ex/SettingsActivity;Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;Lcom/android/settings_ex/applications/ProcStatsPackageEntry;Z)V

    goto :goto_0

    .line 856
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDataPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_5

    .line 857
    const-class v0, Lcom/android/settings_ex/datausage/AppDataUsage;

    const v1, 0x7f0e0ee9

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 858
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_6

    .line 859
    new-instance v3, Lcom/android/settings_ex/fuelgauge/BatteryEntry;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    const/4 v6, 0x0

    invoke-direct {v3, v0, v6, v1, v5}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 860
    .local v3, "entry":Lcom/android/settings_ex/fuelgauge/BatteryEntry;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 861
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move v5, v2

    .line 860
    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->startBatteryDetailPage(Lcom/android/settings_ex/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings_ex/fuelgauge/BatteryEntry;ZZ)V

    goto :goto_0

    .line 863
    .end local v3    # "entry":Lcom/android/settings_ex/fuelgauge/BatteryEntry;
    :cond_6
    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 455
    iget-boolean v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v2, :cond_0

    .line 456
    return-void

    .line 458
    :cond_0
    const/4 v0, 0x1

    .line 459
    .local v0, "showIt":Z
    iget-boolean v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v2, :cond_4

    .line 460
    const/4 v0, 0x0

    .line 472
    :cond_1
    :goto_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 473
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_a

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 474
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 475
    .local v1, "uninstallUpdatesItem":Landroid/view/MenuItem;
    iget-boolean v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    if-eqz v2, :cond_b

    :cond_2
    :goto_2
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 476
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 477
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 478
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppsControlDisallowedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 477
    invoke-static {v2, v1, v3}, Lcom/android/settings_exlib/RestrictedLockUtils;->setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 454
    :cond_3
    return-void

    .line 461
    .end local v1    # "uninstallUpdatesItem":Landroid/view/MenuItem;
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    if-nez v2, :cond_5

    .line 462
    const/4 v0, 0x0

    goto :goto_0

    .line 463
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    .line 464
    const/4 v0, 0x0

    goto :goto_0

    .line 465
    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 466
    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    .line 467
    :cond_8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_9

    .line 468
    const/4 v0, 0x0

    goto :goto_0

    .line 469
    :cond_9
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v6, :cond_1

    .line 470
    const/4 v0, 0x0

    goto :goto_0

    :cond_a
    move v2, v4

    .line 473
    goto :goto_1

    .restart local v1    # "uninstallUpdatesItem":Landroid/view/MenuItem;
    :cond_b
    move v4, v3

    .line 475
    goto :goto_2
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 347
    invoke-super {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->onResume()V

    .line 348
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v1, :cond_0

    .line 349
    return-void

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_exlib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    .line 352
    new-instance v0, Lcom/android/settings_exlib/AppItem;

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v0, v1}, Lcom/android/settings_exlib/AppItem;-><init>(I)V

    .line 353
    .local v0, "app":Lcom/android/settings_exlib/AppItem;
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/AppItem;->addUid(I)V

    .line 354
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v1, :cond_1

    .line 355
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 356
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings_exlib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings_exlib/AppItem;)Landroid/os/Bundle;

    move-result-object v2

    .line 357
    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 355
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 359
    :cond_1
    new-instance v1, Lcom/android/settings_ex/applications/InstalledAppDetails$BatteryUpdater;

    invoke-direct {v1, p0, v5}, Lcom/android/settings_ex/applications/InstalledAppDetails$BatteryUpdater;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;Lcom/android/settings_ex/applications/InstalledAppDetails$BatteryUpdater;)V

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/applications/InstalledAppDetails$BatteryUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 360
    new-instance v1, Lcom/android/settings_ex/applications/InstalledAppDetails$MemoryUpdater;

    invoke-direct {v1, p0, v5}, Lcom/android/settings_ex/applications/InstalledAppDetails$MemoryUpdater;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;Lcom/android/settings_ex/applications/InstalledAppDetails$MemoryUpdater;)V

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/applications/InstalledAppDetails$MemoryUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 361
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->updateDynamicPrefs()V

    .line 346
    return-void
.end method

.method protected refreshUi()Z
    .locals 13

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    .line 543
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    if-nez v9, :cond_0

    .line 544
    const/4 v9, 0x0

    return v9

    .line 547
    :cond_0
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v9, :cond_1

    .line 548
    const/4 v9, 0x0

    return v9

    .line 552
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .local v4, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v4}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 554
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 555
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 556
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 557
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 558
    .local v0, "activityPkg":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 562
    .local v7, "metadata":Landroid/os/Bundle;
    if-eqz v7, :cond_2

    .line 563
    const-string/jumbo v9, "android.app.home.alternate"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 564
    .local v6, "metaPkg":Ljava/lang/String;
    invoke-direct {p0, v6, v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 565
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 555
    .end local v6    # "metaPkg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 570
    .end local v0    # "activityPkg":Ljava/lang/String;
    .end local v7    # "metadata":Landroid/os/Bundle;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->checkForceStop()V

    .line 571
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v9}, Lcom/android/settings_ex/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 572
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 575
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 576
    .local v2, "context":Landroid/app/Activity;
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mStoragePreference:Landroid/support/v7/preference/Preference;

    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    invoke-static {v10, v2}, Lcom/android/settings_ex/applications/AppStorageSettings;->getSummary(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 578
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 579
    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionCallback:Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    .line 578
    invoke-static {v9, v10, v11}, Lcom/android/settings_ex/applications/PermissionsSummaryHelper;->getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V

    .line 580
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/Preference;

    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v11, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 581
    iget-object v12, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 580
    invoke-static {v10, v11, v12, v2}, Lcom/android/settings_exlib/applications/AppUtils;->getLaunchByDefaultSummary(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Landroid/hardware/usb/IUsbManager;Landroid/content/pm/PackageManager;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationPreference:Landroid/support/v7/preference/Preference;

    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 583
    iget-object v11, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    .line 582
    invoke-static {v10, v2, v11}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getNotificationSummary(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Landroid/content/Context;Lcom/android/settings_ex/notification/NotificationBackend;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDataPreference:Landroid/support/v7/preference/Preference;

    if-eqz v9, :cond_4

    .line 585
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDataPreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getDataSummary()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 588
    :cond_4
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->updateBattery()V

    .line 590
    iget-boolean v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mInitialized:Z

    if-nez v9, :cond_7

    .line 592
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mInitialized:Z

    .line 593
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v9, v9, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    if-nez v9, :cond_6

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mShowUninstalled:Z

    .line 612
    :cond_5
    const/4 v9, 0x1

    return v9

    .line 593
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 598
    :cond_7
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 599
    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v10, v10, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v11, 0x2200

    .line 598
    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 601
    .local v1, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget-boolean v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mShowUninstalled:Z

    if-nez v9, :cond_5

    .line 605
    iget v9, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    :goto_2
    return v9

    :cond_8
    const/4 v9, 0x0

    goto :goto_2

    .line 607
    .end local v1    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    .line 608
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v9, 0x0

    return v9
.end method
