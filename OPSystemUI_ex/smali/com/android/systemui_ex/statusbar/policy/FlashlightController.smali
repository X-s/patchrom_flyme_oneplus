.class public Lcom/android/systemui_ex/statusbar/policy/FlashlightController;
.super Ljava/lang/Object;
.source "FlashlightController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static mFlashlightController:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;


# instance fields
.field private final mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private mCameraAvailable:Z

.field private mCameraId:Ljava/lang/String;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mFlashlightEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "FlashlightController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController$1;-><init>(Lcom/android/systemui_ex/statusbar/policy/FlashlightController;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 68
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->initialize()V

    .line 70
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/policy/FlashlightController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/statusbar/policy/FlashlightController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mCameraAvailable:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui_ex/statusbar/policy/FlashlightController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/FlashlightController;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mCameraAvailable:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui_ex/statusbar/policy/FlashlightController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/FlashlightController;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/statusbar/policy/FlashlightController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/FlashlightController;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->dispatchAvailabilityChanged(Z)V

    return-void
.end method

.method private cleanUpListenersLocked(Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;

    .prologue
    .line 187
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 188
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;

    .line 189
    .local v0, "found":Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_1

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 187
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 193
    .end local v0    # "found":Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;
    :cond_2
    return-void
.end method

.method private dispatchAvailabilityChanged(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    .line 159
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->dispatchListeners(IZ)V

    .line 160
    return-void
.end method

.method private dispatchError()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, v0, v0}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->dispatchListeners(IZ)V

    .line 156
    return-void
.end method

.method private dispatchListeners(IZ)V
    .locals 6
    .param p1, "message"    # I
    .param p2, "argument"    # Z

    .prologue
    .line 163
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 164
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 165
    .local v0, "N":I
    const/4 v1, 0x0

    .line 166
    .local v1, "cleanup":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 167
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;

    .line 168
    .local v3, "l":Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;
    if-eqz v3, :cond_3

    .line 169
    if-nez p1, :cond_1

    .line 170
    invoke-interface {v3}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightError()V

    .line 166
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    .line 172
    invoke-interface {v3}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightOff()V

    goto :goto_1

    .line 183
    .end local v0    # "N":I
    .end local v1    # "cleanup":Z
    .end local v2    # "i":I
    .end local v3    # "l":Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 173
    .restart local v0    # "N":I
    .restart local v1    # "cleanup":Z
    .restart local v2    # "i":I
    .restart local v3    # "l":Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;
    :cond_2
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 174
    :try_start_1
    invoke-interface {v3, p2}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightAvailabilityChanged(Z)V

    goto :goto_1

    .line 177
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 180
    .end local v3    # "l":Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;
    :cond_4
    if-eqz v1, :cond_5

    .line 181
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->cleanUpListenersLocked(Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 183
    :cond_5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    return-void
.end method

.method private declared-synchronized ensureHandler()V
    .locals 3

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 130
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlashlightController"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 131
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 132
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getCameraId()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "ids":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v4, v0, v3

    .line 139
    .local v4, "id":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 140
    .local v1, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 141
    .local v2, "flashAvailable":Ljava/lang/Boolean;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 142
    .local v7, "lensFacing":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 147
    .end local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "flashAvailable":Ljava/lang/Boolean;
    .end local v4    # "id":Ljava/lang/String;
    .end local v7    # "lensFacing":Ljava/lang/Integer;
    :goto_1
    return-object v4

    .line 138
    .restart local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v2    # "flashAvailable":Ljava/lang/Boolean;
    .restart local v4    # "id":Ljava/lang/String;
    .restart local v7    # "lensFacing":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "flashAvailable":Ljava/lang/Boolean;
    .end local v4    # "id":Ljava/lang/String;
    .end local v7    # "lensFacing":Ljava/lang/Integer;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getFlashlightController(Landroid/content/Context;)Lcom/android/systemui_ex/statusbar/policy/FlashlightController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sget-object v0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mFlashlightController:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mFlashlightController:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    .line 64
    :cond_0
    sget-object v0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mFlashlightController:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;)V
    .locals 3
    .param p1, "l"    # Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 117
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->cleanUpListenersLocked(Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    monitor-exit v1

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleGestureRequest()V
    .locals 2

    .prologue
    .line 232
    const-string v0, "FlashlightController"

    const-string v1, "handle gesture request to turn on/off flashlight"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    .line 234
    return-void

    .line 233
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize()V
    .locals 4

    .prologue
    .line 74
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mCameraId:Ljava/lang/String;

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mCameraId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->ensureHandler()V

    .line 83
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "FlashlightController"

    const-string v2, "Couldn\'t initialize."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized isAvailable()Z
    .locals 1

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mCameraAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFlashlightEnabled()Z
    .locals 1

    .prologue
    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    monitor-exit p0

    return v0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public killFlashlight()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    .line 244
    return-void
.end method

.method public removeListener(Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;)V
    .locals 2
    .param p1, "l"    # Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 124
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->cleanUpListenersLocked(Lcom/android/systemui_ex/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 125
    monitor-exit v1

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized setFlashlight(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    if-eq v1, p1, :cond_0

    .line 89
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, "result":I
    if-eqz p1, :cond_1

    .line 98
    invoke-static {}, Lcom/android/systemui_ex/controlpanel/utils/OnePlusTorchInterface;->TorchOn()I

    move-result v0

    .line 103
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 104
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->dispatchError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .end local v0    # "result":I
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 100
    .restart local v0    # "result":I
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/systemui_ex/controlpanel/utils/OnePlusTorchInterface;->TorchOff()I

    move-result v0

    goto :goto_0

    .line 106
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->dispatchAvailabilityChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 88
    .end local v0    # "result":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
