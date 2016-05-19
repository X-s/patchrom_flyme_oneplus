.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$FlymeInjector;
    }
.end annotation

# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmManagerService:Lcom/android/server/AlarmManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 304
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 305
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, #android:style@Theme.DeviceDefault.Light.DarkActionBar#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 178
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 179
    return-void
.end method

.method private static native nativeInit()V
.end method

.method private performPendingShutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 287
    const-string v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 290
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v1, v3

    .line 293
    .local v1, "reboot":Z
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 294
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 301
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_1
    return-void

    .line 296
    .restart local v1    # "reboot":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 282
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    return-void
.end method

.method private run()V
    .locals 8

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v7, 0x1

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 192
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 197
    :cond_0
    const-string v0, "SystemServer"

    const-string v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 207
    const-string v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 212
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 213
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 222
    :cond_1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 226
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 230
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 234
    invoke-static {v7}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 237
    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 240
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 242
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 243
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 246
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/android/server/SystemServer;->nativeInit()V

    .line 251
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 254
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 257
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 258
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 262
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 263
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 264
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_2
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 278
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :catch_0
    move-exception v6

    .line 266
    .local v6, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    throw v6
.end method

.method private startBootstrapServices()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 320
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    .line 323
    .local v1, "installer":Lcom/android/server/pm/Installer;
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 325
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 326
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 332
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 336
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 340
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 343
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x64

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 346
    const-string v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "cryptState":Ljava/lang/String;
    const-string v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 348
    const-string v2, "SystemServer"

    const-string v5, "Detected encryption in progress - only parsing core apps"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 356
    :cond_0
    :goto_0
    const-string v2, "SystemServer"

    const-string v5, "Package Manager"

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v5, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 361
    iget-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_1
    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 363
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 365
    const-string v2, "SystemServer"

    const-string v3, "User Service"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string v2, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 369
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 372
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 373
    return-void

    .line 350
    :cond_2
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    const-string v2, "SystemServer"

    const-string v5, "Device encrypted - only parsing core apps"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    :cond_3
    move v2, v4

    .line 357
    goto :goto_1
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/lights/LightsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 383
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 386
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 387
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 390
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 393
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 394
    return-void
.end method

.method private static final startDpmService(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1285
    const/4 v4, 0x0

    .line 1286
    .local v4, "dpmObj":Ljava/lang/Object;
    :try_start_0
    const-string v6, "persist.dpm.feature"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1287
    .local v3, "dpmFeature":I
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DPM configuration set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    if-lez v3, :cond_0

    const/16 v6, 0x10

    if-ge v3, v6, :cond_0

    .line 1290
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.qti.dpmframework.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1293
    .local v1, "dpmClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.qti.dpm.DpmService"

    invoke-virtual {v1, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1294
    .local v0, "dpmClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1296
    .local v2, "dpmConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1298
    if-eqz v4, :cond_0

    :try_start_1
    instance-of v6, v4, Landroid/os/IBinder;

    if-eqz v6, :cond_0

    .line 1299
    const-string v6, "dpmservice"

    check-cast v4, Landroid/os/IBinder;

    .end local v4    # "dpmObj":Ljava/lang/Object;
    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1300
    const-string v6, "SystemServer"

    const-string v7, "Created DPM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1309
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    :cond_0
    :goto_0
    return-void

    .line 1302
    .restart local v0    # "dpmClass":Ljava/lang/Class;
    .restart local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .restart local v3    # "dpmFeature":I
    :catch_0
    move-exception v5

    .line 1303
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "SystemServer"

    const-string v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1306
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 1307
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startOtherServices()V
    .locals 114

    .prologue
    .line 401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 402
    .local v4, "context":Landroid/content/Context;
    const/16 v34, 0x0

    .line 403
    .local v34, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v50, 0x0

    .line 404
    .local v50, "contentService":Lcom/android/server/content/ContentService;
    const/16 v104, 0x0

    .line 405
    .local v104, "vibrator":Lcom/android/server/VibratorService;
    const/16 v36, 0x0

    .line 406
    .local v36, "alarm":Landroid/app/IAlarmManager;
    const/16 v84, 0x0

    .line 407
    .local v84, "mountService":Lcom/android/server/MountService;
    const/4 v8, 0x0

    .line 408
    .local v8, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v7, 0x0

    .line 409
    .local v7, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v86, 0x0

    .line 410
    .local v86, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v46, 0x0

    .line 411
    .local v46, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v87, 0x0

    .line 412
    .local v87, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v96, 0x0

    .line 413
    .local v96, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v113, 0x0

    .line 414
    .local v113, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v41, 0x0

    .line 415
    .local v41, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v103, 0x0

    .line 416
    .local v103, "usb":Lcom/android/server/usb/UsbService;
    const/16 v94, 0x0

    .line 417
    .local v94, "serial":Lcom/android/server/SerialService;
    const/16 v90, 0x0

    .line 418
    .local v90, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v43, 0x0

    .line 419
    .local v43, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v71, 0x0

    .line 420
    .local v71, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v99, 0x0

    .line 421
    .local v99, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v48, 0x0

    .line 422
    .local v48, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v39, 0x0

    .line 423
    .local v39, "audioService":Landroid/media/AudioService;
    const/16 v83, 0x0

    .line 426
    .local v83, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v79, 0x0

    .line 428
    .local v79, "mOemExService":Lcom/android/server/OemExService;
    const-string v5, "config.disable_storage"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v65

    .line 429
    .local v65, "disableStorage":Z
    const-string v5, "config.disable_media"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v61

    .line 430
    .local v61, "disableMedia":Z
    const-string v5, "config.disable_bluetooth"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v59

    .line 431
    .local v59, "disableBluetooth":Z
    const-string v5, "config.disable_telephony"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v67

    .line 432
    .local v67, "disableTelephony":Z
    const-string v5, "config.disable_location"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v60

    .line 433
    .local v60, "disableLocation":Z
    const-string v5, "config.disable_systemui"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v66

    .line 434
    .local v66, "disableSystemUI":Z
    const-string v5, "config.disable_noncore"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v64

    .line 435
    .local v64, "disableNonCoreServices":Z
    const-string v5, "config.disable_network"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v62

    .line 436
    .local v62, "disableNetwork":Z
    const-string v5, "config.disable_networktime"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v63

    .line 437
    .local v63, "disableNetworkTime":Z
    const-string v5, "ro.kernel.qemu"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v73

    .line 438
    .local v73, "isEmulator":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, #android:bool@config_digitalPenCapable#t

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v54

    .line 440
    .local v54, "digitalPenCapable":Z
    const-string v5, "config.disable_atlas"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    .line 443
    .local v58, "disableAtlas":Z
    :try_start_0
    const-string v5, "SystemServer"

    const-string v6, "Reading configuration..."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 446
    const-string v5, "SystemServer"

    const-string v6, "Scheduling Policy"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string v5, "scheduling_policy"

    new-instance v6, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v6}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 451
    const-string v5, "SystemServer"

    const-string v6, "Telephony Registry"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v100, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v100

    invoke-direct {v0, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_40

    .line 453
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v100, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string v5, "telephony.registry"

    move-object/from16 v0, v100

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 455
    const-string v5, "SystemServer"

    const-string v6, "Entropy Mixer"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string v5, "entropy"

    new-instance v6, Lcom/android/server/EntropyMixer;

    invoke-direct {v6, v4}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 458
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 463
    :try_start_2
    const-string v5, "SystemServer"

    const-string v6, "Account Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v35, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 465
    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v35, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_3
    const-string v5, "account"

    move-object/from16 v0, v35

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_45
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_41

    move-object/from16 v34, v35

    .line 470
    .end local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_4
    const-string v5, "SystemServer"

    const-string v6, "Content Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_26

    const/4 v5, 0x1

    :goto_1
    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v50

    .line 474
    const-string v5, "SystemServer"

    const-string v6, "System Content Providers"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 477
    const-string v5, "SystemServer"

    const-string v6, "Vibrator Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v105, Lcom/android/server/VibratorService;

    move-object/from16 v0, v105

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 479
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .local v105, "vibrator":Lcom/android/server/VibratorService;
    :try_start_5
    const-string v5, "vibrator"

    move-object/from16 v0, v105

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 481
    const-string v5, "SystemServer"

    const-string v6, "Consumer IR Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v49, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v49

    invoke-direct {v0, v4}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_42

    .line 483
    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v49, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_6
    const-string v5, "consumer_ir"

    move-object/from16 v0, v49

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/SystemServer;->mAlarmManagerService:Lcom/android/server/AlarmManagerService;

    .line 486
    const-string v5, "alarm"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v36

    .line 489
    const-string v5, "SystemServer"

    const-string v6, "Init Watchdog"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v109

    .line 491
    .local v109, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v109

    invoke-virtual {v0, v4, v5}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 493
    const-string v5, "SystemServer"

    const-string v6, "Input Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v72, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v72

    invoke-direct {v0, v4}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_43

    .line 496
    .end local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v72, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_7
    const-string v5, "SystemServer"

    const-string v6, "Window Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_27

    const/4 v5, 0x1

    move v6, v5

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v5, :cond_28

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v72

    invoke-static {v4, v0, v6, v5, v9}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v113

    .line 500
    const-string v5, "window"

    move-object/from16 v0, v113

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 501
    const-string v5, "input"

    move-object/from16 v0, v72

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v113

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 505
    invoke-virtual/range {v113 .. v113}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v5

    move-object/from16 v0, v72

    invoke-virtual {v0, v5}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 506
    invoke-virtual/range {v72 .. v72}, Lcom/android/server/input/InputManagerService;->start()V

    .line 509
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 514
    if-eqz v73, :cond_29

    .line 515
    const-string v5, "SystemServer"

    const-string v6, "No Bluetooh Service (emulator)"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_4
    move-object/from16 v48, v49

    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v71, v72

    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v104, v105

    .line 533
    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .end local v109    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    :goto_5
    const/16 v97, 0x0

    .line 534
    .local v97, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v92, 0x0

    .line 535
    .local v92, "notification":Landroid/app/INotificationManager;
    const/16 v69, 0x0

    .line 536
    .local v69, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v107, 0x0

    .line 537
    .local v107, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v75, 0x0

    .line 538
    .local v75, "location":Lcom/android/server/LocationManagerService;
    const/16 v51, 0x0

    .line 539
    .local v51, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v101, 0x0

    .line 540
    .local v101, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v77, 0x0

    .line 541
    .local v77, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v37, 0x0

    .line 542
    .local v37, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v80, 0x0

    .line 545
    .local v80, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 549
    :try_start_8
    const-string v5, "SystemServer"

    const-string v6, "Input Method Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v70, Lcom/android/server/MzInputMethodManagerService;

    move-object/from16 v0, v70

    move-object/from16 v1, v113

    invoke-direct {v0, v4, v1}, Lcom/android/server/MzInputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    .line 551
    .end local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v70, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_9
    const-string v5, "input_method"

    move-object/from16 v0, v70

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3f

    move-object/from16 v69, v70

    .line 557
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_6
    :try_start_a
    const-string v5, "SystemServer"

    const-string v6, "Accessibility Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v5, "accessibility"

    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v6, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    .line 567
    :cond_0
    :goto_7
    :try_start_b
    invoke-virtual/range {v113 .. v113}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    .line 572
    :goto_8
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 573
    if-nez v65, :cond_1

    const-string v5, "0"

    const-string v6, "system_init.startmountservice"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 580
    :try_start_c
    const-string v5, "SystemServer"

    const-string v6, "Mount Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    new-instance v85, Lcom/android/server/MountService;

    move-object/from16 v0, v85

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    .line 582
    .end local v84    # "mountService":Lcom/android/server/MountService;
    .local v85, "mountService":Lcom/android/server/MountService;
    :try_start_d
    const-string v5, "mount"

    move-object/from16 v0, v85

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3e

    move-object/from16 v84, v85

    .line 590
    .end local v85    # "mountService":Lcom/android/server/MountService;
    .restart local v84    # "mountService":Lcom/android/server/MountService;
    :cond_1
    :goto_9
    :try_start_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7

    .line 596
    :goto_a
    :try_start_f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, #android:string@android_upgrading_starting_apps#t

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v9, 0x0

    invoke-interface {v5, v6, v9}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_3d

    .line 603
    :goto_b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_30

    .line 604
    if-nez v64, :cond_3

    .line 606
    :try_start_10
    const-string v5, "SystemServer"

    const-string v6, "LockSettingsService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    new-instance v78, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v78

    invoke-direct {v0, v4}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8

    .line 608
    .end local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v78, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_11
    const-string v5, "lock_settings"

    move-object/from16 v0, v78

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3c

    move-object/from16 v77, v78

    .line 613
    .end local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_c
    const-string v5, "ro.frp.pst"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 614
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 619
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 622
    :cond_3
    if-nez v66, :cond_4

    .line 624
    :try_start_12
    const-string v5, "SystemServer"

    const-string v6, "Status Bar"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    new-instance v98, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v98

    move-object/from16 v1, v113

    invoke-direct {v0, v4, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_9

    .line 626
    .end local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v98, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_13
    const-string v5, "statusbar"

    move-object/from16 v0, v98

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeStatusBarManagerService()V

    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_3b

    move-object/from16 v97, v98

    .line 632
    .end local v98    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_4
    :goto_d
    if-nez v64, :cond_5

    .line 634
    :try_start_14
    const-string v5, "SystemServer"

    const-string v6, "Clipboard Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const-string v5, "clipboard"

    new-instance v6, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v6, v4}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_a

    .line 642
    :cond_5
    :goto_e
    if-nez v62, :cond_6

    .line 644
    :try_start_15
    const-string v5, "SystemServer"

    const-string v6, "NetworkManagement Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v8

    const-string v5, "network_management"

    invoke-static {v5, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer$FlymeInjector;->addNetworkManagementServiceFlyme(Lcom/android/server/SystemServer;)V

    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_b

    :cond_6
    :goto_f
    if-nez v64, :cond_7

    :try_start_16
    const-string v5, "SystemServer"

    const-string v6, "Text Service Manager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    new-instance v102, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v102

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_c

    .line 656
    .end local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v102, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_17
    const-string v5, "textservices"

    move-object/from16 v0, v102

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_3a

    move-object/from16 v101, v102

    .line 662
    .end local v102    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_7
    :goto_10
    if-nez v62, :cond_2f

    .line 664
    :try_start_18
    const-string v5, "SystemServer"

    const-string v6, "Network Score Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    new-instance v88, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v88

    invoke-direct {v0, v4}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_d

    .line 666
    .end local v87    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v88, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_19
    const-string v5, "network_score"

    move-object/from16 v0, v88

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_39

    move-object/from16 v87, v88

    .line 672
    .end local v88    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v87    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_11
    :try_start_1a
    const-string v5, "SystemServer"

    const-string v6, "NetworkStats Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    new-instance v89, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v89

    move-object/from16 v1, v36

    invoke-direct {v0, v4, v8, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_e

    .line 674
    .end local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v89, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_1b
    const-string v5, "netstats"

    move-object/from16 v0, v89

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_38

    move-object/from16 v7, v89

    .line 680
    .end local v89    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_12
    :try_start_1c
    const-string v5, "SystemServer"

    const-string v6, "NetworkPolicy Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v6, "power"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    check-cast v6, Landroid/os/IPowerManager;

    invoke-direct/range {v3 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_f

    .line 685
    .end local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v3, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1d
    const-string v5, "netpolicy"

    invoke-static {v5, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_37

    .line 690
    :goto_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 691
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.WifiService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 692
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 695
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.RttService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 697
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.ethernet"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 698
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 702
    :cond_8
    :try_start_1e
    const-string v5, "SystemServer"

    const-string v6, "Connectivity Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    new-instance v47, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v47

    invoke-direct {v0, v4, v8, v7, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_10

    .line 705
    .end local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v47, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_1f
    const-string v5, "connectivity"

    move-object/from16 v0, v47

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 706
    move-object/from16 v0, v47

    invoke-virtual {v7, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 707
    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_36

    move-object/from16 v46, v47

    .line 713
    .end local v47    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_14
    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer$FlymeInjector;->addSambaService(Lcom/android/server/SystemServer;)V

    :try_start_20
    const-string v5, "SystemServer"

    const-string v6, "Network Service Discovery Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v96

    .line 715
    const-string v5, "servicediscovery"

    move-object/from16 v0, v96

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_11

    .line 721
    :goto_15
    :try_start_21
    const-string v5, "SystemServer"

    const-string v6, "DPM Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-static {v4}, Lcom/android/server/SystemServer;->startDpmService(Landroid/content/Context;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_12

    .line 728
    :goto_16
    if-nez v64, :cond_9

    .line 730
    :try_start_22
    const-string v5, "SystemServer"

    const-string v6, "UpdateLock Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const-string v5, "updatelock"

    new-instance v6, Lcom/android/server/UpdateLockService;

    invoke-direct {v6, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_13

    .line 743
    :cond_9
    :goto_17
    if-eqz v84, :cond_a

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v5, :cond_a

    .line 744
    invoke-virtual/range {v84 .. v84}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 748
    :cond_a
    if-eqz v34, :cond_b

    .line 749
    :try_start_23
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_14

    .line 755
    :cond_b
    :goto_18
    if-eqz v50, :cond_c

    .line 756
    :try_start_24
    invoke-virtual/range {v50 .. v50}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_15

    .line 761
    :cond_c
    :goto_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 762
    const-string v5, "notification"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v92

    .line 764
    move-object/from16 v0, v92

    invoke-virtual {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 768
    if-nez v60, :cond_d

    .line 770
    :try_start_25
    const-string v5, "SystemServer"

    const-string v6, "Location Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    new-instance v76, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v76

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_16

    .line 772
    .end local v75    # "location":Lcom/android/server/LocationManagerService;
    .local v76, "location":Lcom/android/server/LocationManagerService;
    :try_start_26
    const-string v5, "location"

    move-object/from16 v0, v76

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_35

    move-object/from16 v75, v76

    .line 778
    .end local v76    # "location":Lcom/android/server/LocationManagerService;
    .restart local v75    # "location":Lcom/android/server/LocationManagerService;
    :goto_1a
    :try_start_27
    const-string v5, "SystemServer"

    const-string v6, "Country Detector"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    new-instance v52, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v52

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_17

    .line 780
    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v52, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_28
    const-string v5, "country_detector"

    move-object/from16 v0, v52

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_34

    move-object/from16 v51, v52

    .line 786
    .end local v52    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_d
    :goto_1b
    if-nez v64, :cond_e

    .line 788
    :try_start_29
    const-string v5, "SystemServer"

    const-string v6, "Search Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const-string v5, "search"

    new-instance v6, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v6, v4}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_18

    .line 797
    :cond_e
    :goto_1c
    :try_start_2a
    const-string v5, "SystemServer"

    const-string v6, "DropBox Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const-string v5, "dropbox"

    new-instance v6, Lcom/android/server/DropBoxManagerService;

    new-instance v9, Ljava/io/File;

    const-string v10, "/data/system/dropbox"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v4, v9}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_19

    .line 804
    :goto_1d
    if-nez v64, :cond_f

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, #android:bool@config_enableWallpaperService#t

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 807
    :try_start_2b
    const-string v5, "SystemServer"

    const-string v6, "Wallpaper Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    new-instance v108, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v108

    invoke-direct {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_1a

    .line 809
    .end local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v108, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_2c
    const-string v5, "wallpaper"

    move-object/from16 v0, v108

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_33

    move-object/from16 v107, v108

    .line 815
    .end local v108    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_f
    :goto_1e
    if-nez v61, :cond_10

    const-string v5, "0"

    const-string v6, "system_init.startaudioservice"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 817
    :try_start_2d
    const-string v5, "SystemServer"

    const-string v6, "Audio Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    new-instance v40, Landroid/media/AudioService;

    move-object/from16 v0, v40

    invoke-direct {v0, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1b

    .line 819
    .end local v39    # "audioService":Landroid/media/AudioService;
    .local v40, "audioService":Landroid/media/AudioService;
    :try_start_2e
    const-string v5, "audio"

    move-object/from16 v0, v40

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_32

    move-object/from16 v39, v40

    .line 825
    .end local v40    # "audioService":Landroid/media/AudioService;
    .restart local v39    # "audioService":Landroid/media/AudioService;
    :cond_10
    :goto_1f
    if-nez v64, :cond_11

    .line 826
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/DockObserver;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 829
    :cond_11
    if-nez v61, :cond_12

    .line 831
    :try_start_2f
    const-string v5, "SystemServer"

    const-string v6, "Wired Accessory Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    new-instance v5, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v71

    invoke-direct {v5, v4, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v71

    invoke-virtual {v0, v5}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1c

    .line 840
    :cond_12
    :goto_20
    if-nez v64, :cond_15

    .line 841
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.usb.host"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.usb.accessory"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 845
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 849
    :cond_14
    :try_start_30
    const-string v5, "SystemServer"

    const-string v6, "Serial Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    new-instance v95, Lcom/android/server/SerialService;

    move-object/from16 v0, v95

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1d

    .line 852
    .end local v94    # "serial":Lcom/android/server/SerialService;
    .local v95, "serial":Lcom/android/server/SerialService;
    :try_start_31
    const-string v5, "serial"

    move-object/from16 v0, v95

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_31

    move-object/from16 v94, v95

    .line 858
    .end local v95    # "serial":Lcom/android/server/SerialService;
    .restart local v94    # "serial":Lcom/android/server/SerialService;
    :cond_15
    :goto_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 860
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 862
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 864
    if-nez v64, :cond_18

    .line 865
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.backup"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 866
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 869
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.app_widgets"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 870
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 873
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.voice_recognizers"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 874
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 879
    :cond_18
    :try_start_32
    const-string v5, "SystemServer"

    const-string v6, "DiskStats Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const-string v5, "diskstats"

    new-instance v6, Lcom/android/server/DiskStatsService;

    invoke-direct {v6, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1e

    .line 890
    :goto_22
    :try_start_33
    const-string v5, "SystemServer"

    const-string v6, "SamplingProfiler Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const-string v5, "samplingprofiler"

    new-instance v6, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v6, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1f

    .line 897
    :goto_23
    if-nez v62, :cond_19

    if-nez v63, :cond_19

    .line 899
    :try_start_34
    const-string v5, "SystemServer"

    const-string v6, "NetworkTimeUpdateService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    new-instance v91, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v91

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_20

    .end local v90    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v91, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v90, v91

    .line 906
    .end local v91    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v90    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_19
    :goto_24
    if-nez v61, :cond_1a

    .line 908
    :try_start_35
    const-string v5, "SystemServer"

    const-string v6, "CommonTimeManagementService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    new-instance v44, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v44

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_21

    .line 910
    .end local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v44, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_36
    const-string v5, "commontime_management"

    move-object/from16 v0, v44

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_30

    move-object/from16 v43, v44

    .line 916
    .end local v44    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_1a
    :goto_25
    if-nez v62, :cond_1b

    .line 918
    :try_start_37
    const-string v5, "SystemServer"

    const-string v6, "CertBlacklister"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    new-instance v5, Lcom/android/server/CertBlacklister;

    invoke-direct {v5, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_22

    .line 925
    :cond_1b
    :goto_26
    if-nez v64, :cond_1c

    .line 927
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_1c
    goto/16 :goto_flyme_0

    if-nez v64, :cond_1d

    if-nez v58, :cond_1d

    :try_start_38
    const-string v5, "SystemServer"

    const-string v6, "Assets Atlas Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    new-instance v38, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v38

    invoke-direct {v0, v4}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_23

    .line 934
    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v38, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_39
    const-string v5, "assetatlas"

    move-object/from16 v0, v38

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_2f

    move-object/from16 v37, v38

    .line 941
    .end local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_1d
    :goto_flyme_0
    :goto_27
    new-instance v79, Lcom/android/server/OemExService;

    .end local v79    # "mOemExService":Lcom/android/server/OemExService;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, v79

    move-object/from16 v1, v113

    move-object/from16 v2, v71

    invoke-direct {v0, v4, v1, v2, v5}, Lcom/android/server/OemExService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/power/PowerManagerService;)V

    .line 942
    .restart local v79    # "mOemExService":Lcom/android/server/OemExService;
    const-string v5, "OEMExService"

    move-object/from16 v0, v79

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.print"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 944
    .line 945
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.print.PrintManagerService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 948
    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 950
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 952
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.hdmi.cec"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 953
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 956
    :cond_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.live_tv"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 957
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 960
    :cond_20
    if-nez v64, :cond_21

    .line 962
    :try_start_3a
    const-string v5, "SystemServer"

    const-string v6, "Media Router Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    new-instance v81, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v81

    invoke-direct {v0, v4}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_24

    .line 964
    .end local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v81, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_3b
    const-string v5, "media_router"

    move-object/from16 v0, v81

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_2e

    move-object/from16 v80, v81

    .line 969
    .end local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_28
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 971
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 974
    :try_start_3c
    const-string v5, "SystemServer"

    const-string v6, "BackgroundDexOptService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    invoke-static {v4}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_25

    .line 982
    :cond_21
    :goto_29
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 984
    const-string v5, "ro.bluetooth.wipower"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v74

    .line 986
    .local v74, "isWipowerEnabled":Z
    if-eqz v74, :cond_2d

    .line 988
    :try_start_3d
    const-string v33, "wbc_service"

    .line 989
    .local v33, "WBC_SERVICE_NAME":Ljava/lang/String;
    const-string v5, "SystemServer"

    const-string v6, "WipowerBatteryControl Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    new-instance v111, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/com.quicinc.wbc.jar:/system/framework/com.quicinc.wbcservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object/from16 v0, v111

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 994
    .local v111, "wbcClassLoader":Ldalvik/system/PathClassLoader;
    const-string v5, "com.quicinc.wbcservice.WbcService"

    move-object/from16 v0, v111

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v110

    .line 995
    .local v110, "wbcClass":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v110

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v53

    .line 996
    .local v53, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v112

    .line 997
    .local v112, "wbcObject":Ljava/lang/Object;
    const-string v5, "SystemServer"

    const-string v6, "Successfully loaded WbcService class"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const-string v5, "wbc_service"

    check-cast v112, Landroid/os/IBinder;

    .end local v112    # "wbcObject":Ljava/lang/Object;
    move-object/from16 v0, v112

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_26

    .line 1006
    .end local v33    # "WBC_SERVICE_NAME":Ljava/lang/String;
    .end local v53    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v110    # "wbcClass":Ljava/lang/Class;
    .end local v111    # "wbcClassLoader":Ldalvik/system/PathClassLoader;
    :goto_2a
    if-eqz v54, :cond_22

    .line 1008
    :try_start_3e
    const-string v5, "SystemServer"

    const-string v6, "Digital Pen Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    new-instance v56, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/DigitalPenService.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object/from16 v0, v56

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1012
    .local v56, "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    const-string v5, "com.qti.snapdragon.digitalpen.DigitalPenService"

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v55

    .line 1014
    .local v55, "digitalPenClass":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v53

    .line 1015
    .restart local v53    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v57

    .line 1016
    .local v57, "digitalPenRemoteObject":Ljava/lang/Object;
    const-string v5, "SystemServer"

    const-string v6, "Successfully loaded DigitalPenService class"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const-string v5, "DigitalPen"

    check-cast v57, Landroid/os/IBinder;

    .end local v57    # "digitalPenRemoteObject":Ljava/lang/Object;
    move-object/from16 v0, v57

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_27

    .line 1024
    .end local v53    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v55    # "digitalPenClass":Ljava/lang/Class;
    .end local v56    # "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    .end local v74    # "isWipowerEnabled":Z
    :cond_22
    :goto_2b
    if-nez v64, :cond_23

    .line 1025
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1030
    :cond_23
    invoke-virtual/range {v113 .. v113}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v93

    .line 1031
    .local v93, "safeMode":Z
    if-eqz v93, :cond_2e

    .line 1032
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1034
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1041
    :goto_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v83

    .end local v83    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v83, Lcom/android/server/MmsServiceBroker;

    .line 1046
    .restart local v83    # "mmsService":Lcom/android/server/MmsServiceBroker;
    
    move-object/from16 v0, p0

    move-object/from16 v4, v113

    move-object/from16 v5, v107

    invoke-static {v0, v4, v5}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeServices(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wallpaper/WallpaperManagerService;)V
    
    :try_start_3f
    invoke-virtual/range {v104 .. v104}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_28

    .line 1051
    :goto_2d
    if-eqz v77, :cond_24

    .line 1053
    :try_start_40
    invoke-virtual/range {v77 .. v77}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_29

    .line 1060
    :cond_24
    :goto_2e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x1e0

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x1f4

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1065
    :try_start_41
    invoke-virtual/range {v113 .. v113}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_2a

    .line 1070
    :goto_2f
    if-eqz v93, :cond_25

    .line 1071
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1077
    :cond_25
    invoke-virtual/range {v113 .. v113}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v45

    .line 1078
    .local v45, "config":Landroid/content/res/Configuration;
    new-instance v82, Landroid/util/DisplayMetrics;

    invoke-direct/range {v82 .. v82}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1079
    .local v82, "metrics":Landroid/util/DisplayMetrics;
    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v106

    check-cast v106, Landroid/view/WindowManager;

    .line 1080
    .local v106, "w":Landroid/view/WindowManager;
    invoke-interface/range {v106 .. v106}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    move-object/from16 v0, v82

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1081
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, v45

    move-object/from16 v1, v82

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1085
    :try_start_42
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_2b

    .line 1091
    :goto_30
    :try_start_43
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_2c

    .line 1098
    :goto_31
    :try_start_44
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v93

    invoke-virtual {v5, v0, v6}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2d

    .line 1104
    :goto_32
    move-object/from16 v12, v84

    .line 1105
    .local v12, "mountServiceF":Lcom/android/server/MountService;
    move-object v14, v8

    .line 1106
    .local v14, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v15, v7

    .line 1107
    .local v15, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v16, v3

    .line 1108
    .local v16, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v17, v46

    .line 1109
    .local v17, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v13, v87

    .line 1110
    .local v13, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v19, v107

    .line 1111
    .local v19, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v20, v69

    .line 1112
    .local v20, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v22, v75

    .line 1113
    .local v22, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v23, v51

    .line 1114
    .local v23, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v24, v90

    .line 1115
    .local v24, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v25, v43

    .line 1116
    .local v25, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v26, v101

    .line 1117
    .local v26, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v21, v97

    .line 1118
    .local v21, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v27, v37

    .line 1119
    .local v27, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v28, v71

    .line 1120
    .local v28, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v29, v99

    .line 1121
    .local v29, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v30, v80

    .line 1122
    .local v30, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v18, v39

    .line 1123
    .local v18, "audioServiceF":Landroid/media/AudioService;
    move-object/from16 v31, v83

    .line 1124
    .local v31, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v32, v79

    .line 1131
    .local v32, "moemExService":Lcom/android/server/OemExService;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v9, Lcom/android/server/SystemServer$2;

    move-object/from16 v10, p0

    move-object v11, v4

    invoke-direct/range {v9 .. v32}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Landroid/media/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/android/server/OemExService;)V

    invoke-virtual {v5, v9}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1273
    return-void

    .line 466
    .end local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12    # "mountServiceF":Lcom/android/server/MountService;
    .end local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v18    # "audioServiceF":Landroid/media/AudioService;
    .end local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v23    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v24    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v25    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v26    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v27    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v28    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v29    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v30    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v31    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v32    # "moemExService":Lcom/android/server/OemExService;
    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v45    # "config":Landroid/content/res/Configuration;
    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v75    # "location":Lcom/android/server/LocationManagerService;
    .end local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v82    # "metrics":Landroid/util/DisplayMetrics;
    .end local v92    # "notification":Landroid/app/INotificationManager;
    .end local v93    # "safeMode":Z
    .end local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v106    # "w":Landroid/view/WindowManager;
    .end local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_0
    move-exception v68

    .line 467
    .local v68, "e":Ljava/lang/Throwable;
    :goto_33
    :try_start_45
    const-string v5, "SystemServer"

    const-string v6, "Failure starting Account Manager"

    move-object/from16 v0, v68

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_45} :catch_1

    goto/16 :goto_0

    .line 528
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v68

    move-object/from16 v99, v100

    .line 529
    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v68, "e":Ljava/lang/RuntimeException;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_34
    const-string v5, "System"

    const-string v6, "******************************************"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string v5, "System"

    const-string v6, "************ Failure starting core service"

    move-object/from16 v0, v68

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 471
    .end local v68    # "e":Ljava/lang/RuntimeException;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_26
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 497
    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v109    # "watchdog":Lcom/android/server/Watchdog;
    :cond_27
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_2

    :cond_28
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 516
    :cond_29
    :try_start_46
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2a

    .line 517
    const-string v5, "SystemServer"

    const-string v6, "No Bluetooth Service (factory test)"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 528
    :catch_2
    move-exception v68

    move-object/from16 v48, v49

    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v71, v72

    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v104, v105

    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_34

    .line 518
    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    :cond_2a
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.bluetooth"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 520
    const-string v5, "SystemServer"

    const-string v6, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 521
    :cond_2b
    if-eqz v59, :cond_2c

    .line 522
    const-string v5, "SystemServer"

    const-string v6, "Bluetooth Service disabled by config"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 524
    :cond_2c
    const-string v5, "SystemServer"

    const-string v6, "Bluetooth Manager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v42, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_46} :catch_2

    .line 526
    .end local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v42, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_47
    const-string v5, "bluetooth_manager"

    move-object/from16 v0, v42

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_47} :catch_44

    move-object/from16 v41, v42

    .end local v42    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_4

    .line 552
    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .end local v109    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v75    # "location":Lcom/android/server/LocationManagerService;
    .restart local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v92    # "notification":Landroid/app/INotificationManager;
    .restart local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3
    move-exception v68

    .line 553
    .local v68, "e":Ljava/lang/Throwable;
    :goto_35
    const-string v5, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 560
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v68

    .line 561
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 568
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v68

    .line 569
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 583
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v68

    .line 584
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_36
    const-string v5, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 591
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v68

    .line 592
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 609
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v68

    .line 610
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_37
    const-string v5, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 627
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v68

    .line 628
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_38
    const-string v5, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 637
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v68

    .line 638
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 647
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v68

    .line 648
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 657
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v68

    .line 658
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string v5, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 667
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v68

    .line 668
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_3a
    const-string v5, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 675
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v68

    .line 676
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string v5, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 686
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v68

    move-object/from16 v3, v86

    .line 687
    .end local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string v5, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 708
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v68

    .line 709
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string v5, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 717
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v68

    .line 718
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 723
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v68

    .line 724
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "starting DpmService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 733
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v68

    .line 734
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 750
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v68

    .line 751
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 757
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v68

    .line 758
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 773
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v68

    .line 774
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string v5, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 781
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v68

    .line 782
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string v5, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 791
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v68

    .line 792
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 800
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v68

    .line 801
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 810
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v68

    .line 811
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string v5, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 820
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v68

    .line 821
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string v5, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 835
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v68

    .line 836
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 853
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v68

    .line 854
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string v5, "SystemServer"

    const-string v6, "Failure starting SerialService"

    move-object/from16 v0, v68

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 881
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v68

    .line 882
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 893
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v68

    .line 894
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 901
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v68

    .line 902
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 911
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v68

    .line 912
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string v5, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 920
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v68

    .line 921
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 935
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v68

    .line 936
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_44
    const-string v5, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 965
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v68

    .line 966
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_45
    const-string v5, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 976
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v68

    .line 977
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 999
    .end local v68    # "e":Ljava/lang/Throwable;
    .restart local v74    # "isWipowerEnabled":Z
    :catch_26
    move-exception v68

    .line 1000
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "starting WipowerBatteryControl Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1003
    .end local v68    # "e":Ljava/lang/Throwable;
    :cond_2d
    const-string v5, "SystemServer"

    const-string v6, "Wipower not supported"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 1018
    :catch_27
    move-exception v68

    .line 1019
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "starting DigitalPenService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 1037
    .end local v68    # "e":Ljava/lang/Throwable;
    .end local v74    # "isWipowerEnabled":Z
    .restart local v93    # "safeMode":Z
    :cond_2e
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_2c

    .line 1047
    :catch_28
    move-exception v68

    .line 1048
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1054
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v68

    .line 1055
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1066
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v68

    .line 1067
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1086
    .end local v68    # "e":Ljava/lang/Throwable;
    .restart local v45    # "config":Landroid/content/res/Configuration;
    .restart local v82    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v106    # "w":Landroid/view/WindowManager;
    :catch_2b
    move-exception v68

    .line 1087
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1092
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v68

    .line 1093
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1099
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v68

    .line 1100
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v5, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 965
    .end local v45    # "config":Landroid/content/res/Configuration;
    .end local v68    # "e":Ljava/lang/Throwable;
    .end local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v82    # "metrics":Landroid/util/DisplayMetrics;
    .end local v93    # "safeMode":Z
    .end local v106    # "w":Landroid/view/WindowManager;
    .restart local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_2e
    move-exception v68

    move-object/from16 v80, v81

    .end local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_45

    .line 935
    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_2f
    move-exception v68

    move-object/from16 v37, v38

    .end local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_44

    .line 911
    .end local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v44    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_30
    move-exception v68

    move-object/from16 v43, v44

    .end local v44    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_43

    .line 853
    .end local v94    # "serial":Lcom/android/server/SerialService;
    .restart local v95    # "serial":Lcom/android/server/SerialService;
    :catch_31
    move-exception v68

    move-object/from16 v94, v95

    .end local v95    # "serial":Lcom/android/server/SerialService;
    .restart local v94    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_42

    .line 820
    .end local v39    # "audioService":Landroid/media/AudioService;
    .restart local v40    # "audioService":Landroid/media/AudioService;
    :catch_32
    move-exception v68

    move-object/from16 v39, v40

    .end local v40    # "audioService":Landroid/media/AudioService;
    .restart local v39    # "audioService":Landroid/media/AudioService;
    goto/16 :goto_41

    .line 810
    .end local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v108    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_33
    move-exception v68

    move-object/from16 v107, v108

    .end local v108    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_40

    .line 781
    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v52    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_34
    move-exception v68

    move-object/from16 v51, v52

    .end local v52    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_3f

    .line 773
    .end local v75    # "location":Lcom/android/server/LocationManagerService;
    .restart local v76    # "location":Lcom/android/server/LocationManagerService;
    :catch_35
    move-exception v68

    move-object/from16 v75, v76

    .end local v76    # "location":Lcom/android/server/LocationManagerService;
    .restart local v75    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_3e

    .line 708
    .end local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v47    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_36
    move-exception v68

    move-object/from16 v46, v47

    .end local v47    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_3d

    .line 686
    :catch_37
    move-exception v68

    goto/16 :goto_3c

    .line 675
    .end local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v89    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_38
    move-exception v68

    move-object/from16 v7, v89

    .end local v89    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_3b

    .line 667
    .end local v87    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v88    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_39
    move-exception v68

    move-object/from16 v87, v88

    .end local v88    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v87    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_3a

    .line 657
    .end local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v102    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_3a
    move-exception v68

    move-object/from16 v101, v102

    .end local v102    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_39

    .line 627
    .end local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v98    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_3b
    move-exception v68

    move-object/from16 v97, v98

    .end local v98    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_38

    .line 609
    .end local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_3c
    move-exception v68

    move-object/from16 v77, v78

    .end local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_37

    .line 600
    :catch_3d
    move-exception v5

    goto/16 :goto_b

    .line 583
    .end local v84    # "mountService":Lcom/android/server/MountService;
    .restart local v85    # "mountService":Lcom/android/server/MountService;
    :catch_3e
    move-exception v68

    move-object/from16 v84, v85

    .end local v85    # "mountService":Lcom/android/server/MountService;
    .restart local v84    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_36

    .line 552
    .end local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_3f
    move-exception v68

    move-object/from16 v69, v70

    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_35

    .line 528
    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v75    # "location":Lcom/android/server/LocationManagerService;
    .end local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v92    # "notification":Landroid/app/INotificationManager;
    .end local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_40
    move-exception v68

    goto/16 :goto_34

    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_41
    move-exception v68

    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v34, v35

    .end local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_34

    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    :catch_42
    move-exception v68

    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v104, v105

    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_34

    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    :catch_43
    move-exception v68

    move-object/from16 v48, v49

    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v104, v105

    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_34

    .end local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v42    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v109    # "watchdog":Lcom/android/server/Watchdog;
    :catch_44
    move-exception v68

    move-object/from16 v48, v49

    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v71, v72

    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v41, v42

    .end local v42    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v104, v105

    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_34

    .line 466
    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v109    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_45
    move-exception v68

    move-object/from16 v34, v35

    .end local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_33

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v75    # "location":Lcom/android/server/LocationManagerService;
    .restart local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v92    # "notification":Landroid/app/INotificationManager;
    .restart local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_2f
    move-object/from16 v3, v86

    .end local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_16

    .end local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_30
    move-object/from16 v3, v86

    .end local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_2b
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1276
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1277
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1280
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1281
    return-void
.end method

.method flymeGetFieldPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method flymeGetFieldSystemContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method
