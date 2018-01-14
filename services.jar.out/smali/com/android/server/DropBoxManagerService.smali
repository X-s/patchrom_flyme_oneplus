.class public final Lcom/android/server/DropBoxManagerService;
.super Lcom/android/server/SystemService;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DropBoxManagerService$1;,
        Lcom/android/server/DropBoxManagerService$2;,
        Lcom/android/server/DropBoxManagerService$EntryFile;,
        Lcom/android/server/DropBoxManagerService$FileList;
    }
.end annotation


# static fields
.field private static final BUNDLE_LOG:Ljava/lang/String; = "log"

.field private static final DEFAULT_AGE_SECONDS:I = 0x3f480

.field private static final DEFAULT_MAX_FILES:I = 0x3e8

.field private static final DEFAULT_QUOTA_KB:I = 0x1400

.field private static final DEFAULT_QUOTA_PERCENT:I = 0xa

.field private static final DEFAULT_RESERVE_PERCENT:I = 0xa

.field private static final MDM_ERROR_TAG:Ljava/lang/String; = "MDM_DropBox"

.field private static final MSG_EARLY_LOG_RECORDING:I = 0x2

.field private static final MSG_LOG_RECORDING:I = 0x1

.field private static final MSG_SEND_BROADCAST:I = 0x1

.field private static final PROFILE_DUMP:Z = false

.field private static final QUOTA_RESCAN_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DropBoxManagerService"

.field private static final TAG_VALUES:[Ljava/lang/String;


# instance fields
.field private mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

.field private mBlockSize:I

.field private volatile mBooted:Z

.field private mCachedQuotaBlocks:I

.field private mCachedQuotaUptimeMillis:J

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDropBoxDir:Ljava/io/File;

.field private mFilesByTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/DropBoxManagerService$FileList;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mNeedRecordLogTagSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field mObjEpitaphLock:Ljava/lang/Object;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatFs:Landroid/os/StatFs;

.field private final mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

.field private mTrackerHandler:Landroid/os/Handler;

.field private mTrackerHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0(Lcom/android/server/DropBoxManagerService;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/DropBoxManagerService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/DropBoxManagerService;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap1(Lcom/android/server/DropBoxManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 142
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "system_server_crash"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "system_server_anr"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "system_server_watchdog"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/DropBoxManagerService;->TAG_VALUES:[Ljava/lang/String;

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/dropbox"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 213
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 121
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 122
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    .line 126
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 127
    iput v2, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 128
    iput v2, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 131
    iput-boolean v2, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    .line 143
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/server/DropBoxManagerService;->TAG_VALUES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mNeedRecordLogTagSet:Ljava/util/HashSet;

    .line 147
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mObjEpitaphLock:Ljava/lang/Object;

    .line 151
    new-instance v0, Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$1;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    new-instance v0, Lcom/android/server/DropBoxManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$2;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    .line 214
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 215
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 216
    new-instance v0, Lcom/android/server/DropBoxManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$3;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    .line 227
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "TrackerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mTrackerHandlerThread:Landroid/os/HandlerThread;

    .line 228
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mTrackerHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 229
    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    invoke-direct {v0, p1}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 212
    return-void
.end method

.method private checkRecordError(Ljava/lang/String;)Z
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mNeedRecordLogTagSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    const-string/jumbo v0, "MDM_DropBox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "record:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const/4 v0, 0x1

    return v0

    .line 1034
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized createEntry(Ljava/io/File;Ljava/lang/String;I)J
    .locals 18
    .param p1, "temp"    # Ljava/io/File;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 889
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 895
    .local v6, "t":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v2, v2, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v3, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v4, 0x2710

    add-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v15

    .line 896
    .local v15, "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    const/4 v10, 0x0

    .line 897
    .local v10, "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface {v15}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 898
    invoke-interface {v15}, Ljava/util/SortedSet;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/server/DropBoxManagerService$EntryFile;

    invoke-interface {v15, v2}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    check-cast v10, [Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 899
    .local v10, "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface {v15}, Ljava/util/SortedSet;->clear()V

    .line 902
    .end local v10    # "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v2, v2, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v2, v2, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-wide v2, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 906
    :cond_1
    if-eqz v10, :cond_4

    .line 907
    const/4 v2, 0x0

    array-length v0, v10

    move/from16 v17, v0

    move/from16 v16, v2

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    aget-object v11, v10, v16

    .line 908
    .local v11, "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v3, v2, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v4, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 909
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v3, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/DropBoxManagerService$FileList;

    .line 910
    .local v14, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v14, :cond_2

    iget-object v2, v14, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v2, v11}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 911
    iget v2, v14, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v3, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v2, v3

    iput v2, v14, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 913
    :cond_2
    iget v2, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3

    .line 914
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 915
    iget-object v3, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v5, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v8, 0x1

    add-long v12, v6, v8

    .end local v6    # "t":J
    .local v12, "t":J
    iget v8, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 914
    invoke-direct/range {v2 .. v9}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide v6, v12

    .line 907
    .end local v12    # "t":J
    .restart local v6    # "t":J
    :goto_1
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_0

    .line 917
    :cond_3
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v4, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v8, 0x1

    add-long v12, v6, v8

    .end local v6    # "t":J
    .restart local v12    # "t":J
    invoke-direct {v2, v3, v4, v6, v7}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide v6, v12

    .end local v12    # "t":J
    .restart local v6    # "t":J
    goto :goto_1

    .line 922
    .end local v11    # "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v14    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_4
    if-nez p1, :cond_5

    .line 923
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v2, v3, v0, v6, v7}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    .line 927
    return-wide v6

    .line 925
    :cond_5
    :try_start_1
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v6    # "t":J
    .end local v15    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/server/DropBoxManagerService$EntryFile;

    .prologue
    monitor-enter p0

    .line 870
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v1, v1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 871
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v3, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 876
    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    if-lez v1, :cond_1

    .line 877
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 878
    .local v0, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-nez v0, :cond_0

    .line 879
    new-instance v0, Lcom/android/server/DropBoxManagerService$FileList;

    .end local v0    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$FileList;)V

    .line 880
    .restart local v0    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    :cond_0
    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 883
    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_1
    monitor-exit p0

    .line 869
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized init()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 826
    :try_start_0
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    if-nez v4, :cond_1

    .line 827
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 831
    :cond_0
    :try_start_1
    new-instance v4, Landroid/os/StatFs;

    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 832
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    iput v4, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 838
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v4, :cond_7

    .line 839
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 840
    .local v3, "files":[Ljava/io/File;
    if-nez v3, :cond_3

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t list files: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v3    # "files":[Ljava/io/File;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 828
    :cond_2
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t mkdir: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 833
    :catch_0
    move-exception v0

    .line 834
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t statfs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 842
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "files":[Ljava/io/File;
    :cond_3
    new-instance v4, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$FileList;)V

    iput-object v4, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 843
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    .line 846
    const/4 v4, 0x0

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_7

    aget-object v2, v3, v4

    .line 847
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 848
    const-string/jumbo v6, "DropBoxManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Cleaning temp file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 846
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 853
    :cond_4
    new-instance v1, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget v6, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct {v1, v2, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    .line 854
    .local v1, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v6, v1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v6, :cond_5

    .line 855
    const-string/jumbo v6, "DropBoxManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unrecognized file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 857
    :cond_5
    iget-wide v6, v1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 858
    const-string/jumbo v6, "DropBoxManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid filename: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 863
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v1    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    :cond_7
    monitor-exit p0

    .line 825
    return-void
.end method

.method private recordError(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1037
    const-string/jumbo v2, "system_server_watchdog"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1038
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mTrackerHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1039
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1040
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1041
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1042
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mTrackerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1036
    :goto_0
    return-void

    .line 1044
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mTrackerHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1045
    .restart local v1    # "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1046
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1047
    .restart local v0    # "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1048
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mTrackerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private declared-synchronized trimToFit()J
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 937
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v28, v0

    .line 938
    const-string/jumbo v29, "dropbox_age_seconds"

    const v30, 0x3f480

    .line 937
    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 939
    .local v6, "ageSeconds":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v28, v0

    .line 940
    const-string/jumbo v29, "dropbox_max_files"

    const/16 v30, 0x3e8

    .line 939
    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 941
    .local v14, "maxFiles":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    mul-int/lit16 v0, v6, 0x3e8

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    sub-long v8, v28, v30

    .line 942
    .local v8, "cutoffMillis":J
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_1

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 944
    .local v13, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-wide v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-wide/from16 v28, v0

    cmp-long v28, v28, v8

    if-lez v28, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/TreeSet;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v0, v14, :cond_6

    .line 957
    .end local v13    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    .line 958
    .local v26, "uptimeMillis":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x1388

    add-long v28, v28, v30

    cmp-long v28, v26, v28

    if-lez v28, :cond_2

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v28, v0

    .line 960
    const-string/jumbo v29, "dropbox_quota_percent"

    const/16 v30, 0xa

    .line 959
    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 961
    .local v18, "quotaPercent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v28, v0

    .line 962
    const-string/jumbo v29, "dropbox_reserve_percent"

    const/16 v30, 0xa

    .line 961
    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 963
    .local v19, "reservePercent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v28, v0

    .line 964
    const-string/jumbo v29, "dropbox_quota_kb"

    const/16 v30, 0x1400

    .line 963
    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 966
    .local v17, "quotaKb":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 968
    .local v10, "dirPath":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 972
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    .line 973
    .local v7, "available":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/StatFs;->getBlockCount()I

    move-result v28

    mul-int v28, v28, v19

    div-int/lit8 v28, v28, 0x64

    sub-int v16, v7, v28

    .line 974
    .local v16, "nonreserved":I
    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x400

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v29, v0

    div-int v15, v28, v29

    .line 975
    .local v15, "maximum":I
    mul-int v28, v16, v18

    div-int/lit8 v28, v28, 0x64

    const/16 v29, 0x0

    move/from16 v0, v29

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    move/from16 v0, v28

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 976
    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 993
    .end local v7    # "available":I
    .end local v10    # "dirPath":Ljava/lang/String;
    .end local v15    # "maximum":I
    .end local v16    # "nonreserved":I
    .end local v17    # "quotaKb":I
    .end local v18    # "quotaPercent":I
    .end local v19    # "reservePercent":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_5

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v25, v0

    .local v25, "unsqueezed":I
    const/16 v20, 0x0

    .line 996
    .local v20, "squeezed":I
    new-instance v24, Ljava/util/TreeSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 997
    .local v24, "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "tag$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/DropBoxManagerService$FileList;

    .line 998
    .local v21, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-lez v20, :cond_9

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v29, v0

    sub-int v29, v29, v25

    div-int v29, v29, v20

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_9

    .line 1004
    .end local v21    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v28, v0

    sub-int v28, v28, v25

    div-int v23, v28, v20

    .line 1007
    .local v23, "tagQuota":I
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_4
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1008
    .restart local v21    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_e

    .line 1024
    .end local v20    # "squeezed":I
    .end local v21    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    .end local v22    # "tag$iterator":Ljava/util/Iterator;
    .end local v23    # "tagQuota":I
    .end local v24    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .end local v25    # "unsqueezed":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v29, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    mul-int v28, v28, v29

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    monitor-exit p0

    return-wide v28

    .line 946
    .end local v26    # "uptimeMillis":J
    .restart local v13    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    move-object/from16 v28, v0

    iget-object v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/DropBoxManagerService$FileList;

    .line 947
    .restart local v21    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v21, :cond_7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v28, v0

    iget v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 948
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v29, v0

    iget v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 949
    :cond_8
    iget-object v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    iget-object v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .end local v6    # "ageSeconds":I
    .end local v8    # "cutoffMillis":J
    .end local v13    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v14    # "maxFiles":I
    .end local v21    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    :catchall_0
    move-exception v28

    monitor-exit p0

    throw v28

    .line 969
    .restart local v6    # "ageSeconds":I
    .restart local v8    # "cutoffMillis":J
    .restart local v10    # "dirPath":Ljava/lang/String;
    .restart local v14    # "maxFiles":I
    .restart local v17    # "quotaKb":I
    .restart local v18    # "quotaPercent":I
    .restart local v19    # "reservePercent":I
    .restart local v26    # "uptimeMillis":J
    :catch_0
    move-exception v12

    .line 970
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    new-instance v28, Ljava/io/IOException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Can\'t restat: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 1001
    .end local v10    # "dirPath":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    .end local v17    # "quotaKb":I
    .end local v18    # "quotaPercent":I
    .end local v19    # "reservePercent":I
    .restart local v20    # "squeezed":I
    .restart local v21    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    .restart local v22    # "tag$iterator":Ljava/util/Iterator;
    .restart local v24    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .restart local v25    # "unsqueezed":I
    :cond_9
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v28, v0

    sub-int v25, v25, v28

    .line 1002
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 1010
    .restart local v23    # "tagQuota":I
    :cond_a
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 1011
    .restart local v13    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_b

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v28, v0

    iget v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1012
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v29, v0

    iget v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1015
    :cond_c
    :try_start_5
    iget-object v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v28, v0

    if-eqz v28, :cond_d

    iget-object v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->delete()Z

    .line 1016
    :cond_d
    new-instance v28, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v29, v0

    iget-object v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v30, v0

    iget-wide v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-wide/from16 v32, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1009
    .end local v13    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_e
    :goto_3
    :try_start_6
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_a

    goto/16 :goto_2

    .line 1017
    .restart local v13    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :catch_1
    move-exception v11

    .line 1018
    .local v11, "e":Ljava/io/IOException;
    const-string/jumbo v28, "DropBoxManagerService"

    const-string/jumbo v29, "Can\'t write tombstone file"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public add(Landroid/os/DropBoxManager$Entry;)V
    .locals 44
    .param p1, "entry"    # Landroid/os/DropBoxManager$Entry;

    .prologue
    .line 296
    const/16 v35, 0x0

    .line 297
    .local v35, "temp":Ljava/io/File;
    const/4 v15, 0x0

    .line 298
    .local v15, "input":Ljava/io/InputStream;
    const/16 v27, 0x0

    .line 299
    .local v27, "output":Ljava/io/OutputStream;
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v34

    .line 302
    .local v34, "tag":Ljava/lang/String;
    const-string/jumbo v40, "persist.sys.assert.enable"

    const/16 v41, 0x0

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 306
    .local v4, "assertState":Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v10

    .line 307
    .local v10, "flags":I
    and-int/lit8 v40, v10, 0x1

    if-eqz v40, :cond_1

    new-instance v40, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v40 .. v40}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v40
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 470
    .end local v10    # "flags":I
    .end local v15    # "input":Ljava/io/InputStream;
    .end local v27    # "output":Ljava/io/OutputStream;
    .end local v35    # "temp":Ljava/io/File;
    :catch_0
    move-exception v9

    .line 471
    .local v9, "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    const-string/jumbo v40, "DropBoxManagerService"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "Can\'t write: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 473
    invoke-static/range {v27 .. v27}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 474
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 476
    if-eqz v35, :cond_0

    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->delete()Z

    .line 295
    .end local v9    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    return-void

    .line 309
    .restart local v10    # "flags":I
    .restart local v15    # "input":Ljava/io/InputStream;
    .restart local v27    # "output":Ljava/io/OutputStream;
    .restart local v35    # "temp":Ljava/io/File;
    :cond_1
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V

    .line 310
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v40

    if-nez v40, :cond_2

    .line 473
    invoke-static/range {v27 .. v27}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 474
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 310
    return-void

    .line 311
    :cond_2
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v24

    .line 312
    .local v24, "max":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 314
    .local v16, "lastTrim":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v40, v0

    move/from16 v0, v40

    new-array v5, v0, [B

    .line 315
    .local v5, "buffer":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    .line 320
    .local v15, "input":Ljava/io/InputStream;
    const/16 v31, 0x0

    .line 321
    .local v31, "read":I
    :goto_2
    array-length v0, v5

    move/from16 v40, v0

    move/from16 v0, v31

    move/from16 v1, v40

    if-ge v0, v1, :cond_3

    .line 322
    array-length v0, v5

    move/from16 v40, v0

    sub-int v40, v40, v31

    move/from16 v0, v31

    move/from16 v1, v40

    invoke-virtual {v15, v5, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v23

    .line 323
    .local v23, "n":I
    if-gtz v23, :cond_15

    .line 330
    .end local v23    # "n":I
    :cond_3
    new-instance v36, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v40, v0

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "drop"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Thread;->getId()J

    move-result-wide v42

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, ".tmp"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 331
    .local v36, "temp":Ljava/io/File;
    :try_start_4
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 332
    .end local v35    # "temp":Ljava/io/File;
    .local v6, "bufferSize":I
    const/16 v40, 0x1000

    move/from16 v0, v40

    if-le v6, v0, :cond_4

    const/16 v6, 0x1000

    .line 333
    :cond_4
    const/16 v40, 0x200

    move/from16 v0, v40

    if-ge v6, v0, :cond_5

    const/16 v6, 0x200

    .line 334
    :cond_5
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, v36

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 335
    .local v12, "foutput":Ljava/io/FileOutputStream;
    new-instance v30, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v30

    invoke-direct {v0, v12, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 336
    .local v30, "output":Ljava/io/OutputStream;
    :try_start_5
    array-length v0, v5

    move/from16 v40, v0

    .end local v27    # "output":Ljava/io/OutputStream;
    move/from16 v0, v31

    move/from16 v1, v40

    if-ne v0, v1, :cond_16

    and-int/lit8 v40, v10, 0x4

    if-nez v40, :cond_16

    .line 337
    new-instance v27, Ljava/util/zip/GZIPOutputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 338
    .end local v30    # "output":Ljava/io/OutputStream;
    .local v27, "output":Ljava/io/OutputStream;
    or-int/lit8 v10, v10, 0x4

    .line 342
    :goto_3
    if-nez v4, :cond_6

    :try_start_6
    const-string/jumbo v40, "SYSTEM_SERVER"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_6

    .line 343
    const-string/jumbo v40, "<android-panic-begin>\n"

    invoke-static/range {v40 .. v40}, Lcom/oem/debug/OemManager;->writeRawPartition(Ljava/lang/String;)I

    move-result v33

    .line 344
    .local v33, "size":I
    const-string/jumbo v40, "DropBoxManagerService"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "write tag begin size : "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .end local v33    # "size":I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->checkRecordError(Ljava/lang/String;)Z

    move-result v13

    .line 353
    .end local v27    # "output":Ljava/io/OutputStream;
    .local v13, "hasToRecord":Z
    :cond_7
    const/16 v40, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v40

    move/from16 v2, v31

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 358
    if-nez v4, :cond_8

    const-string/jumbo v40, "SYSTEM_SERVER"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_8

    .line 359
    const-string/jumbo v40, "UTF-8"

    const/16 v41, 0x0

    move/from16 v0, v41

    move/from16 v1, v31

    move-object/from16 v2, v40

    invoke-static {v5, v0, v1, v2}, Lorg/apache/http/util/EncodingUtils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 360
    .local v37, "text":Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Lcom/oem/debug/OemManager;->writeRawPartition(Ljava/lang/String;)I

    move-result v33

    .line 361
    .restart local v33    # "size":I
    const-string/jumbo v40, "DropBoxManagerService"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "write system server log size : "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .end local v33    # "size":I
    .end local v37    # "text":Ljava/lang/String;
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 366
    .local v28, "now":J
    sub-long v40, v28, v16

    const-wide/16 v42, 0x7530

    cmp-long v40, v40, v42

    if-lez v40, :cond_9

    .line 367
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v24

    .line 368
    move-wide/from16 v16, v28

    .line 370
    :cond_9
    invoke-virtual {v15, v5}, Ljava/io/InputStream;->read([B)I

    move-result v31

    .line 371
    if-gtz v31, :cond_17

    .line 372
    invoke-static {v12}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 373
    invoke-virtual/range {v27 .. v27}, Ljava/io/OutputStream;->close()V

    .line 374
    const/16 v27, 0x0

    .line 379
    :goto_4
    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->length()J

    move-result-wide v18

    .line 380
    .local v18, "len":J
    cmp-long v40, v18, v24

    if-lez v40, :cond_18

    .line 381
    const-string/jumbo v40, "DropBoxManagerService"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "Dropping: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " ("

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->length()J

    move-result-wide v42

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " > "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " bytes)"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 383
    const/16 v35, 0x0

    .line 390
    .end local v36    # "temp":Ljava/io/File;
    :goto_5
    if-eqz v13, :cond_a

    .line 391
    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->recordError(Ljava/lang/String;)V

    .line 397
    :cond_a
    if-nez v4, :cond_b

    const-string/jumbo v40, "SYSTEM_SERVER"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_b

    .line 398
    const-string/jumbo v40, "\n<android-panic-end>\n"

    invoke-static/range {v40 .. v40}, Lcom/oem/debug/OemManager;->writeRawPartition(Ljava/lang/String;)I

    move-result v33

    .line 399
    .restart local v33    # "size":I
    const-string/jumbo v40, "DropBoxManagerService"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "write tag end size : "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v33    # "size":I
    :cond_b
    const-string/jumbo v40, "system_server_crash"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_c

    .line 403
    const-string/jumbo v40, "system_server_watchdog"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    .line 402
    if-eqz v40, :cond_d

    .line 404
    :cond_c
    sget v40, Lcom/oem/debug/OemManager;->TYPE_ABNORMAL_REBOOT:I

    invoke-static/range {v40 .. v40}, Lcom/oem/debug/OemManager;->incrementPhonehistoryRecord(I)I

    move-result v32

    .line 405
    .local v32, "ret":I
    const-string/jumbo v40, "DropBoxManagerService"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "incrementPhonehistoryRecord TYPE_ABNORMAL_REBOOT ret : "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .end local v32    # "ret":I
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2, v10}, Lcom/android/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)J

    move-result-wide v38

    .line 410
    .local v38, "time":J
    const/16 v35, 0x0

    .line 412
    .restart local v35    # "temp":Ljava/io/File;
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v40, "android.intent.action.DROPBOX_ENTRY_ADDED"

    move-object/from16 v0, v40

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v8, "dropboxIntent":Landroid/content/Intent;
    const-string/jumbo v40, "tag"

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    const-string/jumbo v40, "time"

    move-object/from16 v0, v40

    move-wide/from16 v1, v38

    invoke-virtual {v8, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 415
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    move/from16 v40, v0

    if-nez v40, :cond_e

    .line 416
    const/high16 v40, 0x40000000    # 2.0f

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 422
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v0, v1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 427
    new-instance v40, Ljava/io/File;

    const-string/jumbo v41, "/data/system/dropbox"

    invoke-direct/range {v40 .. v41}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v20

    .line 428
    .local v20, "logFiles":[Ljava/io/File;
    const/16 v26, 0x0

    .line 429
    .local v26, "name":Ljava/lang/String;
    const/4 v14, 0x0

    .end local v26    # "name":Ljava/lang/String;
    .local v14, "i":I
    :goto_6
    if-eqz v20, :cond_1c

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    if-ge v14, v0, :cond_1c

    .line 430
    aget-object v40, v20, v14

    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v26

    .line 431
    .local v26, "name":Ljava/lang/String;
    const-string/jumbo v40, ".gz"

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_f

    .line 432
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v40

    add-int/lit8 v40, v40, -0x3

    const/16 v41, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 434
    :cond_f
    const-string/jumbo v40, ".lost"

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_19

    .line 435
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v40

    add-int/lit8 v40, v40, -0x5

    const/16 v41, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 442
    :cond_10
    :goto_7
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string/jumbo v40, "yyyy-MM-dd-HH_mm_ss_SSS"

    move-object/from16 v0, v40

    invoke-direct {v11, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 443
    .local v11, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    move-wide/from16 v0, v38

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 444
    .local v7, "curDate":Ljava/util/Date;
    invoke-virtual {v11, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    .line 446
    .local v21, "mDate":Ljava/lang/String;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, "@"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_14

    .line 447
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v22, "mFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "/data/system/dropbox/"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    aget-object v41, v20, v14

    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v22

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    const-string/jumbo v40, "DropBoxManagerService"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "file :: /data/system/dropbox/"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    aget-object v42, v20, v14

    invoke-virtual/range {v42 .. v42}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    if-eqz v4, :cond_14

    .line 451
    const-string/jumbo v40, "wtf"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_11

    const-string/jumbo v40, "system_server"

    const/16 v41, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v40

    if-nez v40, :cond_12

    .line 452
    :cond_11
    const-string/jumbo v40, "system_app_crash"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    .line 451
    if-nez v40, :cond_12

    .line 453
    const-string/jumbo v40, "system_app_anr"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    .line 451
    if-nez v40, :cond_12

    .line 454
    const-string/jumbo v40, "data_app_crash"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    .line 451
    if-nez v40, :cond_12

    .line 455
    const-string/jumbo v40, "data_app_anr"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    .line 451
    if-eqz v40, :cond_13

    .line 460
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mObjEpitaphLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 461
    :try_start_8
    aget-object v40, v20, v14

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-static {v0, v1, v10}, Lcom/oem/debug/ASSERT;->epitaph(Ljava/io/File;Ljava/lang/String;I)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    monitor-exit v41

    .line 464
    :cond_13
    const-string/jumbo v40, "DropBoxManagerService"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "assertState="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 429
    .end local v22    # "mFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_14
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_6

    .line 324
    .end local v6    # "bufferSize":I
    .end local v7    # "curDate":Ljava/util/Date;
    .end local v8    # "dropboxIntent":Landroid/content/Intent;
    .end local v11    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v12    # "foutput":Ljava/io/FileOutputStream;
    .end local v13    # "hasToRecord":Z
    .end local v14    # "i":I
    .end local v18    # "len":J
    .end local v20    # "logFiles":[Ljava/io/File;
    .end local v21    # "mDate":Ljava/lang/String;
    .end local v26    # "name":Ljava/lang/String;
    .end local v28    # "now":J
    .end local v38    # "time":J
    .restart local v23    # "n":I
    .local v27, "output":Ljava/io/OutputStream;
    :cond_15
    add-int v31, v31, v23

    goto/16 :goto_2

    .end local v23    # "n":I
    .end local v27    # "output":Ljava/io/OutputStream;
    .end local v35    # "temp":Ljava/io/File;
    .restart local v6    # "bufferSize":I
    .restart local v12    # "foutput":Ljava/io/FileOutputStream;
    .restart local v30    # "output":Ljava/io/OutputStream;
    .restart local v36    # "temp":Ljava/io/File;
    :cond_16
    move-object/from16 v27, v30

    .line 336
    .end local v30    # "output":Ljava/io/OutputStream;
    .local v27, "output":Ljava/io/OutputStream;
    goto/16 :goto_3

    .line 376
    .end local v27    # "output":Ljava/io/OutputStream;
    .restart local v13    # "hasToRecord":Z
    .restart local v28    # "now":J
    :cond_17
    :try_start_a
    invoke-virtual/range {v27 .. v27}, Ljava/io/OutputStream;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_4

    .line 470
    .end local v6    # "bufferSize":I
    .end local v12    # "foutput":Ljava/io/FileOutputStream;
    .end local v13    # "hasToRecord":Z
    .end local v28    # "now":J
    :catch_1
    move-exception v9

    .restart local v9    # "e":Ljava/io/IOException;
    move-object/from16 v35, v36

    .end local v36    # "temp":Ljava/io/File;
    .local v35, "temp":Ljava/io/File;
    goto/16 :goto_0

    .line 386
    .end local v9    # "e":Ljava/io/IOException;
    .end local v35    # "temp":Ljava/io/File;
    .restart local v6    # "bufferSize":I
    .restart local v12    # "foutput":Ljava/io/FileOutputStream;
    .restart local v13    # "hasToRecord":Z
    .restart local v18    # "len":J
    .restart local v28    # "now":J
    .restart local v36    # "temp":Ljava/io/File;
    :cond_18
    if-gtz v31, :cond_7

    move-object/from16 v35, v36

    .end local v36    # "temp":Ljava/io/File;
    .restart local v35    # "temp":Ljava/io/File;
    goto/16 :goto_5

    .line 436
    .restart local v8    # "dropboxIntent":Landroid/content/Intent;
    .restart local v14    # "i":I
    .restart local v20    # "logFiles":[Ljava/io/File;
    .restart local v26    # "name":Ljava/lang/String;
    .local v35, "temp":Ljava/io/File;
    .restart local v38    # "time":J
    :cond_19
    :try_start_b
    const-string/jumbo v40, ".txt"

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1a

    .line 437
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v40

    add-int/lit8 v40, v40, -0x4

    const/16 v41, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_7

    .line 438
    :cond_1a
    const-string/jumbo v40, ".dat"

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_10

    .line 439
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v40

    add-int/lit8 v40, v40, -0x4

    const/16 v41, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_7

    .line 460
    .restart local v7    # "curDate":Ljava/util/Date;
    .restart local v11    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v21    # "mDate":Ljava/lang/String;
    .restart local v22    # "mFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v40

    monitor-exit v41

    throw v40
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 472
    .end local v5    # "buffer":[B
    .end local v6    # "bufferSize":I
    .end local v7    # "curDate":Ljava/util/Date;
    .end local v8    # "dropboxIntent":Landroid/content/Intent;
    .end local v10    # "flags":I
    .end local v11    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v12    # "foutput":Ljava/io/FileOutputStream;
    .end local v13    # "hasToRecord":Z
    .end local v14    # "i":I
    .end local v15    # "input":Ljava/io/InputStream;
    .end local v16    # "lastTrim":J
    .end local v18    # "len":J
    .end local v20    # "logFiles":[Ljava/io/File;
    .end local v21    # "mDate":Ljava/lang/String;
    .end local v22    # "mFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24    # "max":J
    .end local v26    # "name":Ljava/lang/String;
    .end local v28    # "now":J
    .end local v31    # "read":I
    .end local v35    # "temp":Ljava/io/File;
    .end local v38    # "time":J
    :catchall_1
    move-exception v40

    .line 473
    :goto_8
    invoke-static/range {v27 .. v27}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 474
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 476
    if-eqz v35, :cond_1b

    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->delete()Z

    .line 472
    :cond_1b
    throw v40

    .line 473
    .restart local v5    # "buffer":[B
    .restart local v6    # "bufferSize":I
    .restart local v8    # "dropboxIntent":Landroid/content/Intent;
    .restart local v10    # "flags":I
    .restart local v12    # "foutput":Ljava/io/FileOutputStream;
    .restart local v13    # "hasToRecord":Z
    .restart local v14    # "i":I
    .restart local v15    # "input":Ljava/io/InputStream;
    .restart local v16    # "lastTrim":J
    .restart local v18    # "len":J
    .restart local v20    # "logFiles":[Ljava/io/File;
    .restart local v24    # "max":J
    .restart local v28    # "now":J
    .restart local v31    # "read":I
    .restart local v35    # "temp":Ljava/io/File;
    .restart local v38    # "time":J
    :cond_1c
    invoke-static/range {v27 .. v27}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 474
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    goto/16 :goto_1

    .line 472
    .end local v6    # "bufferSize":I
    .end local v8    # "dropboxIntent":Landroid/content/Intent;
    .end local v12    # "foutput":Ljava/io/FileOutputStream;
    .end local v13    # "hasToRecord":Z
    .end local v14    # "i":I
    .end local v18    # "len":J
    .end local v20    # "logFiles":[Ljava/io/File;
    .end local v28    # "now":J
    .end local v35    # "temp":Ljava/io/File;
    .end local v38    # "time":J
    .restart local v36    # "temp":Ljava/io/File;
    :catchall_2
    move-exception v40

    move-object/from16 v35, v36

    .end local v36    # "temp":Ljava/io/File;
    .local v35, "temp":Ljava/io/File;
    goto :goto_8

    .end local v35    # "temp":Ljava/io/File;
    .restart local v6    # "bufferSize":I
    .restart local v12    # "foutput":Ljava/io/FileOutputStream;
    .restart local v30    # "output":Ljava/io/OutputStream;
    .restart local v36    # "temp":Ljava/io/File;
    :catchall_3
    move-exception v40

    move-object/from16 v27, v30

    .end local v30    # "output":Ljava/io/OutputStream;
    .restart local v27    # "output":Ljava/io/OutputStream;
    move-object/from16 v35, v36

    .end local v36    # "temp":Ljava/io/File;
    .restart local v35    # "temp":Ljava/io/File;
    goto :goto_8

    .line 470
    .end local v27    # "output":Ljava/io/OutputStream;
    .end local v35    # "temp":Ljava/io/File;
    .restart local v30    # "output":Ljava/io/OutputStream;
    .restart local v36    # "temp":Ljava/io/File;
    :catch_2
    move-exception v9

    .restart local v9    # "e":Ljava/io/IOException;
    move-object/from16 v27, v30

    .end local v30    # "output":Ljava/io/OutputStream;
    .restart local v27    # "output":Ljava/io/OutputStream;
    move-object/from16 v35, v36

    .end local v36    # "temp":Ljava/io/File;
    .restart local v35    # "temp":Ljava/io/File;
    goto/16 :goto_0
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 33
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 525
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 527
    const-string/jumbo v3, "Permission Denial: Can\'t dump DropBoxManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 528
    return-void

    .line 532
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    :try_start_2
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 542
    .local v27, "out":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .local v15, "doPrint":Z
    const/4 v14, 0x0

    .line 543
    .local v14, "doFile":Z
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v28, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v19

    if-ge v0, v3, :cond_6

    .line 545
    aget-object v3, p3, v19

    const-string/jumbo v4, "-p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, p3, v19

    const-string/jumbo v4, "--print"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 546
    :cond_1
    const/4 v15, 0x1

    .line 544
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 533
    .end local v14    # "doFile":Z
    .end local v15    # "doPrint":Z
    .end local v19    # "i":I
    .end local v27    # "out":Ljava/lang/StringBuilder;
    .end local v28    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v16

    .line 534
    .local v16, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t initialize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    const-string/jumbo v3, "DropBoxManagerService"

    const-string/jumbo v4, "Can\'t init"

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 536
    return-void

    .line 547
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v14    # "doFile":Z
    .restart local v15    # "doPrint":Z
    .restart local v19    # "i":I
    .restart local v27    # "out":Ljava/lang/StringBuilder;
    .restart local v28    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    aget-object v3, p3, v19

    const-string/jumbo v4, "-f"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    aget-object v3, p3, v19

    const-string/jumbo v4, "--file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 548
    :cond_3
    const/4 v14, 0x1

    goto :goto_1

    .line 549
    :cond_4
    aget-object v3, p3, v19

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 550
    const-string/jumbo v3, "Unknown argument: "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v14    # "doFile":Z
    .end local v15    # "doPrint":Z
    .end local v19    # "i":I
    .end local v27    # "out":Ljava/lang/StringBuilder;
    .end local v28    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 552
    .restart local v14    # "doFile":Z
    .restart local v15    # "doPrint":Z
    .restart local v19    # "i":I
    .restart local v27    # "out":Ljava/lang/StringBuilder;
    .restart local v28    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    :try_start_4
    aget-object v3, p3, v19

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 556
    :cond_6
    const-string/jumbo v3, "Drop box contents: "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v4, v4, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " entries\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 559
    const-string/jumbo v3, "Searching for:"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "a$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "a":Ljava/lang/String;
    const-string/jumbo v3, " "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 561
    .end local v8    # "a":Ljava/lang/String;
    :cond_7
    const-string/jumbo v3, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .end local v9    # "a$iterator":Ljava/util/Iterator;
    :cond_8
    const/16 v26, 0x0

    .local v26, "numFound":I
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 565
    .local v25, "numArgs":I
    new-instance v30, Landroid/text/format/Time;

    invoke-direct/range {v30 .. v30}, Landroid/text/format/Time;-><init>()V

    .line 566
    .local v30, "time":Landroid/text/format/Time;
    const-string/jumbo v3, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v3, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "entry$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 568
    .local v17, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 569
    const-string/jumbo v3, "%Y-%m-%d %H:%M:%S"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 570
    .local v12, "date":Ljava/lang/String;
    const/16 v22, 0x1

    .line 571
    .local v22, "match":Z
    const/16 v19, 0x0

    .end local v22    # "match":Z
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_b

    if-eqz v22, :cond_b

    .line 572
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 573
    .local v10, "arg":Ljava/lang/String;
    invoke-virtual {v12, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 571
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 573
    :cond_a
    const/16 v22, 0x1

    .restart local v22    # "match":Z
    goto :goto_5

    .line 575
    .end local v10    # "arg":Ljava/lang/String;
    .end local v22    # "match":Z
    :cond_b
    if-eqz v22, :cond_9

    .line 577
    add-int/lit8 v26, v26, 0x1

    .line 578
    if-eqz v15, :cond_c

    const-string/jumbo v3, "========================================\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :cond_c
    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v3, :cond_d

    const-string/jumbo v3, "(no tag)"

    :goto_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-nez v3, :cond_e

    .line 581
    const-string/jumbo v3, " (no file)\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 579
    :cond_d
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    goto :goto_6

    .line 583
    :cond_e
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_f

    .line 584
    const-string/jumbo v3, " (contents lost)\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 587
    :cond_f
    const-string/jumbo v3, " ("

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_10

    const-string/jumbo v3, "compressed "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :cond_10
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_15

    const-string/jumbo v3, "text"

    :goto_7
    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    const-string/jumbo v3, ", "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bytes)\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    if-nez v14, :cond_11

    if-eqz v15, :cond_13

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_13

    .line 594
    :cond_11
    if-nez v15, :cond_12

    const-string/jumbo v3, "    "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    :cond_12
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    :cond_13
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_14

    if-nez v15, :cond_16

    if-eqz v14, :cond_16

    .line 648
    :cond_14
    :goto_8
    if-eqz v15, :cond_9

    const-string/jumbo v3, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 589
    :cond_15
    const-string/jumbo v3, "data"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    .line 599
    :cond_16
    const/4 v13, 0x0

    .line 600
    .local v13, "dbe":Landroid/os/DropBoxManager$Entry;
    const/16 v20, 0x0

    .line 602
    .local v20, "isr":Ljava/io/InputStreamReader;
    :try_start_5
    new-instance v2, Landroid/os/DropBoxManager$Entry;

    .line 603
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v0, v17

    iget v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 602
    invoke-direct/range {v2 .. v7}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 605
    .end local v13    # "dbe":Landroid/os/DropBoxManager$Entry;
    .local v2, "dbe":Landroid/os/DropBoxManager$Entry;
    if-eqz v15, :cond_1c

    .line 606
    :try_start_6
    new-instance v21, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 607
    .local v21, "isr":Ljava/io/InputStreamReader;
    const/16 v3, 0x1000

    :try_start_7
    new-array v11, v3, [C

    .line 608
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .local v11, "buf":[C
    const/16 v24, 0x0

    .line 610
    .local v24, "newline":Z
    :cond_17
    :goto_9
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/io/InputStreamReader;->read([C)I

    move-result v23

    .line 611
    .local v23, "n":I
    if-gtz v23, :cond_19

    .line 621
    if-nez v24, :cond_27

    const-string/jumbo v3, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v20, v21

    .line 638
    .end local v11    # "buf":[C
    .end local v21    # "isr":Ljava/io/InputStreamReader;
    .end local v23    # "n":I
    .end local v24    # "newline":Z
    :goto_a
    if-eqz v2, :cond_18

    :try_start_8
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 639
    :cond_18
    if-eqz v20, :cond_14

    .line 641
    :try_start_9
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_8

    .line 642
    :catch_1
    move-exception v32

    .local v32, "unused":Ljava/io/IOException;
    goto :goto_8

    .line 612
    .end local v32    # "unused":Ljava/io/IOException;
    .restart local v11    # "buf":[C
    .restart local v21    # "isr":Ljava/io/InputStreamReader;
    .restart local v23    # "n":I
    .restart local v24    # "newline":Z
    :cond_19
    const/4 v3, 0x0

    :try_start_a
    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v11, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 613
    add-int/lit8 v3, v23, -0x1

    aget-char v3, v11, v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1b

    const/16 v24, 0x1

    .line 616
    :goto_b
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/high16 v4, 0x10000

    if-le v3, v4, :cond_17

    .line 617
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 618
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_9

    .line 634
    .end local v11    # "buf":[C
    .end local v23    # "n":I
    .end local v24    # "newline":Z
    :catch_2
    move-exception v16

    .restart local v16    # "e":Ljava/io/IOException;
    move-object/from16 v20, v21

    .line 635
    .end local v21    # "isr":Ljava/io/InputStreamReader;
    :goto_c
    :try_start_b
    const-string/jumbo v3, "*** "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const-string/jumbo v3, "DropBoxManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 638
    if-eqz v2, :cond_1a

    :try_start_c
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 639
    :cond_1a
    if-eqz v20, :cond_14

    .line 641
    :try_start_d
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_8

    .line 642
    :catch_3
    move-exception v32

    .restart local v32    # "unused":Ljava/io/IOException;
    goto/16 :goto_8

    .line 613
    .end local v16    # "e":Ljava/io/IOException;
    .end local v32    # "unused":Ljava/io/IOException;
    .restart local v11    # "buf":[C
    .restart local v21    # "isr":Ljava/io/InputStreamReader;
    .restart local v23    # "n":I
    .restart local v24    # "newline":Z
    :cond_1b
    const/16 v24, 0x0

    goto :goto_b

    .line 623
    .end local v11    # "buf":[C
    .end local v21    # "isr":Ljava/io/InputStreamReader;
    .end local v23    # "n":I
    .end local v24    # "newline":Z
    .restart local v20    # "isr":Ljava/io/InputStreamReader;
    :cond_1c
    const/16 v3, 0x46

    :try_start_e
    invoke-virtual {v2, v3}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v29

    .line 624
    .local v29, "text":Ljava/lang/String;
    const-string/jumbo v3, "    "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    if-nez v29, :cond_1e

    .line 626
    const-string/jumbo v3, "[null]"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    :cond_1d
    :goto_d
    const-string/jumbo v3, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 634
    .end local v29    # "text":Ljava/lang/String;
    :catch_4
    move-exception v16

    .restart local v16    # "e":Ljava/io/IOException;
    goto :goto_c

    .line 628
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v29    # "text":Ljava/lang/String;
    :cond_1e
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x46

    if-ne v3, v4, :cond_21

    const/16 v31, 0x1

    .line 629
    .local v31, "truncated":Z
    :goto_e
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    if-eqz v31, :cond_1d

    const-string/jumbo v3, " ..."

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_d

    .line 637
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .end local v29    # "text":Ljava/lang/String;
    .end local v31    # "truncated":Z
    :catchall_1
    move-exception v3

    .line 638
    :goto_f
    if-eqz v2, :cond_1f

    :try_start_f
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 639
    :cond_1f
    if-eqz v20, :cond_20

    .line 641
    :try_start_10
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStreamReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 637
    :cond_20
    :goto_10
    :try_start_11
    throw v3

    .line 628
    .restart local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v29    # "text":Ljava/lang/String;
    :cond_21
    const/16 v31, 0x0

    .restart local v31    # "truncated":Z
    goto :goto_e

    .line 642
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .end local v29    # "text":Ljava/lang/String;
    .end local v31    # "truncated":Z
    :catch_5
    move-exception v32

    .restart local v32    # "unused":Ljava/io/IOException;
    goto :goto_10

    .line 651
    .end local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v12    # "date":Ljava/lang/String;
    .end local v17    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v32    # "unused":Ljava/io/IOException;
    :cond_22
    if-nez v26, :cond_23

    const-string/jumbo v3, "(No entries found.)\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    :cond_23
    if-eqz p3, :cond_24

    move-object/from16 v0, p3

    array-length v3, v0

    if-nez v3, :cond_26

    .line 654
    :cond_24
    if-nez v15, :cond_25

    const-string/jumbo v3, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    :cond_25
    const-string/jumbo v3, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    :cond_26
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    monitor-exit p0

    .line 524
    return-void

    .line 637
    .restart local v12    # "date":Ljava/lang/String;
    .restart local v13    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v17    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .restart local v20    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v3

    move-object v2, v13

    .restart local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    goto :goto_f

    .end local v13    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v21    # "isr":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v3

    move-object/from16 v20, v21

    .end local v21    # "isr":Ljava/io/InputStreamReader;
    .local v20, "isr":Ljava/io/InputStreamReader;
    goto :goto_f

    .line 634
    .end local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v13    # "dbe":Landroid/os/DropBoxManager$Entry;
    .local v20, "isr":Ljava/io/InputStreamReader;
    :catch_6
    move-exception v16

    .restart local v16    # "e":Ljava/io/IOException;
    move-object v2, v13

    .restart local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    goto/16 :goto_c

    .end local v13    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v16    # "e":Ljava/io/IOException;
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v11    # "buf":[C
    .restart local v21    # "isr":Ljava/io/InputStreamReader;
    .restart local v23    # "n":I
    .restart local v24    # "newline":Z
    :cond_27
    move-object/from16 v20, v21

    .end local v21    # "isr":Ljava/io/InputStreamReader;
    .local v20, "isr":Ljava/io/InputStreamReader;
    goto/16 :goto_a
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .locals 12
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J

    .prologue
    const/4 v10, 0x0

    monitor-enter p0

    .line 492
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_LOGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "READ_LOGS permission required"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 498
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    if-nez p1, :cond_1

    :try_start_2
    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 505
    .local v9, "list":Lcom/android/server/DropBoxManagerService$FileList;
    :goto_0
    if-nez v9, :cond_2

    monitor-exit p0

    return-object v10

    .line 499
    .end local v9    # "list":Lcom/android/server/DropBoxManagerService$FileList;
    :catch_0
    move-exception v6

    .line 500
    .local v6, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v0, "DropBoxManagerService"

    const-string/jumbo v1, "Can\'t init"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 501
    return-object v10

    .line 504
    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/DropBoxManagerService$FileList;

    .restart local v9    # "list":Lcom/android/server/DropBoxManagerService$FileList;
    goto :goto_0

    .line 507
    :cond_2
    iget-object v0, v9, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v1, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    invoke-direct {v1, v2, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "entry$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 508
    .local v7, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 509
    iget v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 510
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v1, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v1, v2, v3}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 513
    :cond_4
    :try_start_5
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    .line 514
    iget-object v1, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget-object v4, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    iget v5, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 513
    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 515
    :catch_1
    move-exception v6

    .line 516
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v0, "DropBoxManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t read: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_5
    monitor-exit p0

    .line 521
    return-object v10
.end method

.method public getServiceStub()Lcom/android/internal/os/IDropBoxManagerService;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    return-object v0
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 484
    .local v0, "token":J
    :try_start_0
    const-string/jumbo v2, "disabled"

    .line 485
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dropbox:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 484
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 487
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 484
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 486
    :catchall_0
    move-exception v2

    .line 487
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 486
    throw v2
.end method

.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 283
    packed-switch p1, :pswitch_data_0

    .line 282
    :goto_0
    return-void

    .line 285
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 235
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 236
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 240
    sget-object v2, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    .line 241
    new-instance v3, Lcom/android/server/DropBoxManagerService$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/DropBoxManagerService$4;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;)V

    .line 240
    const/4 v4, 0x1

    .line 239
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 248
    const-string/jumbo v1, "dropbox"

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/DropBoxManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 252
    new-instance v1, Lcom/android/server/DropBoxManagerService$5;

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mTrackerHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/DropBoxManagerService$5;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mTrackerHandler:Landroid/os/Handler;

    .line 233
    return-void
.end method
