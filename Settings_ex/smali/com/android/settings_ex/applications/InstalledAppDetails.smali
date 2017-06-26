.class public Lcom/android/settings_ex/applications/InstalledAppDetails;
.super Lcom/android/settings_ex/applications/AppInfoBase;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/settings_ex/applications/InstalledAppDetails$BatteryUpdater;,
        Lcom/android/settings_ex/applications/InstalledAppDetails$MemoryUpdater;
    }
.end annotation


# static fields
.field private static final DLG_DISABLE:I = 0x2

.field private static final DLG_FACTORY_RESET:I = 0x4

.field private static final DLG_FORCE_STOP:I = 0x1

.field private static final DLG_SPECIAL_DISABLE:I = 0x3

.field private static final KEY_BATTERY:Ljava/lang/String; = "battery"

.field private static final KEY_DATA:Ljava/lang/String; = "data_settings"

.field private static final KEY_HEADER:Ljava/lang/String; = "header_view"

.field private static final KEY_LAUNCH:Ljava/lang/String; = "preferred_settings"

.field private static final KEY_MEMORY:Ljava/lang/String; = "memory"

.field private static final KEY_NOTIFICATION:Ljava/lang/String; = "notification_settings"

.field private static final KEY_PERMISSION:Ljava/lang/String; = "permission_settings"

.field private static final KEY_STORAGE:Ljava/lang/String; = "storage_settings"

.field private static final LOADER_CHART_DATA:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "InstalledAppDetails"

.field public static final REQUEST_UNINSTALL:I = 0x0

.field private static final SUB_INFO_FRAGMENT:I = 0x1

.field public static final UNINSTALL_ALL_USERS_MENU:I = 0x1

.field public static final UNINSTALL_UPDATES:I = 0x2


# instance fields
.field private final mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

.field private mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryPreference:Landroid/preference/Preference;

.field private mChartData:Lcom/android/settings_ex/net/ChartData;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private final mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settings_ex/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mDataPreference:Landroid/preference/Preference;

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

.field private mLaunchPreference:Landroid/preference/Preference;

.field private mMemoryPreference:Landroid/preference/Preference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private final mPermissionCallback:Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;

.field private mPermissionReceiver:Landroid/content/BroadcastReceiver;

.field private mPermissionsPreference:Landroid/preference/Preference;

.field private mShowUninstalled:Z

.field private mSipper:Lcom/android/internal/os/BatterySipper;

.field protected mStats:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

.field protected mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mStoragePreference:Landroid/preference/Preference;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppInfoBase;-><init>()V

    .line 132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 149
    new-instance v0, Lcom/android/settings_ex/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    .line 925
    new-instance v0, Lcom/android/settings_ex/applications/InstalledAppDetails$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$5;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 944
    new-instance v0, Lcom/android/settings_ex/applications/InstalledAppDetails$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$6;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 951
    new-instance v0, Lcom/android/settings_ex/applications/InstalledAppDetails$7;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$7;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionCallback:Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/applications/InstalledAppDetails;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/settings_ex/applications/InstalledAppDetails;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMemoryPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/applications/InstalledAppDetails;)Lcom/android/internal/os/BatteryStatsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings_ex/applications/InstalledAppDetails;Lcom/android/internal/os/BatterySipper;)Lcom/android/internal/os/BatterySipper;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;
    .param p1, "x1"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings_ex/applications/InstalledAppDetails;Lcom/android/settings_ex/net/ChartData;)Lcom/android/settings_ex/net/ChartData;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;
    .param p1, "x1"    # Lcom/android/settings_ex/net/ChartData;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mChartData:Lcom/android/settings_ex/net/ChartData;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings_ex/applications/InstalledAppDetails;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getDataSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private checkForceStop()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 651
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    invoke-direct {p0, v6}, Lcom/android/settings_ex/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 667
    :goto_0
    return-void

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 657
    invoke-direct {p0, v5}, Lcom/android/settings_ex/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 659
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v2, "package"

    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 661
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    const-string v0, "android.intent.extra.UID"

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 663
    const-string v0, "android.intent.extra.user_handle"

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 664
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 627
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 639
    :goto_0
    return-void

    .line 630
    :cond_0
    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 631
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 632
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 633
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v4, p1, v3}, Lcom/android/settings_exlib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    .line 634
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v4, p1, v3}, Lcom/android/settings_exlib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    move-result-object v2

    .line 635
    .local v2, "newEnt":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    if-eqz v2, :cond_1

    .line 636
    iput-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 638
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->checkForceStop()V

    goto :goto_0
.end method

.method private getDataSummary()Ljava/lang/CharSequence;
    .locals 9

    .prologue
    .line 557
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mChartData:Lcom/android/settings_ex/net/ChartData;

    if-eqz v1, :cond_1

    .line 558
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v1, v1, Lcom/android/settings_ex/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v2

    .line 559
    .local v2, "totalBytes":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 560
    const v1, 0x7f0c0d7a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 567
    .end local v2    # "totalBytes":J
    :goto_0
    return-object v1

    .line 562
    .restart local v2    # "totalBytes":J
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 563
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f0c0d04

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v6, v6, Lcom/android/settings_ex/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v6}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v6

    const v8, 0x10010

    invoke-static {v0, v6, v7, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v1, v4}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 567
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "totalBytes":J
    :cond_1
    const v1, 0x7f0c07d8

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getNotificationSummary(Lcom/android/settings_ex/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "appRow"    # Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 801
    iget-boolean v1, p0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v1, :cond_0

    .line 802
    const v1, 0x7f0c0d0a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 823
    :goto_0
    return-object v1

    .line 804
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 805
    .local v0, "notifSummary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-boolean v1, p0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->priority:Z

    if-eqz v1, :cond_1

    .line 806
    const v1, 0x7f0c0d0c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->sensitive:Z

    if-eqz v1, :cond_2

    .line 809
    const v1, 0x7f0c0d0b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->peekable:Z

    if-nez v1, :cond_3

    .line 812
    const v1, 0x7f0c0d0d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 823
    const v1, 0x7f0c0d09

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 816
    :pswitch_0
    const v1, 0x7f0c0d0f

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 819
    :pswitch_1
    const v1, 0x7f0c0d0e

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 821
    :pswitch_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_0

    .line 814
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNotificationSummary(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "appEntry"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 792
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
    .line 796
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v1, v2}, Lcom/android/settings_ex/notification/NotificationBackend;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    move-result-object v0

    .line 797
    .local v0, "appRow":Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    invoke-static {v0, p1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getNotificationSummary(Lcom/android/settings_ex/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static getTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 782
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 788
    :goto_0
    return-object v0

    .line 785
    :cond_0
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    goto :goto_0

    .line 788
    :cond_1
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    goto :goto_0
.end method

.method private handleDisableable(Landroid/widget/Button;)Z
    .locals 4
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const v3, 0x7f0c07a1

    .line 165
    const/4 v0, 0x0

    .line 169
    .local v0, "disableable":Z
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v1, v2}, Lcom/android/settings_ex/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    .line 180
    :goto_0
    return v0

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->isDisabledUntilUsed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 173
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    .line 174
    const/4 v0, 0x1

    goto :goto_0

    .line 176
    :cond_2
    const v1, 0x7f0c07a2

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 177
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleHeader()V
    .locals 3

    .prologue
    .line 370
    const-string v1, "header_view"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/LayoutPreference;

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHeader:Lcom/android/settings_ex/applications/LayoutPreference;

    .line 373
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHeader:Lcom/android/settings_ex/applications/LayoutPreference;

    const v2, 0x7f1200c1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 374
    .local v0, "btnPanel":Landroid/view/View;
    const v1, 0x7f12024f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 375
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v2, 0x7f0c0798

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 376
    const v1, 0x7f12024d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 377
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 378
    return-void
.end method

.method private initUninstallButtons()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 188
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    move v3, v4

    .line 189
    .local v3, "isBundled":Z
    :goto_0
    const/4 v1, 0x1

    .line 190
    .local v1, "enabled":Z
    if-eqz v3, :cond_6

    .line 191
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-direct {p0, v6}, Lcom/android/settings_ex/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v1

    .line 203
    :goto_1
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 204
    const/4 v1, 0x0

    .line 207
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/settings_ex/applications/InstalledAppDetails;->isProfileOrDeviceOwner(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 208
    const/4 v1, 0x0

    .line 219
    :cond_1
    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v7, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 220
    if-eqz v3, :cond_8

    .line 221
    const/4 v1, 0x0

    .line 238
    :cond_2
    :goto_2
    iget-boolean v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v4, :cond_3

    .line 239
    const/4 v1, 0x0

    .line 242
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 243
    if-eqz v1, :cond_4

    .line 245
    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    :cond_4
    return-void

    .end local v1    # "enabled":Z
    .end local v3    # "isBundled":Z
    :cond_5
    move v3, v5

    .line 188
    goto :goto_0

    .line 193
    .restart local v1    # "enabled":Z
    .restart local v3    # "isBundled":Z
    :cond_6
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x800000

    and-int/2addr v6, v7

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_7

    .line 197
    const/4 v1, 0x0

    .line 199
    :cond_7
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v7, 0x7f0c079e

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 223
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v2, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 225
    .local v0, "currentDefaultHome":Landroid/content/ComponentName;
    if-nez v0, :cond_a

    .line 228
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-le v6, v4, :cond_9

    move v1, v4

    :goto_3
    goto :goto_2

    :cond_9
    move v1, v5

    goto :goto_3

    .line 233
    :cond_a
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    move v1, v4

    :goto_4
    goto :goto_2

    :cond_b
    move v1, v5

    goto :goto_4
.end method

.method private isDisabledUntilUsed()Z
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v1, 0x4

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
    const/4 v5, 0x1

    .line 254
    iget-object v6, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 255
    .local v4, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 256
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 265
    :goto_0
    return v5

    .line 259
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 260
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 261
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 265
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 4
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 449
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHeader:Lcom/android/settings_ex/applications/LayoutPreference;

    const v2, 0x7f120016

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 450
    .local v0, "appSnippet":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v1, v2}, Lcom/android/settings_exlib/applications/ApplicationsState;->ensureIcon(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)V

    .line 451
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v3, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    invoke-static {v0, v2, v3, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->setupAppSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 452
    return-void

    .line 451
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setupAppSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 8
    .param p0, "appSnippet"    # Landroid/view/View;
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "versionName"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 761
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04014c

    const v3, 0x1020018

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 764
    const v3, 0x1020006

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 765
    .local v1, "iconView":Landroid/widget/ImageView;
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 767
    const v3, 0x1020016

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 768
    .local v2, "labelView":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    const v3, 0x7f12026c

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 772
    .local v0, "appVersion":Landroid/widget/TextView;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 773
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 774
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 775
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c07db

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    :goto_0
    return-void

    .line 777
    :cond_0
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;

    .prologue
    .line 455
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 457
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 458
    .local v0, "match":I
    if-ltz v0, :cond_0

    .line 459
    const/4 v1, 0x1

    .line 466
    .end local v0    # "match":I
    :goto_0
    return v1

    .line 461
    :catch_0
    move-exception v1

    .line 466
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V
    .locals 7
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
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    .line 692
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 693
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "package"

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v1, "uid"

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 695
    const-string v1, "hideInfoButton"

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 697
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 698
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    move-object v4, p2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 699
    return-void
.end method

.method private startManagePermissionsActivity()V
    .locals 5

    .prologue
    .line 671
    sget-boolean v2, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    .line 673
    .local v2, "isCtaVersion":Z
    if-eqz v2, :cond_0

    .line 674
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.oneplus.security.action.OPPERMISSION_APP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 675
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "packageName"

    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :goto_1
    return-void

    .line 678
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 679
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.PACKAGE_NAME"

    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    const-string v3, "hideInfoButton"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "InstalledAppDetails"

    const-string v4, "No app can handle android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # Z
    .param p3, "andDisable"    # Z

    .prologue
    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 619
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 620
    .local v1, "uninstallIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 621
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 622
    iput-boolean p3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 623
    return-void
.end method

.method private updateBattery()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 544
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    if-eqz v2, :cond_0

    .line 545
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 546
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v0

    .line 547
    .local v0, "dischargeAmount":I
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v4

    div-double/2addr v2, v4

    int-to-double v4, v0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 549
    .local v1, "percentOfMax":I
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    const v3, 0x7f0c0d55

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 554
    .end local v0    # "dischargeAmount":I
    .end local v1    # "percentOfMax":I
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 552
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    const v3, 0x7f0c0d56

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateForceStopButton(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 648
    :goto_0
    return-void

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 646
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected createDialog(II)Lcom/oneplus/app/OPAlertDialog;
    .locals 7
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .prologue
    const v6, 0x7f0c07ec

    const v5, 0x7f0c07c7

    const v4, 0x7f0c07c8

    const/4 v0, 0x0

    .line 572
    packed-switch p1, :pswitch_data_0

    .line 613
    :goto_0
    return-object v0

    .line 574
    :pswitch_0
    new-instance v1, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c07ed

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/applications/InstalledAppDetails$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$1;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    invoke-virtual {v1, v6, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 584
    :pswitch_1
    new-instance v1, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c07ef

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/applications/InstalledAppDetails$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$2;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    invoke-virtual {v1, v6, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 593
    :pswitch_2
    new-instance v1, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c07e5

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c07e6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/applications/InstalledAppDetails$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$3;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    invoke-virtual {v1, v5, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 603
    :pswitch_3
    new-instance v1, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c07cc

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c07cd

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/applications/InstalledAppDetails$4;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$4;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V

    invoke-virtual {v1, v5, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 572
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 292
    const/16 v0, 0x14

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 330
    invoke-super {p0, p1}, Lcom/android/settings_ex/applications/AppInfoBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 331
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->handleHeader()V

    .line 336
    const-string v0, "notification_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationPreference:Landroid/preference/Preference;

    .line 337
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 338
    const-string v0, "storage_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mStoragePreference:Landroid/preference/Preference;

    .line 339
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mStoragePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 340
    const-string v0, "permission_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;

    .line 341
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 347
    const-string v0, "data_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    .line 348
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 351
    :cond_1
    const-string v0, "battery"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    .line 352
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 353
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 354
    const-string v0, "memory"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMemoryPreference:Landroid/preference/Preference;

    .line 355
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMemoryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 357
    const-string v0, "preferred_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    .line 358
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_4

    .line 359
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_3

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 362
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0

    .line 365
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 426
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/applications/AppInfoBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 427
    if-nez p1, :cond_1

    .line 428
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz v1, :cond_0

    .line 429
    iput-boolean v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 431
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x2200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 434
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    .line 435
    new-instance v2, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v1, v3}, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->refreshUi()Z

    move-result v1

    if-nez v1, :cond_1

    .line 442
    invoke-virtual {p0, v5, v5}, Lcom/android/settings_ex/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 445
    :cond_1
    return-void

    .line 438
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 707
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 708
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_5

    .line 709
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 710
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->isDisabledUntilUsed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 711
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_1

    .line 712
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v4}, Lcom/android/settings_ex/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v4}, Lcom/android/settings_ex/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 717
    :cond_2
    new-instance v2, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, p0, v1, v4}, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 720
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-nez v1, :cond_4

    .line 721
    invoke-direct {p0, v0, v3, v4}, Lcom/android/settings_ex/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 723
    :cond_4
    invoke-direct {p0, v0, v4, v4}, Lcom/android/settings_ex/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 725
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 726
    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 271
    invoke-super {p0, p1}, Lcom/android/settings_ex/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    .line 273
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    .line 274
    const v2, 0x7f080026

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/InstalledAppDetails;->addPreferencesFromResource(I)V

    .line 276
    invoke-static {}, Lcom/android/settings_ex/Utils;->isBandwidthControlEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    const-string v2, "netstats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    .line 280
    .local v1, "statsService":Landroid/net/INetworkStatsService;
    :try_start_0
    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v1    # "statsService":Landroid/net/INetworkStatsService;
    :goto_0
    new-instance v2, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 288
    return-void

    .line 281
    .restart local v1    # "statsService":Landroid/net/INetworkStatsService;
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 285
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "statsService":Landroid/net/INetworkStatsService;
    :cond_0
    const-string v2, "data_settings"

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

    .line 382
    const/4 v0, 0x2

    const v1, 0x7f0c07a4

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 383
    const v0, 0x7f0c079f

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 385
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 321
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    .line 326
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->onDestroy()V

    .line 327
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 413
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 421
    :goto_0
    return v0

    .line 415
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 418
    :pswitch_1
    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 413
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 315
    invoke-super {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->onPause()V

    .line 316
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 733
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mStoragePreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_0

    .line 734
    const-class v1, Lcom/android/settings_ex/applications/AppStorageSettings;

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mStoragePreference:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/settings_ex/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    .line 757
    :goto_0
    return v6

    .line 735
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 736
    const-class v1, Lcom/android/settings_ex/notification/AppNotificationSettings;

    const v3, 0x7f0c0c75

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/settings_ex/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 737
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_2

    .line 738
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->startManagePermissionsActivity()V

    goto :goto_0

    .line 739
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_3

    .line 740
    const-class v1, Lcom/android/settings_ex/applications/AppLaunchSettings;

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/settings_ex/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 741
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mMemoryPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_4

    .line 742
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/SettingsActivity;

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mStatsManager:Lcom/android/settings_ex/applications/ProcStatsData;

    invoke-virtual {v3}, Lcom/android/settings_ex/applications/ProcStatsData;->getMemInfo()Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mStats:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    invoke-static {v1, v3, v4}, Lcom/android/settings_ex/applications/ProcessStatsBase;->launchMemoryDetail(Lcom/android/settings_ex/SettingsActivity;Lcom/android/settings_ex/applications/ProcStatsData$MemInfo;Lcom/android/settings_ex/applications/ProcStatsPackageEntry;)V

    goto :goto_0

    .line 743
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_5

    .line 744
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 745
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "showAppImmediatePkg"

    iget-object v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v1, "from_installedappdetails"

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 747
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 748
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    const-class v1, Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    const v4, 0x7f0c0d03

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 750
    .end local v0    # "sa":Lcom/android/settings_ex/SettingsActivity;
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_6

    .line 751
    new-instance v7, Lcom/android/settings_ex/fuelgauge/BatteryEntry;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    iget-object v8, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    invoke-direct {v7, v1, v4, v5, v8}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 752
    .local v7, "entry":Lcom/android/settings_ex/fuelgauge/BatteryEntry;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/SettingsActivity;

    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-static {v1, v4, v3, v7, v6}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->startBatteryDetailPage(Lcom/android/settings_ex/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings_ex/fuelgauge/BatteryEntry;Z)V

    goto/16 :goto_0

    .end local v7    # "entry":Lcom/android/settings_ex/fuelgauge/BatteryEntry;
    :cond_6
    move v6, v3

    .line 755
    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 389
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v1, :cond_0

    .line 409
    :goto_0
    return-void

    .line 392
    :cond_0
    const/4 v0, 0x1

    .line 393
    .local v0, "showIt":Z
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_2

    .line 394
    const/4 v0, 0x0

    .line 406
    :cond_1
    :goto_1
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 407
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_8

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 408
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-nez v4, :cond_9

    :goto_3
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 395
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    if-nez v1, :cond_3

    .line 396
    const/4 v0, 0x0

    goto :goto_1

    .line 397
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 398
    const/4 v0, 0x0

    goto :goto_1

    .line 399
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 400
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 401
    :cond_6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_7

    .line 402
    const/4 v0, 0x0

    goto :goto_1

    .line 403
    :cond_7
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v5, :cond_1

    .line 404
    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    move v1, v3

    .line 407
    goto :goto_2

    :cond_9
    move v2, v3

    .line 408
    goto :goto_3
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 297
    invoke-super {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->onResume()V

    .line 298
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v1, :cond_0

    .line 310
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_exlib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    .line 302
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DataUsageSummary$AppItem;-><init>(I)V

    .line 303
    .local v0, "app":Lcom/android/settings_ex/DataUsageSummary$AppItem;
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DataUsageSummary$AppItem;->addUid(I)V

    .line 304
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v1, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/settings_ex/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings_ex/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 308
    :cond_1
    new-instance v1, Lcom/android/settings_ex/applications/InstalledAppDetails$BatteryUpdater;

    invoke-direct {v1, p0, v6}, Lcom/android/settings_ex/applications/InstalledAppDetails$BatteryUpdater;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;Lcom/android/settings_ex/applications/InstalledAppDetails$1;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/applications/InstalledAppDetails$BatteryUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 309
    new-instance v1, Lcom/android/settings_ex/applications/InstalledAppDetails$MemoryUpdater;

    invoke-direct {v1, p0, v6}, Lcom/android/settings_ex/applications/InstalledAppDetails$MemoryUpdater;-><init>(Lcom/android/settings_ex/applications/InstalledAppDetails;Lcom/android/settings_ex/applications/InstalledAppDetails$1;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/applications/InstalledAppDetails$MemoryUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected refreshUi()Z
    .locals 13

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    .line 472
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    if-nez v9, :cond_0

    .line 473
    const/4 v9, 0x0

    .line 540
    :goto_0
    return v9

    .line 476
    :cond_0
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v9, :cond_1

    .line 477
    const/4 v9, 0x0

    goto :goto_0

    .line 481
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v4, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v4}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 483
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 484
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 485
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 486
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 487
    .local v0, "activityPkg":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 491
    .local v7, "metadata":Landroid/os/Bundle;
    if-eqz v7, :cond_2

    .line 492
    const-string v9, "android.app.home.alternate"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 493
    .local v6, "metaPkg":Ljava/lang/String;
    invoke-direct {p0, v6, v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 494
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 484
    .end local v6    # "metaPkg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 499
    .end local v0    # "activityPkg":Ljava/lang/String;
    .end local v7    # "metadata":Landroid/os/Bundle;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->checkForceStop()V

    .line 500
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v9}, Lcom/android/settings_ex/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 501
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 504
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 505
    .local v2, "context":Landroid/app/Activity;
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mStoragePreference:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    invoke-static {v10, v2}, Lcom/android/settings_ex/applications/AppStorageSettings;->getSummary(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v9, :cond_4

    .line 507
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 509
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionCallback:Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-static {v9, v10, v11}, Lcom/android/settings_ex/applications/PermissionsSummaryHelper;->getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;)Landroid/content/BroadcastReceiver;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    .line 511
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v11, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iget-object v12, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v10, v11, v12, v2}, Lcom/android/settings_ex/Utils;->getLaunchByDeafaultSummary(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Landroid/hardware/usb/IUsbManager;Landroid/content/pm/PackageManager;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mNotificationPreference:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v11, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    invoke-static {v10, v2, v11}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getNotificationSummary(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Landroid/content/Context;Lcom/android/settings_ex/notification/NotificationBackend;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    if-eqz v9, :cond_5

    .line 514
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getDataSummary()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 517
    :cond_5
    invoke-direct {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->updateBattery()V

    .line 519
    iget-boolean v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mInitialized:Z

    if-nez v9, :cond_8

    .line 521
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mInitialized:Z

    .line 522
    iget-object v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v9, v9, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    if-nez v9, :cond_7

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mShowUninstalled:Z

    .line 540
    :cond_6
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 522
    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    .line 527
    :cond_8
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v10, v10, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v11, 0x2200

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 529
    .local v1, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget-boolean v9, p0, Lcom/android/settings_ex/applications/InstalledAppDetails;->mShowUninstalled:Z

    if-nez v9, :cond_6

    .line 533
    iget v9, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 535
    .end local v1    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    .line 536
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v9, 0x0

    goto/16 :goto_0
.end method
