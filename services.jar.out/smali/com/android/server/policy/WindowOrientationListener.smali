.class public abstract Lcom/android/server/policy/WindowOrientationListener;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;,
        Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;,
        Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;
    }
.end annotation


# static fields
.field private static LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "WindowOrientationListener"

.field private static final USE_GRAVITY_SENSOR:Z


# instance fields
.field private mCurrentRotation:I

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

.field private mRate:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "debug.orientation.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 71
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 72
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "rate"    # I

    .prologue
    const/4 v6, -0x1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v6, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    .line 62
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 87
    iput-object p2, p0, Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 88
    const-string v4, "sensor"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    iput-object v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 89
    iput p3, p0, Lcom/android/server/policy/WindowOrientationListener;->mRate:I

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorType:Ljava/lang/String;

    .line 93
    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorType:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 94
    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    .line 95
    .local v3, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 96
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 97
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 98
    .local v2, "sensor":Landroid/hardware/Sensor;
    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorType:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 99
    iput-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 103
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v4, :cond_1

    .line 104
    new-instance v4, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    invoke-direct {v4, p0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;-><init>(Lcom/android/server/policy/WindowOrientationListener;)V

    iput-object v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    .line 108
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    if-nez v4, :cond_2

    .line 109
    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 111
    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v4, :cond_2

    .line 113
    new-instance v4, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;

    invoke-direct {v4, p0, p1}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;-><init>(Lcom/android/server/policy/WindowOrientationListener;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    .line 116
    :cond_2
    return-void

    .line 96
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "sensor":Landroid/hardware/Sensor;
    .restart local v3    # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/WindowOrientationListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/WindowOrientationListener;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public canDetectOrientation()Z
    .locals 2

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disable()V
    .locals 3

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 146
    const-string v0, "WindowOrientationListener"

    const-string v2, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    monitor-exit v1

    .line 157
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 150
    sget-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    if-eqz v0, :cond_1

    .line 151
    const-string v0, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener disabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    .line 156
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "WindowOrientationListener"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mCurrentRotation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mSensorType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mSensor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mRate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 241
    :cond_0
    monitor-exit v1

    .line 242
    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enable()V
    .locals 6

    .prologue
    .line 123
    const-string v0, "debug.orientation.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    .line 124
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 126
    const-string v0, "WindowOrientationListener"

    const-string v2, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    monitor-exit v1

    .line 138
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    if-nez v0, :cond_2

    .line 130
    sget-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    if-eqz v0, :cond_1

    .line 131
    const-string v0, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener enabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v0}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->resetLocked()V

    .line 134
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mRate:I

    iget-object v5, p0, Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    .line 137
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getProposedRotation()I
    .locals 2

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v0}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->getProposedRotationLocked()I

    move-result v0

    monitor-exit v1

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    monitor-exit v1

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract onProposedRotationChanged(I)V
.end method

.method public onTouchEnd()V
    .locals 4

    .prologue
    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 170
    .local v0, "whenElapsedNanos":J
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 171
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->onTouchEndLocked(J)V

    .line 174
    :cond_0
    monitor-exit v3

    .line 175
    return-void

    .line 174
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onTouchStart()V
    .locals 2

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v0}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->onTouchStartLocked()V

    .line 164
    :cond_0
    monitor-exit v1

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentRotation(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    iput p1, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    .line 185
    monitor-exit v1

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
