.class final Landroid/hardware/SystemSensorManager$SensorEventQueue;
.super Landroid/hardware/SystemSensorManager$BaseEventQueue;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SensorEventQueue"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/SensorEventListener;

.field private final mSensorsEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/SensorEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "manager"    # Landroid/hardware/SystemSensorManager;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 443
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;-><init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V

    .line 439
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    .line 444
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    .line 445
    return-void
.end method


# virtual methods
.method public addSensorEvent(Landroid/hardware/Sensor;)V
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 449
    new-instance v0, Landroid/hardware/SensorEvent;

    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    # getter for: Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I
    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->access$300(Landroid/hardware/SystemSensorManager;)I

    move-result v1

    invoke-static {p1, v1}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/hardware/SensorEvent;-><init>(I)V

    .line 451
    .local v0, "t":Landroid/hardware/SensorEvent;
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    monitor-enter v2

    .line 452
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 453
    monitor-exit v2

    .line 454
    return-void

    .line 453
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dispatchFlushCompleteEvent(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 496
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    instance-of v1, v1, Landroid/hardware/SensorEventListener2;

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    # getter for: Landroid/hardware/SystemSensorManager;->mHandleToSensor:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->access$200(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 498
    .local v0, "sensor":Landroid/hardware/Sensor;
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    check-cast v1, Landroid/hardware/SensorEventListener2;

    invoke-interface {v1, v0}, Landroid/hardware/SensorEventListener2;->onFlushCompleted(Landroid/hardware/Sensor;)V

    .line 500
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    :cond_0
    return-void
.end method

.method protected dispatchSensorEvent(I[FIJ)V
    .locals 8
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "inAccuracy"    # I
    .param p4, "timestamp"    # J

    .prologue
    const/4 v6, 0x0

    .line 468
    iget-object v4, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    # getter for: Landroid/hardware/SystemSensorManager;->mHandleToSensor:Landroid/util/SparseArray;
    invoke-static {v4}, Landroid/hardware/SystemSensorManager;->access$200(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 469
    .local v2, "sensor":Landroid/hardware/Sensor;
    const/4 v3, 0x0

    .line 470
    .local v3, "t":Landroid/hardware/SensorEvent;
    iget-object v5, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    monitor-enter v5

    .line 471
    :try_start_0
    iget-object v4, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/hardware/SensorEvent;

    move-object v3, v0

    .line 472
    monitor-exit v5

    .line 474
    if-nez v3, :cond_0

    .line 492
    :goto_0
    return-void

    .line 472
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 480
    :cond_0
    iget-object v4, v3, Landroid/hardware/SensorEvent;->values:[F

    iget-object v5, v3, Landroid/hardware/SensorEvent;->values:[F

    array-length v5, v5

    invoke-static {p2, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 481
    iput-wide p4, v3, Landroid/hardware/SensorEvent;->timestamp:J

    .line 482
    iput p3, v3, Landroid/hardware/SensorEvent;->accuracy:I

    .line 483
    iput-object v2, v3, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 486
    iget-object v4, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 487
    .local v1, "accuracy":I
    iget v4, v3, Landroid/hardware/SensorEvent;->accuracy:I

    if-ltz v4, :cond_1

    iget v4, v3, Landroid/hardware/SensorEvent;->accuracy:I

    if-eq v1, v4, :cond_1

    .line 488
    iget-object v4, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    iget v5, v3, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 489
    iget-object v4, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v5, v3, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget v6, v3, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-interface {v4, v5, v6}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 491
    :cond_1
    iget-object v4, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v4, v3}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    goto :goto_0
.end method

.method public removeSensorEvent(Landroid/hardware/Sensor;)V
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 458
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    monitor-enter v1

    .line 459
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 460
    monitor-exit v1

    .line 461
    return-void

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
