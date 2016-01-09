.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final OEM_BOOTANIMATION_FILE:Ljava/lang/String; = "/oem/media/shutdownanimation.zip"

.field private static final OEM_SHUTDOWN_MUSIC_FILE:Ljava/lang/String; = "/oem/media/shutdown.wav"

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_MUSIC_FILE:Ljava/lang/String; = "/system/media/shutdown.wav"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final SYSTEM_BOOTANIMATION_FILE:Ljava/lang/String; = "/system/media/shutdownanimation.zip"

.field private static final SYSTEM_ENCRYPTED_BOOTANIMATION_FILE:Ljava/lang/String; = "/system/media/shutdownanimation-encrypted.zip"

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static mAudioManager:Landroid/media/AudioManager; = null

.field private static mMediaPlayer:Landroid/media/MediaPlayer; = null

.field private static mNeedShutdownDialog:Z = false

.field private static mReboot:Z = false

.field private static mRebootReason:Ljava/lang/String; = null

.field private static mRebootSafeMode:Z = false

.field private static final mSpew:Z = true

.field private static sConfirmDialog:Landroid/app/AlertDialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private isShutdownMusicPlaying:Z

.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private shutdownMusicHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 86
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 92
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mNeedShutdownDialog:Z

    .line 101
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 103
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    .line 759
    new-instance v0, Lcom/android/server/power/ShutdownThread$6;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->shutdownMusicHandler:Landroid/os/Handler;

    .line 134
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 72
    sput-object p0, Lcom/android/server/power/ShutdownThread;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/power/ShutdownThread;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/power/ShutdownThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    return p1
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 326
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 327
    :try_start_0
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v2, :cond_0

    .line 328
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown sequence already running, returning."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    monitor-exit v3

    .line 397
    :goto_0
    return-void

    .line 331
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 332
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    sput-object v2, Lcom/android/server/power/ShutdownThread;->mAudioManager:Landroid/media/AudioManager;

    .line 336
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v6, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 341
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mNeedShutdownDialog:Z

    if-eqz v2, :cond_3

    .line 342
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkAnimationFileExist()Z

    move-result v2

    if-nez v2, :cond_1

    .line 345
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 346
    .local v1, "pd":Landroid/app/ProgressDialog;
    const v2, #android:string@power_off#t

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v2, #android:string@shutdown_progress#t

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 348
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 349
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 350
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-static/range {p0 .. p0}, Lcom/android/server/power/InjectorPower;->showShutDownAnimation(Landroid/content/Context;)V

    .end local v1    # "pd":Landroid/app/ProgressDialog;
    :cond_1
    :goto_1
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v2, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 361
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 364
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 366
    :try_start_1
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v4, 0x1

    const-string v5, "ShutdownThread-cpu"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 368
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 369
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 376
    :goto_2
    const-string v2, "ShutdownThread"

    const-string v3, "shutdown acquire partial WakeLock: cpu"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 381
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 383
    :try_start_2
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v4, 0x1a

    const-string v5, "ShutdownThread-screen"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 385
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 386
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 394
    :cond_2
    :goto_3
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v3, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v3}, Lcom/android/server/power/ShutdownThread$2;-><init>()V

    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 396
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v2}, Lcom/android/server/power/ShutdownThread;->start()V

    goto/16 :goto_0

    .line 332
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 356
    :cond_3
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->disableLights()V

    goto :goto_1

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "ShutdownThread"

    const-string v3, "No permission to acquire wake lock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2

    .line 387
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 388
    .restart local v0    # "e":Ljava/lang/SecurityException;
    const-string v2, "ShutdownThread"

    const-string v3, "No permission to acquire wake lock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_3
.end method

.method private static checkAnimationFileExist()Z
    .locals 2

    .prologue
    .line 734
    new-instance v0, Ljava/io/File;

    const-string v1, "/oem/media/shutdownanimation.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/media/shutdownanimation.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/media/shutdownanimation-encrypted.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    :cond_0
    const/4 v0, 0x1

    .line 739
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static deviceRebootOrShutdown(ZLjava/lang/String;)V
    .locals 10
    .param p0, "reboot"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 711
    new-instance v5, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/oem-services.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 713
    .local v5, "oemClassLoader":Ldalvik/system/PathClassLoader;
    const-string v1, "com.qti.server.power.ShutdownOem"

    .line 715
    .local v1, "deviceShutdownClassName":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 718
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v6, "rebootOrShutdown"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 719
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 731
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 720
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 721
    .local v3, "ex":Ljava/lang/NoSuchMethodException;
    :try_start_2
    const-string v6, "ShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rebootOrShutdown method not found in class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 726
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 727
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v6, "ShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to find class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 723
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v3

    .line 724
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "ShutdownThread"

    const-string v7, "Unknown exception hit while trying to invoke rebootOrShutdown"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 728
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 729
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "ShutdownThread"

    const-string v7, "Unknown exception while trying to invoke rebootOrShutdown"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static disableLights()V
    .locals 5

    .prologue
    .line 287
    const-class v3, Lcom/android/server/lights/LightsManager;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/LightsManager;

    .line 288
    .local v2, "lm":Lcom/android/server/lights/LightsManager;
    if-eqz v2, :cond_0

    .line 289
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    .line 290
    invoke-virtual {v2, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    .line 291
    .local v1, "light":Lcom/android/server/lights/Light;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/lights/Light;->setEnabled(Z)V

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    .end local v0    # "i":I
    .end local v1    # "light":Lcom/android/server/lights/Light;
    :cond_0
    const-string v3, "ShutdownThread"

    const-string v4, "LightsManager not ready!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_1
    return-void
.end method

.method private static getShutdownMusicFilePath()Ljava/lang/String;
    .locals 8

    .prologue
    .line 274
    const/4 v6, 0x2

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "/oem/media/shutdown.wav"

    aput-object v7, v2, v6

    const/4 v6, 0x1

    const-string v7, "/system/media/shutdown.wav"

    aput-object v7, v2, v6

    .line 275
    .local v2, "fileName":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 276
    .local v1, "checkFile":Ljava/io/File;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 277
    .local v5, "music":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    .end local v1    # "checkFile":Ljava/io/File;
    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .restart local v1    # "checkFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 282
    .end local v5    # "music":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 276
    .restart local v5    # "music":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 282
    .end local v5    # "music":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static isSilentMode()Z
    .locals 1

    .prologue
    .line 743
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v0

    return v0
.end method

.method private static lockDevice()V
    .locals 4

    .prologue
    .line 299
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 302
    .local v1, "wm":Landroid/view/IWindowManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "boot animation can not lock device!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    .line 254
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 255
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 256
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 259
    const-string v5, "ShutdownThread"

    const-string v6, "!!! Request to reboot !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 263
    .local v4, "stack":[Ljava/lang/StackTraceElement;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 265
    .local v1, "element":Ljava/lang/StackTraceElement;
    const-string v5, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " \t|----"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .end local v1    # "element":Ljava/lang/StackTraceElement;
    :cond_0
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 271
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 5
    .param p0, "reboot"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 682
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->deviceRebootOrShutdown(ZLjava/lang/String;)V

    .line 683
    if-eqz p0, :cond_0

    .line 684
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rebooting, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    .line 686
    const-string v2, "ShutdownThread"

    const-string v3, "Reboot failed, will attempt shutdown instead"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :goto_0
    const-string v2, "ShutdownThread"

    const-string v3, "Performing low-level shutdown..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    .line 707
    return-void

    .line 689
    :cond_0
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1}, Landroid/os/SystemVibrator;-><init>()V

    .line 691
    .local v1, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_0
    sget-object v4, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 699
    :goto_1
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 700
    :catch_0
    move-exception v2

    goto :goto_0

    .line 692
    :catch_1
    move-exception v0

    .line 694
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to vibrate during shutdown."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v0, 0x1

    .line 315
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 316
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 317
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 320
    const-string v0, "ShutdownThread"

    const-string v1, "rebootSafeMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 323
    return-void
.end method

.method public static setShutdownDialogEnabled(Z)V
    .locals 3
    .param p0, "shutdownDialogEnabled"    # Z

    .prologue
    .line 786
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Need shutdown dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mNeedShutdownDialog:Z

    .line 788
    return-void
.end method

.method private static showShutdownAnimation()V
    .locals 2

    .prologue
    .line 754
    const-string v0, "service.bootanim.exit"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v0, "ctl.start"

    const-string v1, "bootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v5, 0x0

    .line 145
    sput-boolean v5, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 146
    sput-boolean v5, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 149
    const-string v5, "ShutdownThread"

    const-string v6, "!!! Request to shutdown !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 153
    .local v4, "stack":[Ljava/lang/StackTraceElement;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 155
    .local v1, "element":Ljava/lang/StackTraceElement;
    const-string v5, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " \t|----"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "element":Ljava/lang/StackTraceElement;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 160
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    .line 165
    sget-object v7, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v7

    .line 166
    :try_start_0
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v6, :cond_0

    .line 167
    const-string v6, "ShutdownThread"

    const-string v8, "Request to shutdown already running, returning."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    monitor-exit v7

    .line 221
    :goto_0
    return-void

    .line 170
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    const/4 v5, 0x0

    .line 173
    .local v5, "showRebootOption":Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, #android:array@config_globalActionsList#t

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "defaultActions":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v1

    if-ge v2, v6, :cond_1

    .line 176
    aget-object v6, v1, v2

    const-string v7, "reboot"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 177
    const/4 v5, 0x1

    .line 181
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, #android:integer@config_longPressOnPowerBehavior#t

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 183
    .local v3, "longPressBehavior":I
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v6, :cond_5

    const v4, #android:string@reboot_safemode_confirm#t

    .line 188
    .local v4, "resourceId":I
    :goto_2
    if-eqz v5, :cond_2

    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-nez v6, :cond_2

    const v4, #android:string@reboot_confirm#t

    :cond_2
    const-string v6, "ShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-eqz p1, :cond_9

    .line 195
    new-instance v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 196
    .local v0, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_3

    .line 197
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 199
    :cond_3
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v6, :cond_7

    const v6, #android:string@reboot_safemode_title#t

    :goto_3
    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, #android:string@yes#t

    new-instance v8, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v8, p0}, Lcom/android/server/power/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, #android:string@no#t

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    sput-object v6, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 214
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    iput-object v6, v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 215
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 216
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 217
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 170
    .end local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v1    # "defaultActions":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "longPressBehavior":I
    .end local v4    # "resourceId":I
    .end local v5    # "showRebootOption":Z
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 175
    .restart local v1    # "defaultActions":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v5    # "showRebootOption":Z
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 183
    .restart local v3    # "longPressBehavior":I
    :cond_5
    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    const v4, #android:string@shutdown_confirm_question#t

    goto/16 :goto_2

    :cond_6
    const v4, #android:string@shutdown_confirm#t

    goto/16 :goto_2

    .line 199
    .restart local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .restart local v4    # "resourceId":I
    :cond_7
    if-eqz v5, :cond_8

    const v6, #android:string@reboot_title#t

    goto :goto_3

    :cond_8
    const v6, #android:string@power_off#t

    goto :goto_3

    .line 219
    .end local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :cond_9
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private shutdownRadios(I)V
    .locals 8
    .param p1, "timeout"    # I

    .prologue
    .line 568
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, p1

    add-long v2, v4, v6

    .line 569
    .local v2, "endTime":J
    const/4 v4, 0x1

    new-array v0, v4, [Z

    .line 570
    .local v0, "done":[Z
    new-instance v1, Lcom/android/server/power/ShutdownThread$5;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/server/power/ShutdownThread$5;-><init>(Lcom/android/server/power/ShutdownThread;J[Z)V

    .line 664
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 666
    int-to-long v4, p1

    :try_start_0
    invoke-virtual {v1, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    :goto_0
    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    if-nez v4, :cond_0

    .line 670
    const-string v4, "ShutdownThread"

    const-string v5, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_0
    return-void

    .line 667
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 400
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 401
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 402
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 403
    monitor-exit v1

    .line 404
    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 26

    .prologue
    .line 411
    new-instance v6, Lcom/android/server/power/ShutdownThread$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$3;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 424
    .local v6, "br":Landroid/content/BroadcastReceiver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_8

    const-string v2, "1"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 425
    .local v24, "reason":Ljava/lang/String;
    const-string v2, "sys.shutdown.requested"

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_0

    .line 433
    const-string v2, "persist.sys.safemode"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_0
    const-string v2, "ShutdownThread"

    const-string v4, "Sending shutdown broadcast..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 440
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 445
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    add-long v18, v4, v8

    .line 446
    .local v18, "endTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 447
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 448
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v12, v18, v8

    .line 449
    .local v12, "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v12, v8

    if-gtz v2, :cond_a

    .line 450
    const-string v2, "ShutdownThread"

    const-string v5, "Shutdown broadcast timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v12    # "delay":J
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    const-string v2, "ShutdownThread"

    const-string v4, "Shutting down activity manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .line 464
    .local v11, "am":Landroid/app/IActivityManager;
    if-eqz v11, :cond_2

    .line 466
    const/16 v2, 0x2710

    :try_start_1
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    .line 471
    :cond_2
    :goto_3
    const-string v2, "ShutdownThread"

    const-string v4, "Shutting down package manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    check-cast v23, Lcom/android/server/pm/PackageManagerService;

    .line 475
    .local v23, "pm":Lcom/android/server/pm/PackageManagerService;
    if-eqz v23, :cond_3

    .line 476
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    .line 479
    :cond_3
    const/16 v25, 0x0

    .line 483
    .local v25, "shutDownFile":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkAnimationFileExist()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 484
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->lockDevice()V

    .line 485
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showShutdownAnimation()V

    .line 487
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->isSilentMode()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getShutdownMusicFilePath()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_4

    .line 489
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->shutdownMusicHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 494
    :cond_4
    const-string v2, "ShutdownThread"

    const-string v4, "wait for shutdown music"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    add-long v20, v4, v8

    .line 496
    .local v20, "endTimeForMusic":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 497
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    if-eqz v2, :cond_5

    .line 498
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v12, v20, v8

    .line 499
    .restart local v12    # "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v12, v8

    if-gtz v2, :cond_b

    .line 500
    const-string v2, "ShutdownThread"

    const-string v5, "play shutdown music timeout!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .end local v12    # "delay":J
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    if-nez v2, :cond_6

    .line 509
    const-string v2, "ShutdownThread"

    const-string v5, "play shutdown music complete."

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_6
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 516
    const-string v2, "ShutdownThread"

    const-string v4, "Shutting down radios..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    .line 521
    new-instance v22, Lcom/android/server/power/ShutdownThread$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$4;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 528
    .local v22, "observer":Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v4, "Shutting down MountService"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 532
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x4e20

    add-long v16, v4, v8

    .line 533
    .local v16, "endShutTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 535
    :try_start_3
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v15

    .line 537
    .local v15, "mount":Landroid/os/storage/IMountService;
    if-eqz v15, :cond_c

    .line 538
    move-object/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 545
    .end local v15    # "mount":Landroid/os/storage/IMountService;
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_7

    .line 546
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v12, v16, v8

    .line 547
    .restart local v12    # "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v12, v8

    if-gtz v2, :cond_d

    .line 548
    const-string v2, "ShutdownThread"

    const-string v5, "Shutdown wait timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    .end local v12    # "delay":J
    :cond_7
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 560
    const-string v2, "ShutdownThread"

    const-string v4, "MountService shut done..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 563
    return-void

    .line 424
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v11    # "am":Landroid/app/IActivityManager;
    .end local v16    # "endShutTime":J
    .end local v18    # "endTime":J
    .end local v20    # "endTimeForMusic":J
    .end local v22    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .end local v23    # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v24    # "reason":Ljava/lang/String;
    .end local v25    # "shutDownFile":Ljava/lang/String;
    :cond_8
    const-string v2, "0"

    goto/16 :goto_0

    :cond_9
    const-string v2, ""

    goto/16 :goto_1

    .line 454
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v12    # "delay":J
    .restart local v18    # "endTime":J
    .restart local v24    # "reason":Ljava/lang/String;
    :cond_a
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 455
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 458
    .end local v12    # "delay":J
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    .line 504
    .restart local v11    # "am":Landroid/app/IActivityManager;
    .restart local v12    # "delay":J
    .restart local v20    # "endTimeForMusic":J
    .restart local v23    # "pm":Lcom/android/server/pm/PackageManagerService;
    .restart local v25    # "shutDownFile":Ljava/lang/String;
    :cond_b
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_4

    .line 505
    :catch_1
    move-exception v2

    goto/16 :goto_4

    .line 511
    .end local v12    # "delay":J
    :catchall_1
    move-exception v2

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    .line 540
    .restart local v15    # "mount":Landroid/os/storage/IMountService;
    .restart local v16    # "endShutTime":J
    .restart local v22    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :cond_c
    :try_start_9
    const-string v2, "ShutdownThread"

    const-string v5, "MountService unavailable for shutdown"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_5

    .line 542
    .end local v15    # "mount":Landroid/os/storage/IMountService;
    :catch_2
    move-exception v14

    .line 543
    .local v14, "e":Ljava/lang/Exception;
    :try_start_a
    const-string v2, "ShutdownThread"

    const-string v5, "Exception during MountService shutdown"

    invoke-static {v2, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 556
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v2

    .line 552
    .restart local v12    # "delay":J
    :cond_d
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_5

    .line 553
    :catch_3
    move-exception v2

    goto :goto_5

    .line 467
    .end local v12    # "delay":J
    .end local v16    # "endShutTime":J
    .end local v20    # "endTimeForMusic":J
    .end local v22    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .end local v23    # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v25    # "shutDownFile":Ljava/lang/String;
    :catch_4
    move-exception v2

    goto/16 :goto_3
.end method
