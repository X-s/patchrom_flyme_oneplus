.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x1030498

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.LockSettingsService$Lifecycle"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_BLUETOOTH_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.bluetooth.WearBluetoothService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field private static final WEAR_WIFI_MEDIATOR_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.wifi.WearWifiMediatorService"

.field private static final WIFI_NAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.nan.WifiNanService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final sMaxBinderThreads:I = 0x1f


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mIsAlarmBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method static synthetic -get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SystemServer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/SystemServer;)Lcom/android/server/webkit/WebViewUpdateService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 241
    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 419
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 420
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 421
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x1030498

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 418
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 238
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 237
    return-void
.end method

.method private performPendingShutdown()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 379
    const-string/jumbo v6, "sys.shutdown.requested"

    const-string/jumbo v7, ""

    .line 378
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 380
    .local v5, "shutdownAction":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 381
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_0

    const/4 v4, 0x1

    .line 384
    .local v4, "reboot":Z
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_1

    .line 385
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 395
    :goto_1
    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 396
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "/cache/recovery/uncrypt_file"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    .local v2, "packageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 398
    const/4 v1, 0x0

    .line 400
    .local v1, "filename":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v2, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 405
    .end local v1    # "filename":Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_2

    const-string/jumbo v6, "/data"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 406
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/cache/recovery/block.map"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 407
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return-void

    .line 381
    .end local v2    # "packageFile":Ljava/io/File;
    .end local v4    # "reboot":Z
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "reboot":Z
    goto :goto_0

    .line 387
    :cond_1
    const/4 v3, 0x0

    .local v3, "reason":Ljava/lang/String;
    goto :goto_1

    .line 401
    .end local v3    # "reason":Ljava/lang/String;
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v2    # "packageFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Error reading uncrypt package file"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 414
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "packageFile":Ljava/io/File;
    :cond_2
    invoke-static {v8, v4, v3}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 377
    .end local v4    # "reboot":Z
    :cond_3
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 373
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    return-void
.end method

.method private run()V
    .locals 10

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v8, 0x80000

    .line 248
    :try_start_0
    const-string/jumbo v0, "InitBeforeStartServices"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 254
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-wide/32 v0, 0x5265c00

    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 266
    :cond_0
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    .line 269
    .local v7, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string/jumbo v0, "persist.sys.country"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string/jumbo v0, "persist.sys.localevar"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .end local v7    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0xbc2

    invoke-static {v2, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 286
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 291
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 292
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    .line 297
    const-wide/32 v2, 0x36ee80

    const-wide/32 v4, 0x36ee80

    .line 292
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 301
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 305
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 309
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 313
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 317
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 320
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 323
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 327
    const/4 v0, -0x2

    .line 326
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 328
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 329
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 332
    const-string/jumbo v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 336
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 339
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 342
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 343
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 350
    :try_start_1
    const-string/jumbo v0, "StartServices"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 351
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 352
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 353
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 359
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 363
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 364
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_3
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 369
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :catchall_0
    move-exception v0

    .line 345
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 344
    throw v0

    .line 354
    :catch_0
    move-exception v6

    .line 355
    .local v6, "ex":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 358
    .end local v6    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    .line 359
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 358
    throw v0
.end method

.method private startBootstrapServices()V
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/32 v10, 0x80000

    .line 435
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/pm/Installer;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Installer;

    .line 438
    .local v3, "installer":Lcom/android/server/pm/Installer;
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 439
    const-class v8, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 438
    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 440
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 441
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 447
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 451
    const-string/jumbo v5, "InitPowerManagement"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 452
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 453
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 456
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/lights/LightsService;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 460
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 463
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v8, 0x64

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 466
    const-string/jumbo v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v5, "ro.alarm_boot"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    .line 469
    const-string/jumbo v5, "trigger_restart_min_framework"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 470
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v8, "Detected encryption in progress - only parsing core apps"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 483
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 484
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v8, "Regionalization Service"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    new-instance v4, Lcom/android/server/os/RegionalizationService;

    invoke-direct {v4}, Lcom/android/server/os/RegionalizationService;-><init>()V

    .line 486
    .local v4, "regionalizationService":Lcom/android/server/os/RegionalizationService;
    const-string/jumbo v5, "regionalization"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 490
    .end local v4    # "regionalizationService":Lcom/android/server/os/RegionalizationService;
    :cond_1
    const-string/jumbo v5, "StartPackageManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 491
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 492
    iget v5, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v5, :cond_5

    move v5, v6

    :goto_1
    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 491
    invoke-static {v8, v3, v5, v6}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 493
    iget-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 494
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 495
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 500
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v5, :cond_2

    .line 501
    const-string/jumbo v5, "config.disable_otadexopt"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 503
    .local v1, "disableOtaDexopt":Z
    if-nez v1, :cond_2

    .line 504
    const-string/jumbo v5, "StartOtaDexOptService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 506
    :try_start_0
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v5, v6}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 515
    .end local v1    # "disableOtaDexopt":Z
    :cond_2
    :goto_2
    const-string/jumbo v5, "StartUserManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 516
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 517
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 520
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 523
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 527
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 431
    return-void

    .line 472
    :cond_3
    const-string/jumbo v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 473
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v8, "Device encrypted - only parsing core apps"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_0

    .line 475
    :cond_4
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    if-eqz v5, :cond_0

    .line 480
    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_0

    :cond_5
    move v5, v7

    .line 492
    goto :goto_1

    .line 507
    .restart local v1    # "disableOtaDexopt":Z
    :catch_0
    move-exception v2

    .line 508
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v5, "starting OtaDexOptService"

    invoke-direct {p0, v5, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_2

    .line 509
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    .line 510
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    throw v5
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 538
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 539
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 540
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 539
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 543
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 533
    return-void
.end method

.method private startOtherServices()V
    .locals 106

    .prologue
    .line 551
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 552
    .local v6, "context":Landroid/content/Context;
    const/16 v93, 0x0

    .line 553
    .local v93, "vibrator":Lcom/android/server/VibratorService;
    const/16 v74, 0x0

    .line 554
    .local v74, "mountService":Landroid/os/storage/IMountService;
    const/16 v75, 0x0

    .line 555
    .local v75, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v80, 0x0

    .line 556
    .local v80, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v76, 0x0

    .line 557
    .local v76, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v30, 0x0

    .line 558
    .local v30, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v78, 0x0

    .line 559
    .local v78, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v87, 0x0

    .line 560
    .local v87, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v102, 0x0

    .line 561
    .local v102, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v85, 0x0

    .line 562
    .local v85, "serial":Lcom/android/server/SerialService;
    const/16 v81, 0x0

    .line 563
    .local v81, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v27, 0x0

    .line 564
    .local v27, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v58, 0x0

    .line 565
    .local v58, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v91, 0x0

    .line 566
    .local v91, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v32, 0x0

    .line 567
    .local v32, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v20, 0x0

    .line 568
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v55, 0x0

    .line 569
    .local v55, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v100, 0x0

    .line 570
    .local v100, "wigigP2pService":Ljava/lang/Object;
    const/16 v101, 0x0

    .line 573
    .local v101, "wigigService":Ljava/lang/Object;
    const/16 v66, 0x0

    .line 576
    .local v66, "mOemExService":Lcom/android/server/OemExService;
    const/16 v67, 0x0

    .line 580
    .local v67, "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    const/16 v68, 0x0

    .line 582
    .local v68, "mSDService":Lcom/android/server/display/SDService;
    const-string/jumbo v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v48

    .line 583
    .local v48, "disableStorage":Z
    const-string/jumbo v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v38

    .line 584
    .local v38, "disableBluetooth":Z
    const-string/jumbo v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    .line 585
    .local v39, "disableLocation":Z
    const-string/jumbo v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    .line 586
    .local v49, "disableSystemUI":Z
    const-string/jumbo v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    .line 587
    .local v43, "disableNonCoreServices":Z
    const-string/jumbo v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    .line 588
    .local v41, "disableNetwork":Z
    const-string/jumbo v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v42

    .line 589
    .local v42, "disableNetworkTime":Z
    const-string/jumbo v4, "config.disable_rtt"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v44

    .line 590
    .local v44, "disableRtt":Z
    const-string/jumbo v4, "config.disable_mediaproj"

    .line 591
    const/4 v5, 0x0

    .line 590
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    .line 592
    .local v40, "disableMediaProjection":Z
    const-string/jumbo v4, "config.disable_serial"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v47

    .line 593
    .local v47, "disableSerial":Z
    const-string/jumbo v4, "config.disable_searchmanager"

    .line 594
    const/4 v5, 0x0

    .line 593
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    .line 595
    .local v46, "disableSearchManager":Z
    const-string/jumbo v4, "config.disable_trustmanager"

    .line 596
    const/4 v5, 0x0

    .line 595
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v51

    .line 597
    .local v51, "disableTrustManager":Z
    const-string/jumbo v4, "config.disable_textservices"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v50

    .line 598
    .local v50, "disableTextServices":Z
    const-string/jumbo v4, "config.disable_samplingprof"

    .line 599
    const/4 v5, 0x0

    .line 598
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v45

    .line 600
    .local v45, "disableSamplingProfiler":Z
    const-string/jumbo v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    .line 601
    .local v60, "isEmulator":Z
    const-string/jumbo v4, "persist.wigig.enable"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v54

    .line 604
    .local v54, "enableWigig":Z
    :try_start_0
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 607
    const-string/jumbo v4, "StartSchedulingPolicyService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 608
    const-string/jumbo v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 609
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 611
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 613
    const-string/jumbo v4, "StartTelephonyRegistry"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 614
    new-instance v92, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v92

    invoke-direct {v0, v6}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_33

    .line 615
    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v92, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v4, "telephony.registry"

    move-object/from16 v0, v92

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 616
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 618
    const-string/jumbo v4, "StartEntropyMixer"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 619
    new-instance v4, Lcom/android/server/EntropyMixer;

    invoke-direct {v4, v6}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 620
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 622
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 624
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Camera Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 628
    const-string/jumbo v4, "StartAccountManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 630
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 632
    const-string/jumbo v4, "StartContentService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 633
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 634
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 636
    const-string/jumbo v4, "InstallSystemProviders"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 637
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 638
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 640
    const-string/jumbo v4, "StartVibratorService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 641
    new-instance v94, Lcom/android/server/VibratorService;

    move-object/from16 v0, v94

    invoke-direct {v0, v6}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_34

    .line 642
    .local v94, "vibrator":Lcom/android/server/VibratorService;
    :try_start_2
    const-string/jumbo v4, "vibrator"

    .end local v93    # "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v0, v94

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 643
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 645
    const-string/jumbo v4, "StartConsumerIrService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 646
    new-instance v33, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v33

    invoke-direct {v0, v6}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_35

    .line 647
    .local v33, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_3
    const-string/jumbo v4, "consumer_ir"

    .end local v32    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v0, v33

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 648
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 650
    const-string/jumbo v4, "StartAlarmManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 652
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 654
    const-string/jumbo v4, "InitWatchdog"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 655
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v96

    .line 656
    .local v96, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v96

    invoke-virtual {v0, v6, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 657
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 659
    const-string/jumbo v4, "StartInputManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 660
    new-instance v59, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v59

    invoke-direct {v0, v6}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_36

    .line 661
    .local v59, "inputManager":Lcom/android/server/input/InputManagerService;
    const-wide/32 v4, 0x80000

    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 663
    .end local v58    # "inputManager":Lcom/android/server/input/InputManagerService;
    const-string/jumbo v4, "StartWindowManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 665
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3c

    const/4 v4, 0x1

    move v5, v4

    .line 666
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-eqz v4, :cond_3d

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v103, v0

    .line 664
    move-object/from16 v0, v59

    move/from16 v1, v103

    invoke-static {v6, v0, v5, v4, v1}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v102

    .line 667
    .local v102, "wm":Lcom/android/server/wm/WindowManagerService;
    const-string/jumbo v4, "window"

    move-object/from16 v0, v102

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 668
    const-string/jumbo v4, "input"

    move-object/from16 v0, v59

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 669
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 672
    new-instance v69, Lcom/android/server/display/SDService;

    move-object/from16 v0, v69

    invoke-direct {v0, v6}, Lcom/android/server/display/SDService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_37

    .line 673
    .local v69, "mSDService":Lcom/android/server/display/SDService;
    :try_start_5
    const-string/jumbo v4, "smartdisplay"

    .end local v68    # "mSDService":Lcom/android/server/display/SDService;
    move-object/from16 v0, v69

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 675
    const-string/jumbo v4, "StartVrManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 677
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 679
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v102

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 681
    invoke-virtual/range {v102 .. v102}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 682
    invoke-virtual/range {v59 .. v59}, Lcom/android/server/input/InputManagerService;->start()V

    .line 685
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 690
    if-eqz v60, :cond_3e

    .line 691
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :goto_2
    const-string/jumbo v4, "ConnectivityMetricsLoggerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 704
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 705
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 707
    const-string/jumbo v4, "IpConnectivityMetrics"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 709
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 711
    const-string/jumbo v4, "PinnerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 712
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PinnerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 713
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 717
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "LongScreenShot Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const-string/jumbo v4, "longshot"

    .line 719
    invoke-static {v6}, Lcom/oneplus/longshot/LongScreenshotManagerService;->getInstance(Landroid/content/Context;)Lcom/oneplus/longshot/LongScreenshotManagerService;

    move-result-object v5

    .line 718
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    move-object/from16 v68, v69

    .end local v69    # "mSDService":Lcom/android/server/display/SDService;
    .local v68, "mSDService":Lcom/android/server/display/SDService;
    move-object/from16 v32, v33

    .end local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v32, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v91, v92

    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v91, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v58, v59

    .end local v59    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v58, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v93, v94

    .line 726
    .end local v32    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v58    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v68    # "mSDService":Lcom/android/server/display/SDService;
    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v94    # "vibrator":Lcom/android/server/VibratorService;
    .end local v96    # "watchdog":Lcom/android/server/Watchdog;
    .end local v102    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_3
    const/16 v88, 0x0

    .line 727
    .local v88, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v83, 0x0

    .line 728
    .local v83, "notification":Landroid/app/INotificationManager;
    const/16 v62, 0x0

    .line 729
    .local v62, "location":Lcom/android/server/LocationManagerService;
    const/16 v34, 0x0

    .line 730
    .local v34, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v64, 0x0

    .line 731
    .local v64, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v24, 0x0

    .line 732
    .local v24, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v70, 0x0

    .line 735
    .local v70, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 736
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/InputMethodManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 738
    const-string/jumbo v4, "StartAccessibilityManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 740
    :try_start_6
    const-string/jumbo v4, "accessibility"

    .line 741
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    .line 740
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 745
    :goto_4
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 749
    :cond_0
    :try_start_7
    invoke-virtual/range {v102 .. v102}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 754
    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 755
    if-nez v48, :cond_1

    .line 756
    const-string/jumbo v4, "0"

    const-string/jumbo v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 773
    .end local v74    # "mountService":Landroid/os/storage/IMountService;
    :cond_1
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 775
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_2

    .line 776
    const-string/jumbo v4, "UpdatePackagesIfNeeded"

    const-wide/32 v104, 0x80000

    move-wide/from16 v0, v104

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 778
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 782
    :goto_7
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 785
    :cond_2
    const-string/jumbo v4, "PerformFstrimIfNeeded"

    const-wide/32 v104, 0x80000

    move-wide/from16 v0, v104

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 787
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    .line 791
    :goto_8
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 795
    const-string/jumbo v4, "ro.build.version.ota"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 796
    .local v37, "curVersion":Ljava/lang/String;
    const-string/jumbo v4, "persist.sys.version.ota"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 797
    .local v61, "lastVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 798
    :cond_3
    const-string/jumbo v4, ""

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 804
    :cond_4
    :goto_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_32

    .line 805
    if-nez v43, :cond_6

    .line 806
    const-string/jumbo v4, "StartLockSettingsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 808
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.LockSettingsService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 810
    const-string/jumbo v4, "lock_settings"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 809
    invoke-static {v4}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    move-result-object v64

    .line 814
    .end local v64    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :goto_a
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 816
    const-string/jumbo v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 817
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 820
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 824
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 827
    :cond_6
    if-nez v49, :cond_7

    .line 828
    const-string/jumbo v4, "StartStatusBarManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 830
    :try_start_b
    new-instance v89, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v89

    move-object/from16 v1, v102

    invoke-direct {v0, v6, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_7

    .line 831
    .end local v88    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v89, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_c
    const-string/jumbo v4, "statusbar"

    move-object/from16 v0, v89

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_32

    move-object/from16 v88, v89

    .line 835
    .end local v89    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_b
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 838
    :cond_7
    if-nez v43, :cond_8

    .line 839
    const-string/jumbo v4, "StartClipboardService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 841
    :try_start_d
    const-string/jumbo v4, "clipboard"

    .line 842
    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v6}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    .line 841
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8

    .line 846
    :goto_c
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 849
    :cond_8
    if-nez v41, :cond_9

    .line 850
    const-string/jumbo v4, "StartNetworkManagementService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 852
    :try_start_e
    invoke-static {v6}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v75

    .line 853
    .local v75, "networkManagement":Lcom/android/server/NetworkManagementService;
    const-string/jumbo v4, "network_management"

    move-object/from16 v0, v75

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_9

    .line 857
    .end local v75    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_d
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 860
    :cond_9
    if-nez v43, :cond_a

    if-eqz v50, :cond_44

    .line 864
    :cond_a
    :goto_e
    if-nez v41, :cond_f

    .line 865
    const-string/jumbo v4, "StartNetworkScoreService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 867
    :try_start_f
    new-instance v79, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v79

    invoke-direct {v0, v6}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_a

    .line 868
    .end local v78    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v79, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_10
    const-string/jumbo v4, "network_score"

    move-object/from16 v0, v79

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_31

    move-object/from16 v78, v79

    .line 872
    .end local v79    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_f
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 874
    const-string/jumbo v4, "StartNetworkStatsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 876
    :try_start_11
    move-object/from16 v0, v75

    invoke-static {v6, v0}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v80

    .line 877
    .local v80, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const-string/jumbo v4, "netstats"

    move-object/from16 v0, v80

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_b

    .line 881
    .end local v80    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_10
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 883
    const-string/jumbo v4, "StartNetworkPolicyManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 885
    :try_start_12
    new-instance v77, Lcom/android/server/net/NetworkPolicyManagerService;

    .line 886
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 885
    move-object/from16 v0, v77

    move-object/from16 v1, v80

    move-object/from16 v2, v75

    invoke-direct {v0, v6, v4, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_c

    .line 887
    .end local v76    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v77, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_13
    const-string/jumbo v4, "netpolicy"

    move-object/from16 v0, v77

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_30

    move-object/from16 v76, v77

    .line 891
    .end local v77    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_11
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 893
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.wifi.nan"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.nan.WifiNanService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 898
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 899
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 900
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 901
    const-string/jumbo v5, "com.android.server.wifi.scanner.WifiScanningService"

    .line 900
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 903
    if-nez v44, :cond_b

    .line 904
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 907
    :cond_b
    if-eqz v54, :cond_c

    .line 909
    :try_start_14
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Wigig Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    new-instance v98, Ldalvik/system/PathClassLoader;

    const-string/jumbo v4, "/system/framework/wigig-service.jar"

    .line 912
    const-string/jumbo v5, "/system/lib64:/system/vendor/lib64"

    .line 913
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v103

    invoke-virtual/range {v103 .. v103}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v103

    .line 911
    move-object/from16 v0, v98

    move-object/from16 v1, v103

    invoke-direct {v0, v4, v5, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 915
    .local v98, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v4, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    .line 914
    move-object/from16 v0, v98

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v99

    .line 916
    .local v99, "wigigP2pClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v103, 0x0

    aput-object v5, v4, v103

    move-object/from16 v0, v99

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v36

    .line 917
    .local v36, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v100

    .line 918
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const-string/jumbo v5, "wigigp2p"

    move-object/from16 v0, v100

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 922
    const-string/jumbo v4, "com.qualcomm.qti.server.wigig.WigigService"

    .line 921
    move-object/from16 v0, v98

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v97

    .line 923
    .local v97, "wigigClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v103, 0x0

    aput-object v5, v4, v103

    move-object/from16 v0, v97

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v36

    .line 924
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v101

    .line 925
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Successfully loaded WigigService class"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const-string/jumbo v5, "wigig"

    move-object/from16 v0, v101

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_d

    .line 932
    .end local v36    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v97    # "wigigClass":Ljava/lang/Class;
    .end local v98    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    .end local v99    # "wigigP2pClass":Ljava/lang/Class;
    .end local v100    # "wigigP2pService":Ljava/lang/Object;
    .end local v101    # "wigigService":Ljava/lang/Object;
    :cond_c
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 933
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 932
    if-eqz v4, :cond_e

    .line 934
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 937
    :cond_e
    const-string/jumbo v4, "StartConnectivityService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 939
    :try_start_15
    new-instance v31, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v31

    move-object/from16 v1, v75

    move-object/from16 v2, v80

    move-object/from16 v3, v76

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_e

    .line 941
    .end local v30    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v31, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_16
    const-string/jumbo v4, "connectivity"

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 942
    move-object/from16 v0, v80

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 943
    move-object/from16 v0, v76

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_2f

    move-object/from16 v30, v31

    .line 947
    .end local v31    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_14
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 949
    const-string/jumbo v4, "StartNsdService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 951
    :try_start_17
    invoke-static {v6}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v87

    .line 953
    .local v87, "serviceDiscovery":Lcom/android/server/NsdService;
    const-string/jumbo v4, "servicediscovery"

    .line 952
    move-object/from16 v0, v87

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_f

    .line 957
    .end local v87    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_15
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 960
    :cond_f
    if-nez v43, :cond_10

    .line 961
    const-string/jumbo v4, "StartUpdateLockService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 963
    :try_start_18
    const-string/jumbo v4, "updatelock"

    .line 964
    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v6}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    .line 963
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_10

    .line 968
    :goto_16
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 971
    :cond_10
    if-nez v43, :cond_11

    .line 972
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 980
    :cond_11
    if-eqz v74, :cond_12

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-eqz v4, :cond_46

    .line 989
    :cond_12
    :goto_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 991
    const-string/jumbo v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 990
    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v83

    .line 992
    .local v83, "notification":Landroid/app/INotificationManager;
    move-object/from16 v0, v76

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 994
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 996
    if-nez v39, :cond_13

    .line 997
    const-string/jumbo v4, "StartLocationManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 999
    :try_start_19
    new-instance v63, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v63

    invoke-direct {v0, v6}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_12

    .line 1000
    .end local v62    # "location":Lcom/android/server/LocationManagerService;
    .local v63, "location":Lcom/android/server/LocationManagerService;
    :try_start_1a
    const-string/jumbo v4, "location"

    move-object/from16 v0, v63

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_2e

    move-object/from16 v62, v63

    .line 1004
    .end local v63    # "location":Lcom/android/server/LocationManagerService;
    :goto_18
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1006
    const-string/jumbo v4, "StartCountryDetectorService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1008
    :try_start_1b
    new-instance v35, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v35

    invoke-direct {v0, v6}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_13

    .line 1009
    .end local v34    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v35, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_1c
    const-string/jumbo v4, "country_detector"

    move-object/from16 v0, v35

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_2d

    move-object/from16 v34, v35

    .line 1013
    .end local v35    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :goto_19
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1016
    :cond_13
    if-nez v43, :cond_14

    if-eqz v46, :cond_47

    .line 1026
    :cond_14
    :goto_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1028
    if-nez v43, :cond_15

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1029
    const v5, 0x1120051

    .line 1028
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1029
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    if-eqz v4, :cond_48

    .line 1035
    :cond_15
    :goto_1b
    const-string/jumbo v4, "StartAudioService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1037
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1039
    if-nez v43, :cond_16

    .line 1040
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1042
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.type.watch"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1047
    :cond_16
    const-string/jumbo v4, "StartWiredAccessoryManager"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1051
    :try_start_1d
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v58

    invoke-direct {v4, v6, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 1050
    move-object/from16 v0, v58

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_15

    .line 1055
    :goto_1c
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1057
    if-nez v43, :cond_1b

    .line 1058
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.midi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1060
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1063
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 1064
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1065
    const-string/jumbo v5, "android.hardware.usb.accessory"

    .line 1064
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 1063
    if-eqz v4, :cond_19

    .line 1067
    :cond_18
    const-string/jumbo v4, "StartUsbService"

    const-wide/32 v104, 0x80000

    move-wide/from16 v0, v104

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1069
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1072
    :cond_19
    if-nez v47, :cond_1a

    .line 1073
    const-string/jumbo v4, "StartSerialService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1076
    :try_start_1e
    new-instance v86, Lcom/android/server/SerialService;

    move-object/from16 v0, v86

    invoke-direct {v0, v6}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_16

    .line 1077
    .end local v85    # "serial":Lcom/android/server/SerialService;
    .local v86, "serial":Lcom/android/server/SerialService;
    :try_start_1f
    const-string/jumbo v4, "serial"

    move-object/from16 v0, v86

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_2c

    move-object/from16 v85, v86

    .line 1081
    .end local v86    # "serial":Lcom/android/server/SerialService;
    :goto_1d
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1085
    :cond_1a
    const-string/jumbo v4, "StartHardwarePropertiesManagerService"

    .line 1084
    const-wide/32 v104, 0x80000

    move-wide/from16 v0, v104

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1087
    :try_start_20
    new-instance v56, Lcom/android/server/HardwarePropertiesManagerService;

    move-object/from16 v0, v56

    invoke-direct {v0, v6}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_17

    .line 1088
    .end local v55    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v56, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_21
    const-string/jumbo v4, "hardware_properties"

    move-object/from16 v0, v56

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_2b

    move-object/from16 v55, v56

    .line 1093
    .end local v56    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_1e
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1096
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1098
    invoke-static {v6}, Lcom/android/internal/app/NightDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1101
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/ColorBalanceService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1107
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1109
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1111
    if-nez v43, :cond_22

    .line 1112
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1113
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1116
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1117
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 1116
    if-eqz v4, :cond_1f

    .line 1118
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1121
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1122
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1125
    :cond_20
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1126
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Gesture Launcher Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1129
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1133
    :cond_22
    const-string/jumbo v4, "StartDiskStatsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1135
    :try_start_22
    const-string/jumbo v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v6}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_18

    .line 1139
    :goto_1f
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1141
    if-nez v45, :cond_23

    .line 1142
    const-string/jumbo v4, "StartSamplingProfilerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1148
    :try_start_23
    const-string/jumbo v4, "samplingprofiler"

    .line 1149
    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v6}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    .line 1148
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_19

    .line 1153
    :goto_20
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1156
    :cond_23
    if-nez v41, :cond_24

    if-eqz v42, :cond_49

    .line 1167
    .end local v81    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_24
    :goto_21
    const-string/jumbo v4, "StartCommonTimeManagementService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1169
    :try_start_24
    new-instance v28, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v28

    invoke-direct {v0, v6}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_1b

    .line 1170
    .end local v27    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v28, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_25
    const-string/jumbo v4, "commontime_management"

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_29

    move-object/from16 v27, v28

    .line 1174
    .end local v28    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_22
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1176
    if-nez v41, :cond_25

    .line 1177
    const-string/jumbo v4, "CertBlacklister"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1179
    :try_start_26
    new-instance v26, Lcom/android/server/CertBlacklister;

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_1c

    .line 1183
    :goto_23
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1186
    :cond_25
    if-nez v41, :cond_26

    if-eqz v43, :cond_4a

    .line 1191
    :cond_26
    :goto_24
    if-nez v43, :cond_27

    .line 1193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1196
    :cond_27
    if-nez v43, :cond_28

    .line 1197
    const-string/jumbo v4, "StartAssetAtlasService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1199
    :try_start_27
    new-instance v25, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_1d

    .line 1200
    .end local v24    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v25, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_28
    const-string/jumbo v4, "assetatlas"

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_28

    move-object/from16 v24, v25

    .line 1204
    .end local v25    # "atlas":Lcom/android/server/AssetAtlasService;
    :goto_25
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1207
    :cond_28
    if-nez v43, :cond_29

    .line 1208
    const-string/jumbo v4, "graphicsstats"

    .line 1209
    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v6}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    .line 1208
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1214
    :cond_29
    new-instance v66, Lcom/android/server/OemExService;

    .end local v66    # "mOemExService":Lcom/android/server/OemExService;
    move-object/from16 v0, v66

    invoke-direct {v0, v6}, Lcom/android/server/OemExService;-><init>(Landroid/content/Context;)V

    .line 1215
    .local v66, "mOemExService":Lcom/android/server/OemExService;
    const-string/jumbo v4, "OEMExService"

    move-object/from16 v0, v66

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1218
    new-instance v67, Lcom/android/server/OnePlusNfcService;

    .end local v67    # "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    move-object/from16 v0, v67

    invoke-direct {v0, v6}, Lcom/android/server/OnePlusNfcService;-><init>(Landroid/content/Context;)V

    .line 1219
    .local v67, "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    const-string/jumbo v4, "OnePlusNfcService"

    move-object/from16 v0, v67

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1222
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1223
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1226
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1234
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1238
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.picture_in_picture"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1242
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.leanback"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1246
    :cond_2e
    if-nez v43, :cond_31

    .line 1247
    const-string/jumbo v4, "StartMediaRouterService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1249
    :try_start_29
    new-instance v71, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v71

    invoke-direct {v0, v6}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_1e

    .line 1250
    .end local v70    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v71, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_2a
    const-string/jumbo v4, "media_router"

    move-object/from16 v0, v71

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_27

    move-object/from16 v70, v71

    .line 1254
    .end local v71    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_26
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1256
    if-nez v51, :cond_2f

    .line 1257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1260
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.fingerprint"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1261
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1264
    :cond_30
    const-string/jumbo v4, "StartBackgroundDexOptService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1266
    :try_start_2b
    invoke-static {v6}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_1f

    .line 1270
    :goto_27
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1273
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1275
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1278
    .end local v66    # "mOemExService":Lcom/android/server/OemExService;
    .end local v67    # "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    .end local v83    # "notification":Landroid/app/INotificationManager;
    :cond_32
    if-nez v43, :cond_33

    if-eqz v40, :cond_4b

    .line 1282
    :cond_33
    :goto_28
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.type.watch"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1295
    :cond_34
    invoke-virtual/range {v102 .. v102}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v84

    .line 1296
    .local v84, "safeMode":Z
    if-eqz v84, :cond_4c

    .line 1297
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1299
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1306
    :goto_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v20

    .end local v20    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v20, Lcom/android/server/MmsServiceBroker;

    .line 1308
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "device_provisioned"

    const/16 v103, 0x0

    move/from16 v0, v103

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_35

    .line 1309
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v4

    .line 1308
    if-eqz v4, :cond_36

    .line 1310
    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1315
    :cond_36
    const-string/jumbo v4, "MakeVibratorServiceReady"

    const-wide/32 v104, 0x80000

    move-wide/from16 v0, v104

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1317
    :try_start_2c
    invoke-virtual/range {v93 .. v93}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_20

    .line 1321
    :goto_2a
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1323
    const-string/jumbo v4, "MakeLockSettingsServiceReady"

    const-wide/32 v104, 0x80000

    move-wide/from16 v0, v104

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1324
    if-eqz v64, :cond_37

    .line 1326
    :try_start_2d
    invoke-interface/range {v64 .. v64}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_21

    .line 1331
    :cond_37
    :goto_2b
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1338
    const-string/jumbo v4, "MakeWindowManagerServiceReady"

    const-wide/32 v104, 0x80000

    move-wide/from16 v0, v104

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1342
    if-eqz v54, :cond_38

    .line 1344
    :try_start_2e
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "calling onBootPhase for Wigig Services"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    invoke-virtual/range {v100 .. v100}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v99

    .line 1346
    .restart local v99    # "wigigP2pClass":Ljava/lang/Class;
    const-string/jumbo v4, "onBootPhase"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v103, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v104, 0x0

    aput-object v103, v5, v104

    move-object/from16 v0, v99

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v65

    .line 1347
    .local v65, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    .line 1348
    const/16 v103, 0x1f4

    .line 1347
    move/from16 v0, v103

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    const/16 v103, 0x0

    aput-object v5, v4, v103

    move-object/from16 v0, v65

    move-object/from16 v1, v100

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    invoke-virtual/range {v101 .. v101}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v97

    .line 1351
    .restart local v97    # "wigigClass":Ljava/lang/Class;
    const-string/jumbo v4, "onBootPhase"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v103, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v104, 0x0

    aput-object v103, v5, v104

    move-object/from16 v0, v97

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v65

    .line 1352
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    .line 1353
    const/16 v103, 0x1f4

    .line 1352
    move/from16 v0, v103

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    const/16 v103, 0x0

    aput-object v5, v4, v103

    move-object/from16 v0, v65

    move-object/from16 v1, v101

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_22

    .line 1360
    .end local v65    # "m":Ljava/lang/reflect/Method;
    .end local v97    # "wigigClass":Ljava/lang/Class;
    .end local v99    # "wigigP2pClass":Ljava/lang/Class;
    :cond_38
    :goto_2c
    :try_start_2f
    invoke-virtual/range {v102 .. v102}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_23

    .line 1364
    :goto_2d
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1366
    if-eqz v84, :cond_39

    .line 1367
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1373
    :cond_39
    invoke-virtual/range {v102 .. v102}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v29

    .line 1374
    .local v29, "config":Landroid/content/res/Configuration;
    new-instance v72, Landroid/util/DisplayMetrics;

    invoke-direct/range {v72 .. v72}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1375
    .local v72, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v4, "window"

    invoke-virtual {v6, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Landroid/view/WindowManager;

    .line 1376
    .local v95, "w":Landroid/view/WindowManager;
    invoke-interface/range {v95 .. v95}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v72

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1377
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v29

    move-object/from16 v1, v72

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1380
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v90

    .line 1381
    .local v90, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v90 .. v90}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v4

    if-eqz v4, :cond_3a

    .line 1382
    invoke-virtual/range {v90 .. v90}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 1385
    :cond_3a
    const-string/jumbo v4, "MakePowerManagerServiceReady"

    const-wide/32 v104, 0x80000

    move-wide/from16 v0, v104

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1388
    :try_start_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V

    .line 1389
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_24

    .line 1393
    :goto_2e
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1395
    const-string/jumbo v4, "MakePackageManagerServiceReady"

    const-wide/32 v104, 0x80000

    move-wide/from16 v0, v104

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1397
    :try_start_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_25

    .line 1401
    :goto_2f
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1403
    const-string/jumbo v4, "MakeDisplayManagerServiceReady"

    const-wide/32 v104, 0x80000

    move-wide/from16 v0, v104

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1406
    :try_start_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v84

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_26

    .line 1410
    :goto_30
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v0, v84

    invoke-virtual {v4, v0}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 1415
    move-object/from16 v8, v75

    .line 1416
    .local v8, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v9, v80

    .line 1417
    .local v9, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v10, v76

    .line 1418
    .local v10, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v11, v30

    .line 1419
    .local v11, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v7, v78

    .line 1420
    .local v7, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v12, v62

    .line 1421
    .local v12, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v13, v34

    .line 1422
    .local v13, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v14, v81

    .line 1423
    .local v14, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v15, v27

    .line 1424
    .local v15, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v16, v24

    .line 1425
    .local v16, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v17, v58

    .line 1426
    .local v17, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v18, v91

    .line 1427
    .local v18, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v70

    .line 1428
    .local v19, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v73, v20

    .line 1431
    .local v73, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v23, v68

    .line 1435
    .local v23, "mSDServiceF":Lcom/android/server/display/SDService;
    move-object/from16 v21, v66

    .line 1438
    .local v21, "mOemExServiceF":Lcom/android/server/OemExService;
    move-object/from16 v22, v67

    .line 1446
    .local v22, "mOnePlusNfcServiceF":Lcom/android/server/OnePlusNfcService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v103, v0

    new-instance v4, Lcom/android/server/SystemServer$2;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v23}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/android/server/OemExService;Lcom/android/server/OnePlusNfcService;Lcom/android/server/display/SDService;)V

    move-object/from16 v0, v103

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1607
    const-string/jumbo v4, "ro.dogfood"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1608
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getPCBNumber()V

    .line 1612
    :cond_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getIndicate()V

    .line 550
    return-void

    .line 665
    .end local v7    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v8    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v9    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v10    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v12    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v13    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v14    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v15    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v16    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v17    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v18    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v19    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v21    # "mOemExServiceF":Lcom/android/server/OemExService;
    .end local v22    # "mOnePlusNfcServiceF":Lcom/android/server/OnePlusNfcService;
    .end local v23    # "mSDServiceF":Lcom/android/server/display/SDService;
    .end local v29    # "config":Landroid/content/res/Configuration;
    .end local v37    # "curVersion":Ljava/lang/String;
    .end local v61    # "lastVersion":Ljava/lang/String;
    .end local v72    # "metrics":Landroid/util/DisplayMetrics;
    .end local v73    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v84    # "safeMode":Z
    .end local v90    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v95    # "w":Landroid/view/WindowManager;
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v27    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v30    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v55    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v59    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v66, "mOemExService":Lcom/android/server/OemExService;
    .local v67, "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    .local v68, "mSDService":Lcom/android/server/display/SDService;
    .restart local v74    # "mountService":Landroid/os/storage/IMountService;
    .local v75, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v76    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v78    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v80, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v81    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v85    # "serial":Lcom/android/server/SerialService;
    .local v87, "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v94    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v96    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v100    # "wigigP2pService":Ljava/lang/Object;
    .restart local v101    # "wigigService":Ljava/lang/Object;
    .local v102, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_3c
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_0

    .line 666
    :cond_3d
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 692
    .end local v68    # "mSDService":Lcom/android/server/display/SDService;
    .restart local v69    # "mSDService":Lcom/android/server/display/SDService;
    .local v102, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_3e
    :try_start_33
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3f

    .line 693
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_33} :catch_0

    goto/16 :goto_2

    .line 721
    :catch_0
    move-exception v52

    .local v52, "e":Ljava/lang/RuntimeException;
    move-object/from16 v68, v69

    .end local v69    # "mSDService":Lcom/android/server/display/SDService;
    .local v68, "mSDService":Lcom/android/server/display/SDService;
    move-object/from16 v32, v33

    .end local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v32    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v91, v92

    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v58, v59

    .end local v59    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v58    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v93, v94

    .line 722
    .end local v32    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v58    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v68    # "mSDService":Lcom/android/server/display/SDService;
    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v94    # "vibrator":Lcom/android/server/VibratorService;
    .end local v96    # "watchdog":Lcom/android/server/Watchdog;
    .end local v102    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_31
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "************ Failure starting core service"

    move-object/from16 v0, v52

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 694
    .end local v52    # "e":Ljava/lang/RuntimeException;
    .restart local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v59    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v69    # "mSDService":Lcom/android/server/display/SDService;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v94    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v96    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v102    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_3f
    :try_start_34
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 695
    const-string/jumbo v5, "android.hardware.bluetooth"

    .line 694
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 696
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 697
    :cond_40
    if-eqz v38, :cond_41

    .line 698
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 700
    :cond_41
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BluetoothService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_34} :catch_0

    goto/16 :goto_2

    .line 742
    .end local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v59    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v69    # "mSDService":Lcom/android/server/display/SDService;
    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v94    # "vibrator":Lcom/android/server/VibratorService;
    .end local v96    # "watchdog":Lcom/android/server/Watchdog;
    .end local v102    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v24    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v34    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v62    # "location":Lcom/android/server/LocationManagerService;
    .restart local v64    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v70    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v83, "notification":Landroid/app/INotificationManager;
    .restart local v88    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_1
    move-exception v53

    .line 743
    .local v53, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 750
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v53

    .line 751
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 762
    .end local v53    # "e":Ljava/lang/Throwable;
    :cond_42
    :try_start_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 764
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 763
    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_3

    move-result-object v74

    .local v74, "mountService":Landroid/os/storage/IMountService;
    goto/16 :goto_6

    .line 765
    .local v74, "mountService":Landroid/os/storage/IMountService;
    :catch_3
    move-exception v53

    .line 766
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 779
    .end local v53    # "e":Ljava/lang/Throwable;
    .end local v74    # "mountService":Landroid/os/storage/IMountService;
    :catch_4
    move-exception v53

    .line 780
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "update packages"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 788
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v53

    .line 789
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "performing fstrim"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 799
    .end local v53    # "e":Ljava/lang/Throwable;
    .restart local v37    # "curVersion":Ljava/lang/String;
    .restart local v61    # "lastVersion":Ljava/lang/String;
    :cond_43
    const-string/jumbo v4, "persist.sys.version.ota"

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string/jumbo v4, "persist.sys.version.lastota"

    move-object/from16 v0, v61

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 811
    :catch_6
    move-exception v53

    .line 812
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 832
    .end local v53    # "e":Ljava/lang/Throwable;
    .end local v64    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catch_7
    move-exception v53

    .line 833
    .end local v88    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v53    # "e":Ljava/lang/Throwable;
    :goto_32
    const-string/jumbo v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 843
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v53

    .line 844
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 854
    .end local v53    # "e":Ljava/lang/Throwable;
    .end local v75    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catch_9
    move-exception v53

    .line 855
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 861
    .end local v53    # "e":Ljava/lang/Throwable;
    :cond_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/TextServicesManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_e

    .line 869
    :catch_a
    move-exception v53

    .line 870
    .end local v78    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v53    # "e":Ljava/lang/Throwable;
    :goto_33
    const-string/jumbo v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 878
    .end local v53    # "e":Ljava/lang/Throwable;
    .end local v80    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_b
    move-exception v53

    .line 879
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 888
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v53

    .line 889
    .end local v76    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v53    # "e":Ljava/lang/Throwable;
    :goto_34
    const-string/jumbo v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 896
    .end local v53    # "e":Ljava/lang/Throwable;
    :cond_45
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Wi-Fi NAN Service (NAN support Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 927
    .end local v100    # "wigigP2pService":Ljava/lang/Object;
    .end local v101    # "wigigService":Ljava/lang/Object;
    :catch_d
    move-exception v53

    .line 928
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WigigService"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 944
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v53

    .line 945
    .end local v30    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v53    # "e":Ljava/lang/Throwable;
    :goto_35
    const-string/jumbo v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 954
    .end local v53    # "e":Ljava/lang/Throwable;
    .end local v87    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_f
    move-exception v53

    .line 955
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 965
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v53

    .line 966
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 981
    .end local v53    # "e":Ljava/lang/Throwable;
    :cond_46
    const-string/jumbo v4, "WaitForAsecScan"

    const-wide/32 v104, 0x80000

    move-wide/from16 v0, v104

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 983
    :try_start_36
    invoke-interface/range {v74 .. v74}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_36} :catch_11

    .line 986
    :goto_36
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_17

    .line 984
    :catch_11
    move-exception v57

    .local v57, "ignored":Landroid/os/RemoteException;
    goto :goto_36

    .line 1001
    .end local v57    # "ignored":Landroid/os/RemoteException;
    .local v83, "notification":Landroid/app/INotificationManager;
    :catch_12
    move-exception v53

    .line 1002
    .end local v62    # "location":Lcom/android/server/LocationManagerService;
    .restart local v53    # "e":Ljava/lang/Throwable;
    :goto_37
    const-string/jumbo v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 1010
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v53

    .line 1011
    .end local v34    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v53    # "e":Ljava/lang/Throwable;
    :goto_38
    const-string/jumbo v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 1017
    .end local v53    # "e":Ljava/lang/Throwable;
    :cond_47
    const-string/jumbo v4, "StartSearchManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1019
    :try_start_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_14

    .line 1023
    :goto_39
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_1a

    .line 1020
    :catch_14
    move-exception v53

    .line 1021
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_39

    .line 1030
    .end local v53    # "e":Ljava/lang/Throwable;
    :cond_48
    const-string/jumbo v4, "StartWallpaperManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1032
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_1b

    .line 1052
    :catch_15
    move-exception v53

    .line 1053
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 1078
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v53

    .line 1079
    .end local v85    # "serial":Lcom/android/server/SerialService;
    .restart local v53    # "e":Ljava/lang/Throwable;
    :goto_3a
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting SerialService"

    move-object/from16 v0, v53

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    .line 1090
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v53

    .line 1091
    .end local v55    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v53    # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting HardwarePropertiesManagerService"

    move-object/from16 v0, v53

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e

    .line 1136
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v53

    .line 1137
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 1150
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v53

    .line 1151
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 1157
    .end local v53    # "e":Ljava/lang/Throwable;
    :cond_49
    const-string/jumbo v4, "StartNetworkTimeUpdateService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1159
    :try_start_38
    new-instance v82, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v82

    invoke-direct {v0, v6}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1a

    .line 1160
    .end local v81    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v82, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :try_start_39
    const-string/jumbo v4, "network_time_update_service"

    move-object/from16 v0, v82

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_2a

    move-object/from16 v81, v82

    .line 1164
    .end local v82    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :goto_3c
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_21

    .line 1161
    .restart local v81    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_1a
    move-exception v53

    .line 1162
    .end local v81    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v53    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string/jumbo v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3c

    .line 1171
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v53

    .line 1172
    .end local v27    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v53    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string/jumbo v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 1180
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v53

    .line 1181
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 1188
    .end local v53    # "e":Ljava/lang/Throwable;
    :cond_4a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_24

    .line 1201
    :catch_1d
    move-exception v53

    .line 1202
    .end local v24    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v53    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string/jumbo v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 1251
    .end local v53    # "e":Ljava/lang/Throwable;
    .local v66, "mOemExService":Lcom/android/server/OemExService;
    .local v67, "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    :catch_1e
    move-exception v53

    .line 1252
    .end local v70    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v53    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string/jumbo v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 1267
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v53

    .line 1268
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 1279
    .end local v53    # "e":Ljava/lang/Throwable;
    .end local v66    # "mOemExService":Lcom/android/server/OemExService;
    .end local v67    # "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    .end local v83    # "notification":Landroid/app/INotificationManager;
    :cond_4b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_28

    .line 1302
    .restart local v84    # "safeMode":Z
    :cond_4c
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_29

    .line 1318
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    :catch_20
    move-exception v53

    .line 1319
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1327
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v53

    .line 1328
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 1354
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v53

    .line 1355
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "Wigig services ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1361
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v53

    .line 1362
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1390
    .end local v53    # "e":Ljava/lang/Throwable;
    .restart local v29    # "config":Landroid/content/res/Configuration;
    .restart local v72    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v90    # "systemTheme":Landroid/content/res/Resources$Theme;
    .restart local v95    # "w":Landroid/view/WindowManager;
    :catch_24
    move-exception v53

    .line 1391
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1398
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v53

    .line 1399
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1407
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v53

    .line 1408
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1251
    .end local v29    # "config":Landroid/content/res/Configuration;
    .end local v53    # "e":Ljava/lang/Throwable;
    .end local v72    # "metrics":Landroid/util/DisplayMetrics;
    .end local v84    # "safeMode":Z
    .end local v90    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v95    # "w":Landroid/view/WindowManager;
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v66    # "mOemExService":Lcom/android/server/OemExService;
    .restart local v67    # "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    .restart local v71    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v83    # "notification":Landroid/app/INotificationManager;
    :catch_27
    move-exception v53

    .restart local v53    # "e":Ljava/lang/Throwable;
    move-object/from16 v70, v71

    .end local v71    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v70, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_40

    .line 1201
    .end local v53    # "e":Ljava/lang/Throwable;
    .restart local v25    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v66, "mOemExService":Lcom/android/server/OemExService;
    .local v67, "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    .local v70, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_28
    move-exception v53

    .restart local v53    # "e":Ljava/lang/Throwable;
    move-object/from16 v24, v25

    .end local v25    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v24, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_3f

    .line 1171
    .end local v53    # "e":Ljava/lang/Throwable;
    .local v24, "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v28    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_29
    move-exception v53

    .restart local v53    # "e":Ljava/lang/Throwable;
    move-object/from16 v27, v28

    .end local v28    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v27, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_3e

    .line 1161
    .end local v53    # "e":Ljava/lang/Throwable;
    .local v27, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v82    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_2a
    move-exception v53

    .restart local v53    # "e":Ljava/lang/Throwable;
    move-object/from16 v81, v82

    .end local v82    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v81, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    goto/16 :goto_3d

    .line 1090
    .end local v53    # "e":Ljava/lang/Throwable;
    .restart local v56    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v81, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_2b
    move-exception v53

    .restart local v53    # "e":Ljava/lang/Throwable;
    move-object/from16 v55, v56

    .end local v56    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v55, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    goto/16 :goto_3b

    .line 1078
    .end local v53    # "e":Ljava/lang/Throwable;
    .local v55, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v86    # "serial":Lcom/android/server/SerialService;
    :catch_2c
    move-exception v53

    .restart local v53    # "e":Ljava/lang/Throwable;
    move-object/from16 v85, v86

    .end local v86    # "serial":Lcom/android/server/SerialService;
    .local v85, "serial":Lcom/android/server/SerialService;
    goto/16 :goto_3a

    .line 1010
    .end local v53    # "e":Ljava/lang/Throwable;
    .restart local v35    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v85, "serial":Lcom/android/server/SerialService;
    :catch_2d
    move-exception v53

    .restart local v53    # "e":Ljava/lang/Throwable;
    move-object/from16 v34, v35

    .end local v35    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v34, "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_38

    .line 1001
    .end local v53    # "e":Ljava/lang/Throwable;
    .local v34, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v63    # "location":Lcom/android/server/LocationManagerService;
    :catch_2e
    move-exception v53

    .restart local v53    # "e":Ljava/lang/Throwable;
    move-object/from16 v62, v63

    .end local v63    # "location":Lcom/android/server/LocationManagerService;
    .local v62, "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_37

    .line 944
    .end local v53    # "e":Ljava/lang/Throwable;
    .restart local v31    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v62, "location":Lcom/android/server/LocationManagerService;
    .local v83, "notification":Landroid/app/INotificationManager;
    .restart local v87    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_2f
    move-exception v53

    .restart local v53    # "e":Ljava/lang/Throwable;
    move-object/from16 v30, v31

    .end local v31    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v30, "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_35

    .line 888
    .end local v53    # "e":Ljava/lang/Throwable;
    .local v30, "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v77    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v100    # "wigigP2pService":Ljava/lang/Object;
    .restart local v101    # "wigigService":Ljava/lang/Object;
    :catch_30
    move-exception v53

    .restart local v53    # "e":Ljava/lang/Throwable;
    move-object/from16 v76, v77

    .end local v77    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v76, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_34

    .line 869
    .end local v53    # "e":Ljava/lang/Throwable;
    .local v76, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v79    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v80    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_31
    move-exception v53

    .restart local v53    # "e":Ljava/lang/Throwable;
    move-object/from16 v78, v79

    .end local v79    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v78, "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_33

    .line 832
    .end local v53    # "e":Ljava/lang/Throwable;
    .restart local v75    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v78, "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v89    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_32
    move-exception v53

    .restart local v53    # "e":Ljava/lang/Throwable;
    move-object/from16 v88, v89

    .end local v89    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v88, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_32

    .line 721
    .end local v24    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v34    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v37    # "curVersion":Ljava/lang/String;
    .end local v53    # "e":Ljava/lang/Throwable;
    .end local v61    # "lastVersion":Ljava/lang/String;
    .end local v62    # "location":Lcom/android/server/LocationManagerService;
    .end local v70    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v83    # "notification":Landroid/app/INotificationManager;
    .end local v88    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v32, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v58, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v68, "mSDService":Lcom/android/server/display/SDService;
    .restart local v74    # "mountService":Landroid/os/storage/IMountService;
    .local v91, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v93    # "vibrator":Lcom/android/server/VibratorService;
    .local v102, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_33
    move-exception v52

    .restart local v52    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_31

    .end local v52    # "e":Ljava/lang/RuntimeException;
    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_34
    move-exception v52

    .restart local v52    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v91, v92

    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v91, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_31

    .end local v52    # "e":Ljava/lang/RuntimeException;
    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v93    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v94    # "vibrator":Lcom/android/server/VibratorService;
    :catch_35
    move-exception v52

    .restart local v52    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v91, v92

    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v93, v94

    .end local v94    # "vibrator":Lcom/android/server/VibratorService;
    .local v93, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_31

    .end local v32    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v52    # "e":Ljava/lang/RuntimeException;
    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v93    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v94    # "vibrator":Lcom/android/server/VibratorService;
    :catch_36
    move-exception v52

    .restart local v52    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v32, v33

    .end local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v32, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v91, v92

    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v93, v94

    .end local v94    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v93    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_31

    .end local v32    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v52    # "e":Ljava/lang/RuntimeException;
    .end local v58    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v93    # "vibrator":Lcom/android/server/VibratorService;
    .end local v102    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v59    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v94    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v96    # "watchdog":Lcom/android/server/Watchdog;
    :catch_37
    move-exception v52

    .restart local v52    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v32, v33

    .end local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v32    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v91, v92

    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v58, v59

    .end local v59    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v58, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v93, v94

    .end local v94    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v93    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_31
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1617
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1618
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 1619
    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    .line 1618
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1620
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1622
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1616
    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1626
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1627
    const-string/jumbo v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    return-void
.end method
