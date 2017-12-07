.class public Lcom/android/server/retaildemo/RetailDemoModeService;
.super Lcom/android/server/SystemService;
.source "RetailDemoModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/retaildemo/RetailDemoModeService$1;,
        Lcom/android/server/retaildemo/RetailDemoModeService$2;,
        Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;,
        Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_RESET_DEMO:Ljava/lang/String; = "com.android.server.retaildemo.ACTION_RESET_DEMO"

.field private static final DEBUG:Z = false

.field private static final DEMO_SESSION_COUNT:Ljava/lang/String; = "retail_demo_session_count"

.field private static final DEMO_SESSION_DURATION:Ljava/lang/String; = "retail_demo_session_duration"

.field private static final DEMO_USER_NAME:Ljava/lang/String; = "Demo"

.field private static final MILLIS_PER_SECOND:J = 0x3e8L

.field private static final MSG_INACTIVITY_TIME_OUT:I = 0x1

.field private static final MSG_START_NEW_SESSION:I = 0x2

.field private static final MSG_TURN_SCREEN_ON:I = 0x0

.field private static final SCREEN_WAKEUP_DELAY:J = 0x9c4L

.field private static final SYSTEM_PROPERTY_RETAIL_DEMO_ENABLED:Ljava/lang/String; = "sys.retaildemo.enabled"

.field private static final TAG:Ljava/lang/String;

.field private static final USER_INACTIVITY_TIMEOUT_DEFAULT:J = 0x15f90L

.field private static final USER_INACTIVITY_TIMEOUT_MIN:J = 0x2710L

.field private static final VOLUME_STREAMS_TO_MUTE:[I

.field private static final WARNING_DIALOG_TIMEOUT_DEFAULT:J


# instance fields
.field final mActivityLock:Ljava/lang/Object;

.field private mAmi:Landroid/app/ActivityManagerInternal;

.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraIdsWithFlash:[Ljava/lang/String;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field mCurrentUserId:I

.field mDeviceInDemoMode:Z

.field mFirstUserActivityTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mActivityLock"
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mHandlerThread:Lcom/android/server/ServiceThread;

.field mLastUserActivityTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mActivityLock"
    .end annotation
.end field

.field private mLocalService:Landroid/app/RetailDemoModeServiceInternal;

.field private mNm:Landroid/app/NotificationManager;

.field private mPm:Landroid/os/PowerManager;

.field private mPreloadAppsInstaller:Lcom/android/server/retaildemo/PreloadAppsInstaller;

.field private mResetDemoPendingIntent:Landroid/app/PendingIntent;

.field private mSystemUserConfiguration:Landroid/content/res/Configuration;

.field private mUm:Landroid/os/UserManager;

.field mUserInactivityTimeout:J

.field mUserUntouched:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mActivityLock"
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWarningDialogTimeout:J

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/retaildemo/RetailDemoModeService;)Lcom/android/server/retaildemo/PreloadAppsInstaller;
    .locals 1

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mPreloadAppsInstaller:Lcom/android/server/retaildemo/PreloadAppsInstaller;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/retaildemo/RetailDemoModeService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/retaildemo/RetailDemoModeService;)Landroid/os/UserManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/retaildemo/RetailDemoModeService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->deletePreloadsFolderContents()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/retaildemo/RetailDemoModeService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->isDeviceProvisioned()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/retaildemo/RetailDemoModeService;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getActivityManager()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/retaildemo/RetailDemoModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->putDeviceInDemoMode()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/retaildemo/RetailDemoModeService;Landroid/content/pm/UserInfo;)V
    .locals 0
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/retaildemo/RetailDemoModeService;->setupDemoUser(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/retaildemo/RetailDemoModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->showInactivityCountdownDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    const-class v0, Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    .line 98
    const/4 v0, 0x2

    .line 99
    const/4 v1, 0x3

    .line 97
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/retaildemo/RetailDemoModeService;->VOLUME_STREAMS_TO_MUTE:[I

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 287
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 106
    iput-boolean v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mDeviceInDemoMode:Z

    .line 107
    iput v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCurrentUserId:I

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mActivityLock:Ljava/lang/Object;

    .line 135
    new-instance v0, Lcom/android/server/retaildemo/RetailDemoModeService$1;

    invoke-direct {v0, p0}, Lcom/android/server/retaildemo/RetailDemoModeService$1;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService;)V

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 555
    new-instance v0, Lcom/android/server/retaildemo/RetailDemoModeService$2;

    invoke-direct {v0, p0}, Lcom/android/server/retaildemo/RetailDemoModeService$2;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService;)V

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mLocalService:Landroid/app/RetailDemoModeServiceInternal;

    .line 288
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mActivityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 289
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mLastUserActivityTime:J

    iput-wide v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mFirstUserActivityTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 286
    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private clearPrimaryCallLog()V
    .locals 6

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 372
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 374
    .local v2, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Deleting call log failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createResetNotification()Landroid/app/Notification;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 294
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104060c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 296
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104060d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 298
    const v1, 0x108055d

    .line 294
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 299
    const/4 v1, 0x0

    .line 294
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 301
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getResetDemoPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 294
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 302
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x106005b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 294
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private deletePreloadsFolderContents()Z
    .locals 4

    .prologue
    .line 415
    invoke-static {}, Landroid/os/Environment;->getDataPreloadsDirectory()Ljava/io/File;

    move-result-object v0

    .line 416
    .local v0, "dir":Ljava/io/File;
    sget-object v1, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Deleting contents of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method private getActivityManager()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_0

    .line 390
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mAms:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mAudioManager:Landroid/media/AudioManager;

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getCameraIdsWithFlash()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 428
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v2, "cameraIdsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v4, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v4}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v5, v4

    .line 431
    .local v1, "cameraId":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v7, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 432
    .local v0, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 433
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 436
    .end local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v1    # "cameraId":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 437
    .local v3, "e":Landroid/hardware/camera2/CameraAccessException;
    sget-object v4, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Unable to access camera while getting camera id list"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    .end local v3    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method private getResetDemoPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mResetDemoPendingIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    .line 308
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.server.retaildemo.ACTION_RESET_DEMO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mResetDemoPendingIntent:Landroid/app/PendingIntent;

    .line 311
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mResetDemoPendingIntent:Landroid/app/PendingIntent;

    return-object v1
.end method

.method private getSystemUsersConfiguration()Landroid/content/res/Configuration;
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mSystemUserConfiguration:Landroid/content/res/Configuration;

    if-nez v0, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 462
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mSystemUserConfiguration:Landroid/content/res/Configuration;

    .line 461
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mSystemUserConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method private getUserManager()Landroid/os/UserManager;
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mUm:Landroid/os/UserManager;

    if-nez v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mUm:Landroid/os/UserManager;

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method private grantRuntimePermissionToCamera(Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 352
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    .local v0, "cameraIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 356
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 355
    const/high16 v5, 0xc0000

    .line 354
    invoke-virtual {v3, v0, v5, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 357
    .local v2, "handler":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_1

    .line 358
    :cond_0
    return-void

    .line 361
    :cond_1
    :try_start_0
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 362
    const-string/jumbo v5, "android.permission.ACCESS_FINE_LOCATION"

    .line 361
    invoke-virtual {v3, v4, v5, p1}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 411
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    .line 410
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private muteVolumeStreams()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 453
    sget-object v3, Lcom/android/server/retaildemo/RetailDemoModeService;->VOLUME_STREAMS_TO_MUTE:[I

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget v0, v3, v1

    .line 454
    .local v0, "stream":I
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v6

    invoke-virtual {v5, v0, v6, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    .end local v0    # "stream":I
    :cond_0
    return-void
.end method

.method private putDeviceInDemoMode()V
    .locals 2

    .prologue
    .line 468
    const-string/jumbo v0, "sys.retaildemo.enabled"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 467
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 421
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 422
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 423
    const-string/jumbo v1, "com.android.server.retaildemo.ACTION_RESET_DEMO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 420
    return-void
.end method

.method private setupDemoUser(Landroid/content/pm/UserInfo;)V
    .locals 7
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 330
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    .line 331
    .local v0, "um":Landroid/os/UserManager;
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 332
    .local v1, "user":Landroid/os/UserHandle;
    const-string/jumbo v2, "no_config_wifi"

    invoke-virtual {v0, v2, v5, v1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 333
    const-string/jumbo v2, "no_install_unknown_sources"

    invoke-virtual {v0, v2, v5, v1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 334
    const-string/jumbo v2, "no_config_mobile_networks"

    invoke-virtual {v0, v2, v5, v1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 335
    const-string/jumbo v2, "no_usb_file_transfer"

    invoke-virtual {v0, v2, v5, v1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 336
    const-string/jumbo v2, "no_modify_accounts"

    invoke-virtual {v0, v2, v5, v1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 337
    const-string/jumbo v2, "no_config_bluetooth"

    invoke-virtual {v0, v2, v5, v1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 339
    const-string/jumbo v2, "no_outgoing_calls"

    invoke-virtual {v0, v2, v6, v1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 341
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    const-string/jumbo v3, "no_safe_boot"

    .line 342
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 341
    invoke-virtual {v2, v3, v5, v4}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 343
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 344
    const-string/jumbo v3, "skip_first_use_hints"

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    .line 343
    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 345
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 346
    const-string/jumbo v3, "package_verifier_enable"

    .line 345
    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 347
    invoke-direct {p0, v1}, Lcom/android/server/retaildemo/RetailDemoModeService;->grantRuntimePermissionToCamera(Landroid/os/UserHandle;)V

    .line 348
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->clearPrimaryCallLog()V

    .line 329
    return-void
.end method

.method private showInactivityCountdownDialog()V
    .locals 6

    .prologue
    .line 268
    new-instance v0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 269
    iget-wide v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mWarningDialogTimeout:J

    const-wide/16 v4, 0x3e8

    .line 268
    invoke-direct/range {v0 .. v5}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;-><init>(Landroid/content/Context;JJ)V

    .line 270
    .local v0, "dialog":Lcom/android/server/retaildemo/UserInactivityCountdownDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->setNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 271
    new-instance v1, Lcom/android/server/retaildemo/RetailDemoModeService$3;

    invoke-direct {v1, p0}, Lcom/android/server/retaildemo/RetailDemoModeService$3;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->setPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 277
    new-instance v1, Lcom/android/server/retaildemo/RetailDemoModeService$4;

    invoke-direct {v1, p0}, Lcom/android/server/retaildemo/RetailDemoModeService$4;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->setOnCountDownExpiredListener(Lcom/android/server/retaildemo/UserInactivityCountdownDialog$OnCountDownExpiredListener;)V

    .line 283
    invoke-virtual {v0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->show()V

    .line 267
    return-void
.end method

.method private turnOffAllFlashLights()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 443
    iget-object v3, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCameraIdsWithFlash:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 445
    .local v0, "cameraId":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 446
    :catch_0
    move-exception v1

    .line 447
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    sget-object v5, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to access camera "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " while turning off flash"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 442
    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_0
    return-void
.end method


# virtual methods
.method isDemoLauncherDisabled()Z
    .locals 6

    .prologue
    .line 315
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 316
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v1, 0x0

    .line 317
    .local v1, "enabledState":I
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 318
    const v5, 0x104007c

    .line 317
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "demoLauncherComponent":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 322
    iget v5, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCurrentUserId:I

    .line 320
    invoke-interface {v3, v4, v5}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 326
    :goto_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 323
    :catch_0
    move-exception v2

    .line 324
    .local v2, "exc":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Unable to talk to Package Manager"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 326
    .end local v2    # "exc":Landroid/os/RemoteException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method logSessionDuration()V
    .locals 8

    .prologue
    .line 382
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mActivityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 383
    :try_start_0
    iget-wide v4, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mLastUserActivityTime:J

    iget-wide v6, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mFirstUserActivityTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v4

    .local v0, "sessionDuration":I
    monitor-exit v2

    .line 385
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "retail_demo_session_duration"

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 380
    return-void

    .line 382
    .end local v0    # "sessionDuration":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onBootPhase(I)V
    .locals 4
    .param p1, "bootPhase"    # I

    .prologue
    .line 486
    sparse-switch p1, :sswitch_data_0

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 488
    :sswitch_0
    new-instance v1, Lcom/android/server/retaildemo/PreloadAppsInstaller;

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/retaildemo/PreloadAppsInstaller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mPreloadAppsInstaller:Lcom/android/server/retaildemo/PreloadAppsInstaller;

    .line 489
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mPm:Landroid/os/PowerManager;

    .line 490
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mAmi:Landroid/app/ActivityManagerInternal;

    .line 491
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mPm:Landroid/os/PowerManager;

    .line 494
    sget-object v2, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    .line 493
    const v3, 0x1000001a

    .line 491
    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 495
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mNm:Landroid/app/NotificationManager;

    .line 496
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 497
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 498
    const-string/jumbo v2, "camera"

    .line 497
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    iput-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 499
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getCameraIdsWithFlash()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCameraIdsWithFlash:[Ljava/lang/String;

    .line 500
    new-instance v0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService;Landroid/os/Handler;)V

    .line 501
    .local v0, "settingsObserver":Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->register()V

    .line 502
    invoke-static {v0}, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->-wrap0(Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;)V

    .line 503
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->registerBroadcastReceiver()V

    goto :goto_0

    .line 506
    .end local v0    # "settingsObserver":Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mDeviceInDemoMode:Z

    .line 508
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->putDeviceInDemoMode()V

    goto/16 :goto_0

    .line 486
    :sswitch_data_0
    .sparse-switch
        0x258 -> :sswitch_0
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 477
    new-instance v0, Lcom/android/server/ServiceThread;

    sget-object v1, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    const/4 v2, -0x2

    .line 478
    const/4 v3, 0x0

    .line 477
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 479
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 480
    new-instance v0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    .line 481
    const-class v0, Landroid/app/RetailDemoModeServiceInternal;

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mLocalService:Landroid/app/RetailDemoModeServiceInternal;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/retaildemo/RetailDemoModeService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 473
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x1

    .line 516
    iget-boolean v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mDeviceInDemoMode:Z

    if-nez v2, :cond_0

    .line 517
    return-void

    .line 522
    :cond_0
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 523
    .local v1, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v2

    if-nez v2, :cond_1

    .line 524
    sget-object v2, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Should not allow switch to non-demo user in demo mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return-void

    .line 527
    :cond_1
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_2

    .line 528
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 530
    :cond_2
    iput p1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCurrentUserId:I

    .line 531
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mAmi:Landroid/app/ActivityManagerInternal;

    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getSystemUsersConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroid/app/ActivityManagerInternal;->updatePersistentConfigurationForUser(Landroid/content/res/Configuration;I)V

    .line 532
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->turnOffAllFlashLights()V

    .line 533
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->muteVolumeStreams()V

    .line 534
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 535
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 538
    :cond_3
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 539
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v6, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 540
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mNm:Landroid/app/NotificationManager;

    sget-object v3, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->createResetNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 542
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mActivityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 543
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mUserUntouched:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 545
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "retail_demo_session_count"

    invoke-static {v2, v3, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 546
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 547
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/retaildemo/RetailDemoModeService$5;

    invoke-direct {v3, p0, p1}, Lcom/android/server/retaildemo/RetailDemoModeService$5;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 515
    return-void

    .line 542
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method
