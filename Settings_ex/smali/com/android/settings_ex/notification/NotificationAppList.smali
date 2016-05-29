.class public Lcom/android/settings_ex/notification/NotificationAppList;
.super Lcom/android/settings_ex/PinnedHeaderListFragment;
.source "NotificationAppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/NotificationAppList$Backend;,
        Lcom/android/settings_ex/notification/NotificationAppList$AppRow;,
        Lcom/android/settings_ex/notification/NotificationAppList$Row;,
        Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;,
        Lcom/android/settings_ex/notification/NotificationAppList$ViewHolder;
    }
.end annotation


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final DEBUG:Z

.field private static final EMPTY_SUBTITLE:Ljava/lang/String; = ""

.field private static final SECTION_AFTER_Z:Ljava/lang/String; = "**"

.field private static final SECTION_BEFORE_A:Ljava/lang/String; = "*"

.field private static final SECTION_NORMAL:Ljava/lang/String; = "Normal"

.field private static final SECTION_PRIORITY:Ljava/lang/String; = "Priority"

.field private static final TAG:Ljava/lang/String; = "NotificationAppList"

.field private static keyguard:I

.field static leftAppPriority:I

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/notification/NotificationAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field static rightAppPriority:I


# instance fields
.field PriorityMaxFlag:Z

.field private mAdapter:Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;

.field private mBackend:Lcom/android/settings_ex/notification/NotificationAppList$Backend;

.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mListViewState:Landroid/os/Parcelable;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mProfileSpinnerAdapter:Lcom/android/settings_ex/UserSpinnerAdapter;

.field private final mRefreshAppsListRunnable:Ljava/lang/Runnable;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/notification/NotificationAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSortedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/notification/NotificationAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinner:Landroid/widget/Spinner;

.field private mSystemSignature:[Landroid/content/pm/Signature;

.field private mUM:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "NotificationAppList"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/notification/NotificationAppList;->DEBUG:Z

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/notification/NotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 405
    new-instance v0, Lcom/android/settings_ex/notification/NotificationAppList$1;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/NotificationAppList$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/notification/NotificationAppList;->mRowComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings_ex/PinnedHeaderListFragment;-><init>()V

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mHandler:Landroid/os/Handler;

    .line 93
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mSections:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Lcom/android/settings_ex/notification/NotificationAppList$Backend;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/NotificationAppList$Backend;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mBackend:Lcom/android/settings_ex/notification/NotificationAppList$Backend;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->PriorityMaxFlag:Z

    .line 482
    new-instance v0, Lcom/android/settings_ex/notification/NotificationAppList$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/NotificationAppList$2;-><init>(Lcom/android/settings_ex/notification/NotificationAppList;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    .line 734
    new-instance v0, Lcom/android/settings_ex/notification/NotificationAppList$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/NotificationAppList$3;-><init>(Lcom/android/settings_ex/notification/NotificationAppList;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    .line 741
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationAppList;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/settings_ex/notification/NotificationAppList;->mRowComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationAppList;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mSections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/notification/NotificationAppList;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationAppList;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/NotificationAppList;->getSection(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/notification/NotificationAppList;Lcom/android/settings_ex/notification/NotificationAppList$AppRow;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationAppList;
    .param p1, "x1"    # Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/notification/NotificationAppList;->changePackagePriority(Lcom/android/settings_ex/notification/NotificationAppList$AppRow;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationAppList;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationAppList;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/notification/NotificationAppList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationAppList;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationAppList;->refreshDisplayedItems()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationAppList;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationAppList;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/android/settings_ex/notification/NotificationAppList;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/notification/NotificationAppList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationAppList;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/content/pm/LauncherApps;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationAppList;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationAppList;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/notification/NotificationAppList;)Lcom/android/settings_ex/notification/NotificationAppList$Backend;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationAppList;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mBackend:Lcom/android/settings_ex/notification/NotificationAppList$Backend;

    return-object v0
.end method

.method public static applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/notification/NotificationAppList$AppRow;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings_ex/notification/NotificationAppList$AppRow;>;"
    .local p2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v5, Lcom/android/settings_ex/notification/NotificationAppList;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v6, "NotificationAppList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " preference activities"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    const-string v5, " ;_;"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 462
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 463
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 464
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    .line 465
    .local v4, "row":Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
    if-nez v4, :cond_2

    .line 466
    const-string v5, "NotificationAppList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") for unknown package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 459
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
    :cond_1
    const-string v5, ""

    goto :goto_0

    .line 471
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "row":Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
    :cond_2
    iget-object v5, v4, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    .line 472
    const-string v5, "NotificationAppList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 477
    :cond_3
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/android/settings_ex/notification/NotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    goto :goto_1

    .line 480
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
    :cond_4
    return-void
.end method

.method private changePackagePriority(Lcom/android/settings_ex/notification/NotificationAppList$AppRow;Ljava/lang/String;)V
    .locals 4
    .param p1, "r"    # Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 679
    iget-object v2, p1, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 681
    :try_start_0
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 682
    .local v1, "sINM":Landroid/app/INotificationManager;
    iget v2, p1, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->uid:I

    const/4 v3, 0x2

    invoke-interface {v1, p2, v2, v3}, Landroid/app/INotificationManager;->setPackagePriority(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    .end local v1    # "sINM":Landroid/app/INotificationManager;
    :cond_0
    :goto_0
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static collectConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;)V
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/notification/NotificationAppList$AppRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings_ex/notification/NotificationAppList$AppRow;>;"
    invoke-static {p0}, Lcom/android/settings_ex/notification/NotificationAppList;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    .line 454
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {p0, p1, v0}, Lcom/android/settings_ex/notification/NotificationAppList;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    .line 455
    return-void
.end method

.method private getSection(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 202
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "*"

    .line 206
    :goto_0
    return-object v1

    .line 203
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 204
    .local v0, "c":C
    const/16 v1, 0x41

    if-ge v0, v1, :cond_2

    const-string v1, "*"

    goto :goto_0

    .line 205
    :cond_2
    const/16 v1, 0x5a

    if-le v0, v1, :cond_3

    const-string v1, "**"

    goto :goto_0

    .line 206
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings_ex/notification/NotificationAppList$Backend;)Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "backend"    # Lcom/android/settings_ex/notification/NotificationAppList$Backend;

    .prologue
    .line 424
    new-instance v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;-><init>()V

    .line 425
    .local v0, "row":Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    .line 426
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->uid:I

    .line 428
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 434
    iget-object v2, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings_ex/notification/NotificationAppList$Backend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->banned:Z

    .line 435
    iget-object v2, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings_ex/notification/NotificationAppList$Backend;->getHighPriority(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->priority:Z

    .line 436
    iget-object v2, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings_ex/notification/NotificationAppList$Backend;->getSensitive(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->sensitive:Z

    .line 438
    iget-object v2, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings_ex/notification/NotificationAppList$Backend;->getPackagePriority(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->appPriority:I

    .line 440
    return-object v0

    .line 429
    :catch_0
    move-exception v1

    .line 430
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "NotificationAppList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    iget-object v2, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private loadAppsList()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method

.method public static queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    sget-boolean v1, Lcom/android/settings_ex/notification/NotificationAppList;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "NotificationAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings_ex/notification/NotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    sget-object v1, Lcom/android/settings_ex/notification/NotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 450
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method private refreshDisplayedItems()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 690
    sget-boolean v7, Lcom/android/settings_ex/notification/NotificationAppList;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "NotificationAppList"

    const-string v8, "Refreshing apps..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_0
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mAdapter:Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;

    invoke-virtual {v7}, Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;->clear()V

    .line 692
    iget-object v8, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    monitor-enter v8

    .line 693
    const/4 v6, 0x0

    .line 694
    .local v6, "section":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 695
    .local v0, "N":I
    const/4 v2, 0x1

    .line 696
    .local v2, "first":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_7

    .line 699
    :try_start_1
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    .line 700
    .local v5, "row":Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
    if-eqz v5, :cond_1

    iget-object v7, v5, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->section:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 696
    .end local v5    # "row":Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 703
    .restart local v5    # "row":Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
    :cond_2
    iget-object v7, v5, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->section:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 704
    iget-object v6, v5, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->section:Ljava/lang/String;

    .line 705
    new-instance v4, Lcom/android/settings_ex/notification/NotificationAppList$Row;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lcom/android/settings_ex/notification/NotificationAppList$Row;-><init>(Lcom/android/settings_ex/notification/NotificationAppList$1;)V

    .line 706
    .local v4, "r":Lcom/android/settings_ex/notification/NotificationAppList$Row;
    iput-object v6, v4, Lcom/android/settings_ex/notification/NotificationAppList$Row;->section:Ljava/lang/String;

    .line 708
    const/4 v2, 0x1

    .line 710
    .end local v4    # "r":Lcom/android/settings_ex/notification/NotificationAppList$Row;
    :cond_3
    iput-boolean v2, v5, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->first:Z

    .line 712
    iget-object v7, v5, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/settings_ex/notification/NotificationSettingsUtil;->isAppNotificationFilteredOutInSettingsList(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 714
    sget-boolean v7, Lcom/android/settings_ex/notification/NotificationAppList;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string v9, "NotificationAppList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pkg is filtered out "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v5, :cond_5

    iget-object v7, v5, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, v5, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    :goto_2
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_4
    :goto_3
    const/4 v2, 0x0

    goto :goto_1

    .line 714
    :cond_5
    const-string v7, ""

    goto :goto_2

    .line 716
    :cond_6
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mAdapter:Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;

    invoke-virtual {v7, v5}, Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;->add(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 720
    .end local v5    # "row":Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
    :catch_0
    move-exception v1

    .line 721
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    .line 725
    .end local v0    # "N":I
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v2    # "first":Z
    .end local v3    # "i":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .restart local v0    # "N":I
    .restart local v2    # "first":Z
    .restart local v3    # "i":I
    :cond_7
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 726
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mListViewState:Landroid/os/Parcelable;

    if-eqz v7, :cond_9

    .line 727
    sget-boolean v7, Lcom/android/settings_ex/notification/NotificationAppList;->DEBUG:Z

    if-eqz v7, :cond_8

    const-string v7, "NotificationAppList"

    const-string v8, "Restoring listView state"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationAppList;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mListViewState:Landroid/os/Parcelable;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 729
    iput-object v11, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mListViewState:Landroid/os/Parcelable;

    .line 731
    :cond_9
    sget-boolean v7, Lcom/android/settings_ex/notification/NotificationAppList;->DEBUG:Z

    if-eqz v7, :cond_a

    const-string v7, "NotificationAppList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Refreshed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " displayed items"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_a
    return-void
.end method

.method private repositionScrollbar()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 210
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationAppList;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getScrollBarSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationAppList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v8, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v2, v3

    .line 213
    .local v2, "sbWidthPx":I
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationAppList;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 214
    .local v1, "parent":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 215
    .local v0, "eat":I
    if-gtz v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 216
    :cond_0
    sget-boolean v3, Lcom/android/settings_ex/notification/NotificationAppList;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "NotificationAppList"

    const-string v4, "Eating %dpx into %dpx padding for %dpx scroll, ld=%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationAppList;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getLayoutDirection()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/android/settings_ex/PinnedHeaderListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 152
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationAppList;->repositionScrollbar()V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationAppList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mAdapter:Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/android/settings_ex/PinnedHeaderListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mContext:Landroid/content/Context;

    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mInflater:Landroid/view/LayoutInflater;

    .line 120
    new-instance v0, Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;-><init>(Lcom/android/settings_ex/notification/NotificationAppList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mAdapter:Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;

    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mUM:Landroid/os/UserManager;

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mPM:Landroid/content/pm/PackageManager;

    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 124
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090ab8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 126
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationAppList;->loadAppsList()V

    .line 128
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    const v0, 0x7f040061

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lcom/android/settings_ex/PinnedHeaderListFragment;->onDestroyView()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mListViewState:Landroid/os/Parcelable;

    .line 167
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mProfileSpinnerAdapter:Lcom/android/settings_ex/UserSpinnerAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings_ex/UserSpinnerAdapter;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 178
    .local v1, "selectedUser":Landroid/os/UserHandle;
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings_ex/Settings$NotificationAppListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 181
    const v2, 0x8000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 182
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 185
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 187
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Lcom/android/settings_ex/PinnedHeaderListFragment;->onPause()V

    .line 159
    sget-boolean v0, Lcom/android/settings_ex/notification/NotificationAppList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationAppList"

    const-string v1, "Saving listView state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationAppList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mListViewState:Landroid/os/Parcelable;

    .line 161
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Lcom/android/settings_ex/PinnedHeaderListFragment;->onResume()V

    .line 172
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationAppList;->loadAppsList()V

    .line 173
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/PinnedHeaderListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mUM:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings_ex/UserSpinnerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mProfileSpinnerAdapter:Lcom/android/settings_ex/UserSpinnerAdapter;

    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mProfileSpinnerAdapter:Lcom/android/settings_ex/UserSpinnerAdapter;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mSpinner:Landroid/widget/Spinner;

    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mProfileSpinnerAdapter:Lcom/android/settings_ex/UserSpinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/NotificationAppList;->setPinnedHeaderView(Landroid/view/View;)V

    .line 147
    :cond_0
    return-void
.end method

.method public setBackend(Lcom/android/settings_ex/notification/NotificationAppList$Backend;)V
    .locals 0
    .param p1, "backend"    # Lcom/android/settings_ex/notification/NotificationAppList$Backend;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationAppList;->mBackend:Lcom/android/settings_ex/notification/NotificationAppList$Backend;

    .line 195
    return-void
.end method
