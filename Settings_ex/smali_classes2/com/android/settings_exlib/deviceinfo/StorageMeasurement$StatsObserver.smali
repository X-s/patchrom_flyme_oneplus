.class Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$StatsObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatsObserver"
.end annotation


# instance fields
.field private final mCurrentUser:I

.field private final mDetails:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

.field private final mFinished:Landroid/os/Message;

.field private final mIsPrivate:Z

.field private mRemaining:I


# direct methods
.method public constructor <init>(ZLcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;ILjava/util/List;Landroid/os/Message;I)V
    .locals 6
    .param p1, "isPrivate"    # Z
    .param p2, "details"    # Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;
    .param p3, "currentUser"    # I
    .param p5, "finished"    # Landroid/os/Message;
    .param p6, "remaining"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Landroid/os/Message;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    .line 213
    iput-boolean p1, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$StatsObserver;->mIsPrivate:Z

    .line 214
    iput-object p2, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 215
    iput p3, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$StatsObserver;->mCurrentUser:I

    .line 216
    if-eqz p1, :cond_0

    .line 218
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "userInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 219
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-object v2, v2, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_0

    .line 222
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v1    # "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    iput-object p5, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$StatsObserver;->mFinished:Landroid/os/Message;

    .line 223
    iput p6, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$StatsObserver;->mRemaining:I

    .line 212
    return-void
.end method

.method private addStatsLocked(Landroid/content/pm/PackageStats;)V
    .locals 12
    .param p1, "stats"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 239
    iget-boolean v6, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$StatsObserver;->mIsPrivate:Z

    if-eqz v6, :cond_1

    .line 240
    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    .line 241
    .local v2, "codeSize":J
    iget-wide v4, p1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 242
    .local v4, "dataSize":J
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 243
    .local v0, "cacheSize":J
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 246
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v8, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 247
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v8, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 248
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v6

    .line 252
    :cond_0
    iget-object v6, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-object v6, v6, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    iget v7, p1, Landroid/content/pm/PackageStats;->userHandle:I

    add-long v8, v2, v4

    invoke-static {v6, v7, v8, v9}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->-wrap0(Landroid/util/SparseLongArray;IJ)V

    .line 256
    iget-object v6, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-object v6, v6, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v7, p1, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-static {v6, v7, v4, v5}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->-wrap1(Landroid/util/SparseLongArray;IJ)V

    .line 259
    iget-object v6, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v8, v6, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    add-long/2addr v8, v0

    iput-wide v8, v6, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    .line 238
    .end local v0    # "cacheSize":J
    .end local v2    # "codeSize":J
    .end local v4    # "dataSize":J
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v6, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-object v6, v6, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    iget v7, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$StatsObserver;->mCurrentUser:I

    .line 264
    iget-wide v8, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v8, v10

    .line 265
    iget-wide v10, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    .line 264
    add-long/2addr v8, v10

    .line 265
    iget-wide v10, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    .line 264
    add-long/2addr v8, v10

    .line 263
    invoke-static {v6, v7, v8, v9}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement;->-wrap1(Landroid/util/SparseLongArray;IJ)V

    .line 266
    iget-object v6, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v8, v6, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v8, v10

    iput-wide v8, v6, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    goto :goto_0
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 2
    .param p1, "stats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$MeasurementDetails;

    monitor-enter v1

    .line 229
    if-eqz p2, :cond_0

    .line 230
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$StatsObserver;->addStatsLocked(Landroid/content/pm/PackageStats;)V

    .line 232
    :cond_0
    iget v0, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$StatsObserver;->mRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$StatsObserver;->mRemaining:I

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/android/settings_exlib/deviceinfo/StorageMeasurement$StatsObserver;->mFinished:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 227
    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
