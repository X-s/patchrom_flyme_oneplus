.class final Lcom/android/server/audio/RotationHelper$RotationCheckThread;
.super Ljava/lang/Thread;
.source "RotationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/RotationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RotationCheckThread"
.end annotation


# instance fields
.field private final WAIT_TIMES_MS:[I

.field private final mCounterLock:Ljava/lang/Object;

.field private mWaitCounter:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 176
    const-string v0, "RotationCheck"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 171
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    .line 173
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mCounterLock:Ljava/lang/Object;

    .line 177
    return-void

    .line 171
    :array_0
    .array-data 4
        0xa
        0x14
        0x32
        0x64
        0x64
        0xc8
        0xc8
        0x1f4
    .end array-data
.end method


# virtual methods
.method beginCheck()V
    .locals 2

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mCounterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 181
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I

    .line 182
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    :goto_0
    return-void

    .line 182
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 185
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method endCheck()V
    .locals 2

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mCounterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    array-length v0, v0

    iput v0, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I

    .line 191
    monitor-exit v1

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 195
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I

    iget-object v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 197
    iget-object v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mCounterLock:Ljava/lang/Object;

    monitor-enter v2

    .line 198
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I

    iget-object v3, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    iget v3, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I

    aget v0, v1, v3

    .line 200
    .local v0, "waitTimeMs":I
    :goto_1
    iget v1, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I

    .line 201
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    if-lez v0, :cond_0

    .line 204
    int-to-long v2, v0

    :try_start_1
    invoke-static {v2, v3}, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->sleep(J)V

    .line 205
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v1

    goto :goto_0

    .line 198
    .end local v0    # "waitTimeMs":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 201
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 209
    :cond_2
    return-void
.end method
