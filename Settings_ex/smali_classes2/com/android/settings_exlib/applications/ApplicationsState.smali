.class public Lcom/android/settings_exlib/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/applications/ApplicationsState$10;,
        Lcom/android/settings_exlib/applications/ApplicationsState$11;,
        Lcom/android/settings_exlib/applications/ApplicationsState$12;,
        Lcom/android/settings_exlib/applications/ApplicationsState$13;,
        Lcom/android/settings_exlib/applications/ApplicationsState$14;,
        Lcom/android/settings_exlib/applications/ApplicationsState$1;,
        Lcom/android/settings_exlib/applications/ApplicationsState$2;,
        Lcom/android/settings_exlib/applications/ApplicationsState$3;,
        Lcom/android/settings_exlib/applications/ApplicationsState$4;,
        Lcom/android/settings_exlib/applications/ApplicationsState$5;,
        Lcom/android/settings_exlib/applications/ApplicationsState$6;,
        Lcom/android/settings_exlib/applications/ApplicationsState$7;,
        Lcom/android/settings_exlib/applications/ApplicationsState$8;,
        Lcom/android/settings_exlib/applications/ApplicationsState$9;,
        Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;,
        Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;,
        Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;,
        Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;,
        Lcom/android/settings_exlib/applications/ApplicationsState$CompoundFilter;,
        Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;,
        Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;,
        Lcom/android/settings_exlib/applications/ApplicationsState$Session;,
        Lcom/android/settings_exlib/applications/ApplicationsState$SizeInfo;,
        Lcom/android/settings_exlib/applications/ApplicationsState$VolumeFilter;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field static final DEBUG_LOCKING:Z = false

.field public static final EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILTER_ALL_ENABLED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_DISABLED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_EVERYTHING:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_NOT_HIDE:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_PERSONAL:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_THIRD_PARTY:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WITH_DOMAIN_URLS:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WORK:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIZE_INVALID:I = -0x2

.field public static final SIZE_UNKNOWN:I = -0x1

.field static final TAG:Ljava/lang/String; = "ApplicationsState"

.field static sInstance:Lcom/android/settings_exlib/applications/ApplicationsState;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mActiveSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminRetrieveFlags:I

.field final mAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

.field final mContext:Landroid/content/Context;

.field mCurComputingSizePkg:Ljava/lang/String;

.field mCurComputingSizeUserId:I

.field mCurId:J

.field final mEntriesMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field mHaveDisabledApps:Z

.field final mInterestingConfigChanges:Lcom/android/settings_exlib/applications/InterestingConfigChanges;

.field final mIpm:Landroid/content/pm/IPackageManager;

.field final mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

.field mPackageIntentReceiver:Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mRebuildingSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mResumed:Z

.field final mRetrieveFlags:I

.field final mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mSessionsChanged:Z

.field final mThread:Landroid/os/HandlerThread;

.field final mUm:Landroid/os/UserManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_exlib/applications/ApplicationsState;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_exlib/applications/ApplicationsState;J)Ljava/lang/String;
    .locals 1
    .param p1, "size"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_exlib/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/settings_exlib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .param p1, "ps"    # Landroid/content/pm/PackageStats;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/applications/ApplicationsState;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap3(Lcom/android/settings_exlib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .param p1, "ps"    # Landroid/content/pm/PackageStats;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap4(Lcom/android/settings_exlib/applications/ApplicationsState;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/applications/ApplicationsState;->addUser(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings_exlib/applications/ApplicationsState;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/applications/ApplicationsState;->removeUser(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-string/jumbo v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 76
    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    .line 1233
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 1253
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$2;-><init>()V

    .line 1252
    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1263
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$3;-><init>()V

    .line 1262
    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1273
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$4;-><init>()V

    .line 1272
    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1290
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$5;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$5;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 1303
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$6;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$6;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 1315
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$7;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$7;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 1331
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$8;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$8;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 1350
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$9;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$9;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_THIRD_PARTY:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 1365
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$10;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$10;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 1375
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$11;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$11;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 1385
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$12;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$12;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 1395
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$13;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$13;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 1405
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$14;

    invoke-direct {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$14;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_NOT_HIDE:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 68
    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 7
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    const-wide/16 v4, 0x1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    .line 106
    new-instance v2, Lcom/android/settings_exlib/applications/InterestingConfigChanges;

    invoke-direct {v2}, Lcom/android/settings_exlib/applications/InterestingConfigChanges;-><init>()V

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settings_exlib/applications/InterestingConfigChanges;

    .line 109
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 108
    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 112
    iput-wide v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurId:J

    .line 118
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    .line 122
    new-instance v2, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;-><init>(Lcom/android/settings_exlib/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    .line 125
    iput-object p1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 126
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    .line 127
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 128
    const-string/jumbo v2, "user"

    invoke-virtual {p1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    .line 129
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v3, v2

    .line 130
    .local v1, "userId":I
    iget-object v5, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "userId":I
    :cond_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "ApplicationsState.Loader"

    .line 133
    const/16 v4, 0xa

    .line 132
    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    .line 134
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 135
    new-instance v2, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/android/settings_exlib/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    .line 138
    const v2, 0xa200

    iput v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAdminRetrieveFlags:I

    .line 141
    const v2, 0x8200

    iput v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mRetrieveFlags:I

    .line 158
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v3

    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v3

    .line 124
    return-void

    .line 158
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 161
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method private addUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 432
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    .line 433
    .local v0, "profileIds":[I
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 434
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 435
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 436
    iget-boolean v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mResumed:Z

    if-eqz v1, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/android/settings_exlib/applications/ApplicationsState;->doPauseLocked()V

    .line 441
    invoke-virtual {p0}, Lcom/android/settings_exlib/applications/ApplicationsState;->doResumeIfNeededLocked()V

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 431
    :cond_2
    return-void

    .line 434
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private clearEntries()V
    .locals 2

    .prologue
    .line 244
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 243
    return-void
.end method

.method private getAppInfoLocked(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 298
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 299
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 300
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 302
    return-object v1

    .line 298
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .locals 8
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 467
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 468
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 470
    .local v0, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    if-nez v0, :cond_1

    .line 472
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .end local v0    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurId:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurId:J

    invoke-direct {v0, v2, p1, v4, v5}, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    .line 473
    .restart local v0    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_0
    :goto_0
    return-object v0

    .line 475
    :cond_1
    iget-object v2, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eq v2, p1, :cond_0

    .line 476
    iput-object p1, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method public static getInstance(Landroid/app/Application;)Lcom/android/settings_exlib/applications/ApplicationsState;
    .locals 2
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 83
    sget-object v1, Lcom/android/settings_exlib/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->sInstance:Lcom/android/settings_exlib/applications/ApplicationsState;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-direct {v0, p0}, Lcom/android/settings_exlib/applications/ApplicationsState;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->sInstance:Lcom/android/settings_exlib/applications/ApplicationsState;

    .line 87
    :cond_0
    sget-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->sInstance:Lcom/android/settings_exlib/applications/ApplicationsState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 502
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 505
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4
    .param p1, "ps"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 491
    if-eqz p1, :cond_0

    .line 494
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    .line 495
    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 494
    add-long/2addr v0, v2

    .line 496
    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    .line 494
    add-long/2addr v0, v2

    .line 496
    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    .line 494
    add-long/2addr v0, v2

    return-wide v0

    .line 498
    :cond_0
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method private getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4
    .param p1, "ps"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 484
    if-eqz p1, :cond_0

    .line 485
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    return-wide v0

    .line 487
    :cond_0
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 524
    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "tmp":Ljava/lang/String;
    sget-object v1, Lcom/android/settings_exlib/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 526
    const-string/jumbo v2, ""

    .line 525
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private removeUser(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 451
    iget-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 452
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 453
    .local v2, "userMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    if-eqz v2, :cond_1

    .line 454
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "appEntry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 455
    .local v0, "appEntry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 456
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    iget-object v5, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 451
    .end local v0    # "appEntry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .end local v1    # "appEntry$iterator":Ljava/util/Iterator;
    .end local v2    # "userMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 458
    .restart local v1    # "appEntry$iterator":Ljava/util/Iterator;
    .restart local v2    # "userMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 459
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 460
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "appEntry$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 450
    return-void
.end method


# virtual methods
.method addPackage(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 354
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :try_start_1
    iget-boolean v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mResumed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 362
    return-void

    .line 364
    :cond_0
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_exlib/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-ltz v2, :cond_1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 367
    return-void

    .line 369
    :cond_1
    :try_start_5
    iget-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 370
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2, p2}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAdminRetrieveFlags:I

    .line 369
    :goto_0
    invoke-interface {v4, p1, v2, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    .line 372
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_3

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 373
    return-void

    .line 370
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :try_start_7
    iget v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mRetrieveFlags:I

    goto :goto_0

    .line 375
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_5

    .line 376
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 377
    const/4 v4, 0x3

    .line 376
    if-eq v2, v4, :cond_4

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 378
    return-void

    .line 380
    :cond_4
    const/4 v2, 0x1

    :try_start_9
    iput-boolean v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 382
    :cond_5
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 384
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 386
    :cond_6
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 387
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_7
    :try_start_a
    monitor-exit v3

    .line 352
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_1
    return-void

    .line 354
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    .line 391
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method doPauseIfNeededLocked()V
    .locals 2

    .prologue
    .line 255
    iget-boolean v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_0

    .line 256
    return-void

    .line 258
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 259
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    iget-boolean v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v1, :cond_1

    .line 260
    return-void

    .line 258
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_exlib/applications/ApplicationsState;->doPauseLocked()V

    .line 254
    return-void
.end method

.method doPauseLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mResumed:Z

    .line 268
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;->unregisterReceiver()V

    .line 270
    iput-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;

    .line 266
    :cond_0
    return-void
.end method

.method doResumeIfNeededLocked()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 179
    iget-boolean v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mResumed:Z

    if-eqz v8, :cond_0

    .line 180
    return-void

    .line 182
    :cond_0
    iput-boolean v12, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mResumed:Z

    .line 183
    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;

    if-nez v8, :cond_1

    .line 184
    new-instance v8, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;

    invoke-direct {v8, p0, v11}, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;)V

    iput-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;

    .line 185
    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v8}, Lcom/android/settings_exlib/applications/ApplicationsState$PackageIntentReceiver;->registerReceiver()V

    .line 187
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 188
    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 191
    .local v5, "user":Landroid/content/pm/UserInfo;
    :try_start_0
    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v8

    if-gez v8, :cond_2

    .line 192
    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    :cond_2
    iget-object v9, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 197
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v8

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAdminRetrieveFlags:I

    .line 198
    :goto_1
    iget v10, v5, Landroid/content/pm/UserInfo;->id:I

    .line 196
    invoke-interface {v9, v8, v10}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 199
    .local v4, "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 200
    .end local v4    # "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 197
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    iget v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mRetrieveFlags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 204
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_4
    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settings_exlib/applications/InterestingConfigChanges;

    iget-object v9, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings_exlib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 207
    invoke-direct {p0}, Lcom/android/settings_exlib/applications/ApplicationsState;->clearEntries()V

    .line 214
    :cond_5
    iput-boolean v13, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 215
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_a

    .line 216
    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 219
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v8, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v8, :cond_9

    .line 220
    iget v8, v3, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_8

    .line 221
    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 222
    add-int/lit8 v2, v2, -0x1

    .line 215
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 209
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_5

    .line 210
    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iput-boolean v12, v8, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 225
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_8
    iput-boolean v12, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 227
    :cond_9
    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 228
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    iget-object v9, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 229
    .local v1, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    if-eqz v1, :cond_6

    .line 230
    iput-object v3, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_3

    .line 233
    .end local v1    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "userId":I
    :cond_a
    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v9, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v8, v9, :cond_b

    .line 235
    invoke-direct {p0}, Lcom/android/settings_exlib/applications/ApplicationsState;->clearEntries()V

    .line 237
    :cond_b
    iput-object v11, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 238
    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v8, v14}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_c

    .line 239
    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v8, v14}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 178
    :cond_c
    return-void
.end method

.method public ensureIcon(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 309
    iget-object v0, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 310
    return-void

    .line 312
    :cond_0
    monitor-enter p1

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 308
    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public getBackgroundLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;I)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 276
    iget-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 277
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 278
    .local v1, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    if-nez v1, :cond_1

    .line 279
    invoke-direct {p0, p1, p2}, Lcom/android/settings_exlib/applications/ApplicationsState;->getAppInfoLocked(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 280
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v2, :cond_0

    .line 282
    :try_start_1
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    const/4 v5, 0x0

    invoke-interface {v3, p1, v5, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 288
    :cond_0
    if-eqz v2, :cond_1

    .line 289
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/settings_exlib/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    monitor-exit v4

    .line 293
    return-object v1

    .line 283
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v3, "ApplicationsState"

    const-string/jumbo v5, "getEntry couldn\'t reach PackageManager"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    .line 285
    return-object v6

    .line 276
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public haveDisabledApps()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mHaveDisabledApps:Z

    return v0
.end method

.method indexOfApplicationInfoLocked(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 342
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 343
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 344
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 346
    return v1

    .line 342
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 349
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public invalidatePackage(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 427
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_exlib/applications/ApplicationsState;->removePackage(Ljava/lang/String;I)V

    .line 428
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_exlib/applications/ApplicationsState;->addPackage(Ljava/lang/String;I)V

    .line 426
    return-void
.end method

.method public newSession(Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;)Lcom/android/settings_exlib/applications/ApplicationsState$Session;
    .locals 3
    .param p1, "callbacks"    # Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

    .prologue
    .line 171
    new-instance v0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;-><init>(Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;)V

    .line 172
    .local v0, "s":Lcom/android/settings_exlib/applications/ApplicationsState$Session;
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 175
    return-object v0

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method rebuildActiveSessions()V
    .locals 4

    .prologue
    .line 509
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v3

    .line 510
    :try_start_0
    iget-boolean v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mSessionsChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v3

    .line 511
    return-void

    .line 513
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 514
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 515
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    .line 516
    .local v1, "s":Lcom/android/settings_exlib/applications/ApplicationsState$Session;
    iget-boolean v2, v1, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v2, :cond_1

    .line 517
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "s":Lcom/android/settings_exlib/applications/ApplicationsState$Session;
    :cond_2
    monitor-exit v3

    .line 508
    return-void

    .line 509
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removePackage(Ljava/lang/String;I)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 396
    iget-object v5, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v5

    .line 398
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_exlib/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;I)I

    move-result v2

    .line 400
    .local v2, "idx":I
    if-ltz v2, :cond_2

    .line 401
    iget-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 403
    .local v0, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    .line 404
    iget-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 407
    :cond_0
    iget-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 408
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 409
    iget-boolean v4, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_1

    .line 410
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 411
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 412
    iget-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_3

    .line 413
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 418
    .end local v1    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 419
    iget-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    monitor-exit v5

    .line 395
    return-void

    .line 411
    .restart local v0    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .restart local v1    # "i":I
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    .end local v0    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .end local v1    # "i":I
    .end local v2    # "idx":I
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public requestSize(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 319
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 321
    .local v0, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, v3, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v1, p1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfoAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 317
    return-void

    .line 319
    .end local v0    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method sumCacheSizes()J
    .locals 8

    .prologue
    .line 329
    const-wide/16 v2, 0x0

    .line 331
    .local v2, "sum":J
    iget-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 334
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->cacheSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v2, v6

    .line 333
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    monitor-exit v4

    .line 338
    return-wide v2

    .line 331
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1
.end method
