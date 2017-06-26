.class public Lcom/oneplus/settings/notification/OPNotificationAppList;
.super Lcom/android/settings_ex/PinnedHeaderListFragment;
.source "OPNotificationAppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;,
        Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;,
        Lcom/oneplus/settings/notification/OPNotificationAppList$Row;,
        Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;,
        Lcom/oneplus/settings/notification/OPNotificationAppList$ViewHolder;
    }
.end annotation


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final DEBUG:Z

.field private static final EMPTY_SUBTITLE:Ljava/lang/String; = ""

.field private static final KEY_NAME:Ljava/lang/String; = "oem_oneplus_screen_turnoff"

.field private static final LOADING_FINISH_MESSAGE:I = 0x2

.field private static final SECTION_AFTER_Z:Ljava/lang/String; = "**"

.field private static final SECTION_BEFORE_A:Ljava/lang/String; = "*"

.field private static final SECTION_NORMAL:Ljava/lang/String; = "Normal"

.field private static final SECTION_PRIORITY:Ljava/lang/String; = "Priority"

.field private static final START_LOADING_MESSAGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NotificationAppList"

.field private static keyguard:I

.field static leftAppPriority:I

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field static rightAppPriority:I


# instance fields
.field PriorityMaxFlag:Z

.field private mAdapter:Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;

.field private mBackend:Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;

.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mListViewState:Landroid/os/Parcelable;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mProfileSpinnerAdapter:Lcom/android/settings_ex/UserAdapter;

.field private mProgressDialog:Lcom/oneplus/app/OPProgressDialog;

.field private final mRefreshAppsListRunnable:Ljava/lang/Runnable;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;",
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
            "Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinner:Landroid/widget/Spinner;

.field private mSystemSignature:[Landroid/content/pm/Signature;

.field private mUM:Landroid/os/UserManager;

.field private switchBtn:Lcom/oneplus/widget/button/OPSwitch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "NotificationAppList"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/notification/OPNotificationAppList;->DEBUG:Z

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 513
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAppList$2;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPNotificationAppList$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRowComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/PinnedHeaderListFragment;-><init>()V

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRows:Landroid/util/ArrayMap;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mSections:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mBackend:Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->PriorityMaxFlag:Z

    .line 127
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAppList$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/notification/OPNotificationAppList$1;-><init>(Lcom/oneplus/settings/notification/OPNotificationAppList;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mHandler:Landroid/os/Handler;

    .line 591
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPNotificationAppList$3;-><init>(Lcom/oneplus/settings/notification/OPNotificationAppList;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    .line 844
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAppList$4;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPNotificationAppList$4;-><init>(Lcom/oneplus/settings/notification/OPNotificationAppList;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    .line 851
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/oneplus/app/OPProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationAppList;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/notification/OPNotificationAppList;Lcom/oneplus/app/OPProgressDialog;)Lcom/oneplus/app/OPProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationAppList;
    .param p1, "x1"    # Lcom/oneplus/app/OPProgressDialog;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationAppList;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationAppList;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mBackend:Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRowComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationAppList;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mSections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oneplus/settings/notification/OPNotificationAppList;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationAppList;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->getSection(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oneplus/settings/notification/OPNotificationAppList;Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationAppList;
    .param p1, "x1"    # Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/notification/OPNotificationAppList;->changePackagePriority(Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationAppList;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationAppList;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/settings/notification/OPNotificationAppList;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationAppList;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->refreshDisplayedItems()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/oneplus/widget/button/OPSwitch;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationAppList;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->switchBtn:Lcom/oneplus/widget/button/OPSwitch;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oneplus/settings/notification/OPNotificationAppList;Lcom/oneplus/widget/button/OPSwitch;)Lcom/oneplus/widget/button/OPSwitch;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationAppList;
    .param p1, "x1"    # Lcom/oneplus/widget/button/OPSwitch;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->switchBtn:Lcom/oneplus/widget/button/OPSwitch;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationAppList;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/oneplus/settings/notification/OPNotificationAppList;->DEBUG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationAppList;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/LauncherApps;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationAppList;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationAppList;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mPM:Landroid/content/pm/PackageManager;

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
            "Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 568
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;>;"
    .local p2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v5, Lcom/oneplus/settings/notification/OPNotificationAppList;->DEBUG:Z

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

    .line 570
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

    .line 571
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 572
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 573
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    .line 574
    .local v4, "row":Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    if-nez v4, :cond_2

    .line 575
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

    .line 568
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    :cond_1
    const-string v5, ""

    goto :goto_0

    .line 580
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "row":Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    :cond_2
    iget-object v5, v4, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    .line 581
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

    .line 586
    :cond_3
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/oneplus/settings/notification/OPNotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v4, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    goto :goto_1

    .line 589
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    :cond_4
    return-void
.end method

.method private changePackagePriority(Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;Ljava/lang/String;)V
    .locals 4
    .param p1, "r"    # Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 789
    iget-object v2, p1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 791
    :try_start_0
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 792
    .local v1, "sINM":Landroid/app/INotificationManager;
    iget v2, p1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->uid:I

    const/4 v3, 0x2

    invoke-interface {v1, p2, v2, v3}, Landroid/app/INotificationManager;->setPackagePriority(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    .end local v1    # "sINM":Landroid/app/INotificationManager;
    :cond_0
    :goto_0
    return-void

    .line 793
    :catch_0
    move-exception v0

    .line 794
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
            "Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 562
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;>;"
    invoke-static {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    .line 563
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {p0, p1, v0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    .line 564
    return-void
.end method

.method private getSection(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 252
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "*"

    .line 256
    :goto_0
    return-object v1

    .line 253
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 254
    .local v0, "c":C
    const/16 v1, 0x41

    if-ge v0, v1, :cond_2

    const-string v1, "*"

    goto :goto_0

    .line 255
    :cond_2
    const/16 v1, 0x5a

    if-le v0, v1, :cond_3

    const-string v1, "**"

    goto :goto_0

    .line 256
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getValue(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 930
    const/4 v1, 0x0

    .line 932
    .local v1, "value":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_oneplus_screen_turnoff"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 938
    :goto_0
    return v1

    .line 934
    :catch_0
    move-exception v0

    .line 936
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;)Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "backend"    # Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;

    .prologue
    .line 532
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;-><init>()V

    .line 533
    .local v0, "row":Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    .line 534
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->uid:I

    .line 536
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 542
    iget-object v2, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->banned:Z

    .line 543
    iget-object v2, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;->getHighPriority(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->priority:Z

    .line 544
    iget-object v2, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;->getSensitive(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->sensitive:Z

    .line 546
    iget-object v2, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;->getPackagePriority(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->appPriority:I

    .line 548
    const-string v2, "NotificationAppList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zhuyang--notification--packageName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--NotificationsBanned:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->banned:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--HighPriority:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->priority:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return-object v0

    .line 537
    :catch_0
    move-exception v1

    .line 538
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "NotificationAppList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    iget-object v2, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private loadAppsList()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 249
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
    .line 553
    sget-boolean v1, Lcom/oneplus/settings/notification/OPNotificationAppList;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "NotificationAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/settings/notification/OPNotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    sget-object v1, Lcom/oneplus/settings/notification/OPNotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 559
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method private refreshDisplayedItems()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 800
    sget-boolean v7, Lcom/oneplus/settings/notification/OPNotificationAppList;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "NotificationAppList"

    const-string v8, "Refreshing apps..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_0
    iget-object v7, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mAdapter:Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;

    invoke-virtual {v7}, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->clear()V

    .line 802
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    monitor-enter v8

    .line 803
    const/4 v6, 0x0

    .line 804
    .local v6, "section":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 805
    .local v0, "N":I
    const/4 v2, 0x1

    .line 806
    .local v2, "first":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_7

    .line 809
    :try_start_1
    iget-object v7, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    .line 810
    .local v5, "row":Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    if-eqz v5, :cond_1

    iget-object v7, v5, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->section:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 806
    .end local v5    # "row":Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 813
    .restart local v5    # "row":Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    :cond_2
    iget-object v7, v5, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->section:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 814
    iget-object v6, v5, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->section:Ljava/lang/String;

    .line 815
    new-instance v4, Lcom/oneplus/settings/notification/OPNotificationAppList$Row;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lcom/oneplus/settings/notification/OPNotificationAppList$Row;-><init>(Lcom/oneplus/settings/notification/OPNotificationAppList$1;)V

    .line 816
    .local v4, "r":Lcom/oneplus/settings/notification/OPNotificationAppList$Row;
    iput-object v6, v4, Lcom/oneplus/settings/notification/OPNotificationAppList$Row;->section:Ljava/lang/String;

    .line 818
    const/4 v2, 0x1

    .line 820
    .end local v4    # "r":Lcom/oneplus/settings/notification/OPNotificationAppList$Row;
    :cond_3
    iput-boolean v2, v5, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->first:Z

    .line 822
    iget-object v7, v5, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-static {v7}, Lcom/oneplus/settings/notification/OPNotificationSettingsUtil;->isAppNotificationFilteredOutInSettingsList(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 824
    sget-boolean v7, Lcom/oneplus/settings/notification/OPNotificationAppList;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string v9, "NotificationAppList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pkg is filtered out "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v5, :cond_5

    iget-object v7, v5, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, v5, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    :goto_2
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_4
    :goto_3
    const/4 v2, 0x0

    goto :goto_1

    .line 824
    :cond_5
    const-string v7, ""

    goto :goto_2

    .line 826
    :cond_6
    iget-object v7, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mAdapter:Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;

    invoke-virtual {v7, v5}, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->add(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 830
    .end local v5    # "row":Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    :catch_0
    move-exception v1

    .line 831
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    .line 835
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

    .line 836
    iget-object v7, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mListViewState:Landroid/os/Parcelable;

    if-eqz v7, :cond_9

    .line 837
    sget-boolean v7, Lcom/oneplus/settings/notification/OPNotificationAppList;->DEBUG:Z

    if-eqz v7, :cond_8

    const-string v7, "NotificationAppList"

    const-string v8, "Restoring listView state"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mListViewState:Landroid/os/Parcelable;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 839
    iput-object v11, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mListViewState:Landroid/os/Parcelable;

    .line 841
    :cond_9
    sget-boolean v7, Lcom/oneplus/settings/notification/OPNotificationAppList;->DEBUG:Z

    if-eqz v7, :cond_a

    const-string v7, "NotificationAppList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Refreshed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;

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

    .line 842
    :cond_a
    return-void
.end method

.method private repositionScrollbar()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 260
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getScrollBarSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v8, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v2, v3

    .line 263
    .local v2, "sbWidthPx":I
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 264
    .local v1, "parent":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 265
    .local v0, "eat":I
    if-gtz v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 266
    :cond_0
    sget-boolean v3, Lcom/oneplus/settings/notification/OPNotificationAppList;->DEBUG:Z

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

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getLayoutDirection()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
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

.method public static setValue(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 942
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_oneplus_screen_turnoff"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 944
    const-string v0, "NotificationAppList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zhuyang--notification--oem_oneplus_screen_turnoff--setValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/android/settings_ex/PinnedHeaderListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 194
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->repositionScrollbar()V

    .line 195
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mAdapter:Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 196
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/android/settings_ex/PinnedHeaderListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mContext:Landroid/content/Context;

    .line 159
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mInflater:Landroid/view/LayoutInflater;

    .line 160
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;-><init>(Lcom/oneplus/settings/notification/OPNotificationAppList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mAdapter:Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;

    .line 161
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mUM:Landroid/os/UserManager;

    .line 162
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mPM:Landroid/content/pm/PackageManager;

    .line 163
    new-instance v0, Lcom/oneplus/app/OPProgressDialog;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/app/OPProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;

    .line 164
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 165
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c01c9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 169
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 170
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 175
    const v0, 0x7f0400a6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/android/settings_ex/PinnedHeaderListFragment;->onDestroyView()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mListViewState:Landroid/os/Parcelable;

    .line 209
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
    .line 219
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mProfileSpinnerAdapter:Lcom/android/settings_ex/UserAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings_ex/UserAdapter;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 227
    .local v1, "selectedUser":Landroid/os/UserHandle;
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 228
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings_ex/Settings$NotificationAppListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 230
    const v2, 0x8000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 234
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
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
    .line 241
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Lcom/android/settings_ex/PinnedHeaderListFragment;->onPause()V

    .line 201
    sget-boolean v0, Lcom/oneplus/settings/notification/OPNotificationAppList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationAppList"

    const-string v1, "Saving listView state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mListViewState:Landroid/os/Parcelable;

    .line 203
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Lcom/android/settings_ex/PinnedHeaderListFragment;->onResume()V

    .line 214
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->loadAppsList()V

    .line 215
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 180
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/PinnedHeaderListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 181
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mUM:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings_ex/UserAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mProfileSpinnerAdapter:Lcom/android/settings_ex/UserAdapter;

    .line 182
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mProfileSpinnerAdapter:Lcom/android/settings_ex/UserAdapter;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040118

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mSpinner:Landroid/widget/Spinner;

    .line 185
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mProfileSpinnerAdapter:Lcom/android/settings_ex/UserAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 186
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 187
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->setPinnedHeaderView(Landroid/view/View;)V

    .line 189
    :cond_0
    return-void
.end method

.method public setBackend(Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;)V
    .locals 0
    .param p1, "backend"    # Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mBackend:Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;

    .line 245
    return-void
.end method
