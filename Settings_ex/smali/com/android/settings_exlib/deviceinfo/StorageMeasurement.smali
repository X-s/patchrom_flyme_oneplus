.class public Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$1;,
        Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;,
        Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MainHandler;,
        Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$StatsObserver;,
        Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementReceiver;,
        Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field private static final DEFAULT_CONTAINER_PACKAGE:Ljava/lang/String; = "com.android.defcontainer"

.field private static final LOCAL_LOGV:Z = true

.field static final LOGV:Z

.field private static final TAG:Ljava/lang/String; = "StorageMeasurement"

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
.field private final mContext:Landroid/content/Context;

.field private final mMainHandler:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MainHandler;

.field private final mMeasurementHandler:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;

.field private mReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedVolume:Landroid/os/storage/VolumeInfo;

.field private final mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 64
    const-string v0, "StorageMeasurement"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->LOGV:Z

    .line 68
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 72
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v2, v0, v1

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v1, v0, v3

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

    sput-object v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/VolumeInfo;
    .param p3, "sharedVolume"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 149
    iput-object p3, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    .line 152
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MemoryMeasurement"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 155
    new-instance v1, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MainHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MainHandler;-><init>(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$1;)V

    iput-object v1, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mMainHandler:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MainHandler;

    .line 156
    new-instance v1, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;-><init>(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;

    .line 157
    return-void
.end method

.method static synthetic access$100(Landroid/util/SparseLongArray;IJ)V
    .locals 0
    .param p0, "x0"    # Landroid/util/SparseLongArray;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 60
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->addValueIfKeyExists(Landroid/util/SparseLongArray;IJ)V

    return-void
.end method

.method static synthetic access$200(Landroid/util/SparseLongArray;IJ)V
    .locals 0
    .param p0, "x0"    # Landroid/util/SparseLongArray;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 60
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;)Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MainHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mMainHandler:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MainHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V

    return-void
.end method

.method private static addValue(Landroid/util/SparseLongArray;IJ)V
    .locals 2
    .param p0, "array"    # Landroid/util/SparseLongArray;
    .param p1, "key"    # I
    .param p2, "value"    # J

    .prologue
    .line 468
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 469
    return-void
.end method

.method private static addValueIfKeyExists(Landroid/util/SparseLongArray;IJ)V
    .locals 4
    .param p0, "array"    # Landroid/util/SparseLongArray;
    .param p1, "key"    # I
    .param p2, "value"    # J

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    .line 473
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 474
    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {p0, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 476
    :cond_0
    return-void
.end method

.method private static getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 6
    .param p0, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 437
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v2

    .line 438
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

    .line 442
    .end local v2    # "size":J
    :goto_0
    return-wide v2

    .line 440
    :catch_0
    move-exception v0

    .line 441
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

    .line 442
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private invalidate()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 184
    return-void
.end method

.method private measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 32
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 350
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/UserManager;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/UserManager;

    .line 351
    .local v26, "userManager":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 353
    .local v19, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual/range {v26 .. v26}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v28

    .line 354
    .local v28, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v8

    .line 357
    .local v8, "currentProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v6, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-direct {v6}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;-><init>()V

    .line 358
    .local v6, "details":Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v7, 0x4

    invoke-virtual {v5, v7, v6}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 361
    .local v9, "finished":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v5

    if-nez v5, :cond_2

    .line 362
    :cond_0
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 433
    :cond_1
    :goto_0
    return-void

    .line 366
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 367
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/UserInfo;

    .line 368
    .local v14, "currentUserInfo":Landroid/content/pm/UserInfo;
    iget v0, v14, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    .line 369
    .local v25, "userId":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v13

    .line 370
    .local v13, "basePath":Ljava/io/File;
    new-instance v18, Ljava/util/HashMap;

    sget-object v5, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 371
    .local v18, "mediaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v5, v6, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Landroid/util/SparseArray;

    move/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 375
    sget-object v5, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 376
    .local v21, "type":Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v13, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 377
    .local v20, "path":Ljava/io/File;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v22

    .line 378
    .local v22, "size":J
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 382
    .end local v20    # "path":Ljava/io/File;
    .end local v21    # "type":Ljava/lang/String;
    .end local v22    # "size":J
    :cond_3
    iget-object v5, v6, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:Landroid/util/SparseLongArray;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->measureMisc(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v30

    move/from16 v0, v25

    move-wide/from16 v1, v30

    invoke-static {v5, v0, v1, v2}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    goto :goto_1

    .line 385
    .end local v13    # "basePath":Ljava/io/File;
    .end local v14    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "mediaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v25    # "userId":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_5

    .line 388
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/UserInfo;

    .line 389
    .local v24, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v0, v24

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v7}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v27

    .line 390
    .local v27, "userPath":Ljava/io/File;
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v22

    .line 391
    .restart local v22    # "size":J
    iget-object v5, v6, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    move-object/from16 v0, v24

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    move-wide/from16 v0, v22

    invoke-static {v5, v7, v0, v1}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    goto :goto_3

    .line 396
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v22    # "size":J
    .end local v24    # "user":Landroid/content/pm/UserInfo;
    .end local v27    # "userPath":Ljava/io/File;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v15

    .line 397
    .local v15, "file":Ljava/io/File;
    if-eqz v15, :cond_6

    .line 398
    invoke-virtual {v15}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v30

    move-wide/from16 v0, v30

    iput-wide v0, v6, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    .line 399
    invoke-virtual {v15}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v30

    move-wide/from16 v0, v30

    iput-wide v0, v6, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    .line 403
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_b

    .line 404
    const/16 v5, 0x2200

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v12

    .line 408
    .local v12, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v29, "volumeApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .line 410
    .local v11, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 411
    move-object/from16 v0, v29

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 415
    .end local v11    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_8
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v7

    mul-int v10, v5, v7

    .line 416
    .local v10, "count":I
    if-nez v10, :cond_9

    .line 417
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 421
    :cond_9
    new-instance v4, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$StatsObserver;

    const/4 v5, 0x1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-direct/range {v4 .. v10}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$StatsObserver;-><init>(ZLcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;ILjava/util/List;Landroid/os/Message;I)V

    .line 423
    .local v4, "observer":Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$StatsObserver;
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/UserInfo;

    .line 424
    .restart local v24    # "user":Landroid/content/pm/UserInfo;
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .line 425
    .restart local v11    # "app":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v24

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7, v4}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    goto :goto_5

    .line 430
    .end local v4    # "observer":Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$StatsObserver;
    .end local v10    # "count":I
    .end local v11    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v24    # "user":Landroid/content/pm/UserInfo;
    .end local v29    # "volumeApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_b
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method

.method private measureMisc(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 10
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "dir"    # Ljava/io/File;

    .prologue
    .line 447
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 448
    .local v2, "files":[Ljava/io/File;
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-wide/16 v6, 0x0

    .line 464
    :cond_0
    return-wide v6

    .line 451
    :cond_1
    const-wide/16 v6, 0x0

    .line 452
    .local v6, "miscSize":J
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 453
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 454
    .local v5, "name":Ljava/lang/String;
    sget-object v8, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 452
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 458
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 459
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_1

    .line 460
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 461
    invoke-static {p1, v1}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_1
.end method


# virtual methods
.method public forceMeasure()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->invalidate()V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->measure()V

    .line 168
    return-void
.end method

.method public measure()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 171
    iget-object v0, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 174
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 178
    iget-object v0, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 179
    iget-object v0, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 180
    return-void
.end method

.method public setReceiver(Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementReceiver;)V
    .locals 1
    .param p1, "receiver"    # Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 163
    :cond_1
    return-void
.end method
