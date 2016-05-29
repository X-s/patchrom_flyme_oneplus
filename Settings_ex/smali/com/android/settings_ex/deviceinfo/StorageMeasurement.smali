.class public Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;,
        Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;,
        Lcom/android/settings_ex/deviceinfo/StorageMeasurement$StatsObserver;,
        Lcom/android/settings_ex/deviceinfo/StorageMeasurement$DataInitReceiver;,
        Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;,
        Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field private static final DEFAULT_CONTAINER_PACKAGE:Ljava/lang/String; = "com.android.defcontainer"

.field private static final LOCAL_LOGV:Z = true

.field static final LOGV:Z

.field private static final TAG:Ljava/lang/String; = "StorageMeasurement"

.field private static volatile mDataInitReceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/deviceinfo/StorageMeasurement$DataInitReceiver;",
            ">;"
        }
    .end annotation
.end field

.field static mFileInfoForMisc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field static mFileInfoForMiscIsReady:Z

.field private static sInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/storage/StorageVolume;",
            "Lcom/android/settings_ex/deviceinfo/StorageMeasurement;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sInstances"
    .end annotation
.end field

.field private static final sMeasureMediaTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAvailSize:J

.field private final mHandler:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;

.field private final mIsInternal:Z

.field private final mIsPrimary:Z

.field private volatile mReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalSize:J

.field private final mVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 65
    const-string v0, "StorageMeasurement"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->LOGV:Z

    .line 69
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 73
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v2, v0, v1

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v1, v0, v4

    const/4 v1, 0x3

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Android"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    .line 81
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/HashMap;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mDataInitReceivers:Ljava/util/List;

    .line 200
    sput-boolean v3, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mFileInfoForMiscIsReady:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    const/4 v2, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;

    .line 204
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsInternal:Z

    .line 205
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v2

    :cond_0
    iput-boolean v2, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    .line 208
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MemoryMeasurement"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 210
    new-instance v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;-><init>(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;

    .line 211
    return-void

    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    :cond_1
    move v1, v2

    .line 204
    goto :goto_0
.end method

.method static synthetic access$000(Landroid/util/SparseLongArray;IJ)V
    .locals 0
    .param p0, "x0"    # Landroid/util/SparseLongArray;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 61
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    return v0
.end method

.method static synthetic access$1100()Ljava/util/Set;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/app/IMediaContainerService;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->measureMisc(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
    .param p1, "x1"    # Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sendExactUpdate(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->notifyDataInitReceiver()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
    .param p1, "x1"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mAvailSize:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
    .param p1, "x1"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mAvailSize:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sendInternalApproximateUpdate()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsInternal:Z

    return v0
.end method

.method private static addValue(Landroid/util/SparseLongArray;IJ)V
    .locals 2
    .param p0, "array"    # Landroid/util/SparseLongArray;
    .param p1, "key"    # I
    .param p2, "value"    # J

    .prologue
    .line 572
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 573
    return-void
.end method

.method private static getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 6
    .param p0, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 503
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v2

    .line 504
    .local v2, "size":J
    const-string v1, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDirectorySize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    .end local v2    # "size":J
    :goto_0
    return-wide v2

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read memory from default container service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 88
    sget-object v2, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/HashMap;

    monitor-enter v2

    .line 89
    :try_start_0
    sget-object v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    .line 90
    .local v0, "value":Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    .end local v0    # "value":Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    .line 92
    .restart local v0    # "value":Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
    sget-object v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    monitor-exit v2

    return-object v0

    .line 95
    .end local v0    # "value":Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private measureMisc(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 24
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "dir"    # Ljava/io/File;

    .prologue
    .line 513
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    .line 515
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v18

    .line 516
    .local v18, "files":[Ljava/io/File;
    if-nez v18, :cond_0

    const-wide/16 v22, 0x0

    .line 545
    :goto_0
    return-wide v22

    .line 519
    :cond_0
    const-wide/16 v6, 0x0

    .line 520
    .local v6, "counter":J
    const-wide/16 v22, 0x0

    .line 522
    .local v22, "miscSize":J
    move-object/from16 v14, v18

    .local v14, "arr$":[Ljava/io/File;
    array-length v0, v14

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    aget-object v15, v14, v19

    .line 523
    .local v15, "file":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 524
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    .line 525
    .local v21, "name":Ljava/lang/String;
    sget-object v2, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 522
    :cond_1
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 529
    :cond_2
    invoke-virtual {v15}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 530
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 531
    .local v4, "fileSize":J
    sget-object v8, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    new-instance v2, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    const-wide/16 v12, 0x1

    add-long v16, v6, v12

    .end local v6    # "counter":J
    .local v16, "counter":J
    invoke-direct/range {v2 .. v7}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    add-long v22, v22, v4

    move-wide/from16 v6, v16

    .line 533
    .end local v16    # "counter":J
    .restart local v6    # "counter":J
    goto :goto_2

    .end local v4    # "fileSize":J
    :cond_3
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 534
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v10

    .line 535
    .local v10, "dirSize":J
    sget-object v2, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    new-instance v8, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    const-wide/16 v12, 0x1

    add-long v16, v6, v12

    .end local v6    # "counter":J
    .restart local v16    # "counter":J
    move-object v9, v3

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    add-long v22, v22, v10

    move-wide/from16 v6, v16

    .end local v16    # "counter":J
    .restart local v6    # "counter":J
    goto :goto_2

    .line 543
    .end local v3    # "path":Ljava/lang/String;
    .end local v10    # "dirSize":J
    .end local v15    # "file":Ljava/io/File;
    .end local v21    # "name":Ljava/lang/String;
    :cond_4
    sget-object v2, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 544
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mFileInfoForMiscIsReady:Z

    goto :goto_0
.end method

.method private notifyDataInitReceiver()V
    .locals 3

    .prologue
    .line 178
    sget-object v2, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mDataInitReceivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$DataInitReceiver;

    .line 179
    .local v0, "dataInitReceiver":Lcom/android/settings_ex/deviceinfo/StorageMeasurement$DataInitReceiver;
    sget-object v2, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$DataInitReceiver;->onDataInitFinish(Ljava/util/List;)V

    goto :goto_0

    .line 181
    .end local v0    # "dataInitReceiver":Lcom/android/settings_ex/deviceinfo/StorageMeasurement$DataInitReceiver;
    :cond_0
    return-void
.end method

.method public static registDataInitReceiver(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$DataInitReceiver;)V
    .locals 1
    .param p0, "dataInitReceiver"    # Lcom/android/settings_ex/deviceinfo/StorageMeasurement$DataInitReceiver;

    .prologue
    .line 163
    sget-object v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mDataInitReceivers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mFileInfoForMiscIsReady:Z

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    invoke-interface {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$DataInitReceiver;->onDataInitFinish(Ljava/util/List;)V

    .line 166
    :cond_0
    return-void
.end method

.method private sendExactUpdate(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 3
    .param p1, "details"    # Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 244
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v0, v1

    .line 245
    .local v0, "receiver":Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :goto_0
    if-nez v0, :cond_2

    .line 246
    sget-boolean v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->LOGV:Z

    if-eqz v1, :cond_0

    .line 247
    const-string v1, "StorageMeasurement"

    const-string v2, "measurements dropped because receiver is null! wasted effort"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    :goto_1
    return-void

    .line 244
    .end local v0    # "receiver":Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 251
    .restart local v0    # "receiver":Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_2
    invoke-interface {v0, p0, p1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateDetails(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_1
.end method

.method private sendInternalApproximateUpdate()V
    .locals 6

    .prologue
    .line 236
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v0, v1

    .line 237
    .local v0, "receiver":Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :goto_0
    if-nez v0, :cond_1

    .line 241
    :goto_1
    return-void

    .line 236
    .end local v0    # "receiver":Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 240
    .restart local v0    # "receiver":Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_1
    iget-wide v2, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J

    iget-wide v4, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mAvailSize:J

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateApproximate(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;JJ)V

    goto :goto_1
.end method

.method public static unRegistDataInitReceiver(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$DataInitReceiver;)V
    .locals 1
    .param p0, "dataInitReceiver"    # Lcom/android/settings_ex/deviceinfo/StorageMeasurement$DataInitReceiver;

    .prologue
    .line 169
    sget-object v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mDataInitReceivers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 228
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 229
    return-void
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 233
    return-void
.end method

.method public measure()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 223
    :cond_0
    return-void
.end method

.method public setReceiver(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;)V
    .locals 1
    .param p1, "receiver"    # Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 217
    :cond_1
    return-void
.end method
