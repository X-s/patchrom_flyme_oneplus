.class Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;
.super Landroid/os/Handler;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeasurementHandler"
.end annotation


# static fields
.field public static final MSG_COMPLETED:I = 0x4

.field public static final MSG_CONNECTED:I = 0x2

.field public static final MSG_DISCONNECT:I = 0x3

.field public static final MSG_INVALIDATE:I = 0x5

.field public static final MSG_MEASURE:I = 0x1


# instance fields
.field private volatile mBound:Z

.field private mCached:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefContainerConn:Landroid/content/ServiceConnection;

.field private mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

.field private mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    .line 353
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 325
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    .line 335
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler$1;-><init>(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    .line 354
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    .line 355
    return-void
.end method

.method static synthetic access$102(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    return p1
.end method

.method private measureApproximateStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 6
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 417
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "path":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-interface {p1, v1}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v2

    .line 421
    .local v2, "stats":[J
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    const/4 v4, 0x0

    aget-wide v4, v2, v4

    # setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$602(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J

    .line 422
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    const/4 v4, 0x1

    aget-wide v4, v2, v4

    # setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$702(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .end local v2    # "stats":[J
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # invokes: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sendInternalApproximateUpdate()V
    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)V

    .line 428
    return-void

    .line 417
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 423
    .restart local v1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "StorageMeasurement"

    const-string v4, "Problem in container service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 30
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 431
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    move-object v12, v5

    .line 432
    .local v12, "context":Landroid/content/Context;
    :goto_0
    if-nez v12, :cond_1

    .line 498
    :goto_1
    return-void

    .line 431
    .end local v12    # "context":Landroid/content/Context;
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 436
    .restart local v12    # "context":Landroid/content/Context;
    :cond_1
    new-instance v6, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-direct {v6}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;-><init>()V

    .line 437
    .local v6, "details":Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;
    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 438
    .local v8, "finished":Landroid/os/Message;
    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 440
    .local v14, "finishedpart":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$600(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v28

    move-wide/from16 v0, v28

    iput-wide v0, v6, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    .line 441
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$700(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v28

    move-wide/from16 v0, v28

    iput-wide v0, v6, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    .line 443
    const-string v5, "user"

    invoke-virtual {v12, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/UserManager;

    .line 445
    .local v25, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v25 .. v25}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v26

    .line 447
    .local v26, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 448
    .local v7, "currentUser":I
    new-instance v13, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v13, v7}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 452
    .local v13, "currentEnv":Landroid/os/Environment$UserEnvironment;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$900(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1000(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const/16 v17, 0x1

    .line 454
    .local v17, "measureMedia":Z
    :goto_2
    if-eqz v17, :cond_5

    .line 455
    # getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;
    invoke-static {}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1100()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 456
    .local v22, "type":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/os/Environment$UserEnvironment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    .line 457
    .local v18, "path":Ljava/io/File;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    # invokes: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1200(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v20

    .line 458
    .local v20, "size":J
    iget-object v5, v6, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 452
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "measureMedia":Z
    .end local v18    # "path":Ljava/io/File;
    .end local v20    # "size":J
    .end local v22    # "type":Ljava/lang/String;
    :cond_4
    const/16 v17, 0x0

    goto :goto_2

    .line 463
    .restart local v17    # "measureMedia":Z
    :cond_5
    if-eqz v17, :cond_6

    .line 464
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$900(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v13}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    .line 466
    .restart local v18    # "path":Ljava/io/File;
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    # invokes: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->measureMisc(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static {v5, v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1300(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v28

    move-wide/from16 v0, v28

    iput-wide v0, v6, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    .line 471
    .end local v18    # "path":Ljava/io/File;
    :cond_6
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/UserInfo;

    .line 472
    .local v23, "user":Landroid/content/pm/UserInfo;
    new-instance v24, Landroid/os/Environment$UserEnvironment;

    move-object/from16 v0, v23

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 473
    .local v24, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual/range {v24 .. v24}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    move-object/from16 v0, p1

    # invokes: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static {v0, v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1200(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v20

    .line 474
    .restart local v20    # "size":J
    iget-object v5, v6, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-wide/from16 v1, v20

    # invokes: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V
    invoke-static {v5, v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$000(Landroid/util/SparseLongArray;IJ)V

    goto :goto_5

    .line 464
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v20    # "size":J
    .end local v23    # "user":Landroid/content/pm/UserInfo;
    .end local v24    # "userEnv":Landroid/os/Environment$UserEnvironment;
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v18

    goto :goto_4

    .line 478
    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 479
    .local v19, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$900(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v5

    if-nez v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1000(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 480
    :cond_9
    const/16 v5, 0x2200

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v11

    .line 484
    .local v11, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v27

    mul-int v9, v5, v27

    .line 485
    .local v9, "count":I
    new-instance v4, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$StatsObserver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$900(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v5

    invoke-direct/range {v4 .. v9}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$StatsObserver;-><init>(ZLcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;ILandroid/os/Message;I)V

    .line 488
    .local v4, "observer":Lcom/android/settings_ex/deviceinfo/StorageMeasurement$StatsObserver;
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/UserInfo;

    .line 489
    .restart local v23    # "user":Landroid/content/pm/UserInfo;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .line 490
    .local v10, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v27, v0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v5, v1, v4}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    goto :goto_6

    .line 494
    .end local v10    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v23    # "user":Landroid/content/pm/UserInfo;
    :cond_b
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 496
    .end local v4    # "observer":Lcom/android/settings_ex/deviceinfo/StorageMeasurement$StatsObserver;
    .end local v9    # "count":I
    .end local v11    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_c
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 359
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 361
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    if-eqz v3, :cond_1

    .line 362
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    # invokes: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sendExactUpdate(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$300(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_0

    .line 366
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    .line 367
    .local v0, "context":Landroid/content/Context;
    :cond_2
    if-eqz v0, :cond_0

    .line 371
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 372
    :try_start_0
    iget-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_3

    .line 373
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 374
    const/4 v3, 0x2

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    invoke-virtual {p0, v3, v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 380
    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 376
    :cond_3
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v5, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 377
    .local v2, "service":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 384
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "service":Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/IMediaContainerService;

    .line 385
    .local v1, "imcs":Lcom/android/internal/app/IMediaContainerService;
    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->measureApproximateStorage(Lcom/android/internal/app/IMediaContainerService;)V

    .line 386
    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V

    .line 387
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    # invokes: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->notifyDataInitReceiver()V
    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)V

    goto :goto_0

    .line 391
    .end local v1    # "imcs":Lcom/android/internal/app/IMediaContainerService;
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 392
    :try_start_2
    iget-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_6

    .line 393
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    .line 394
    .restart local v0    # "context":Landroid/content/Context;
    :cond_4
    if-nez v0, :cond_5

    .line 395
    monitor-exit v4

    goto :goto_0

    .line 401
    .end local v0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 398
    .restart local v0    # "context":Landroid/content/Context;
    :cond_5
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    .line 399
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 401
    .end local v0    # "context":Landroid/content/Context;
    :cond_6
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 405
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    iput-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 406
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    # invokes: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sendExactUpdate(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$300(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto/16 :goto_0

    .line 410
    :pswitch_4
    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;

    goto/16 :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
