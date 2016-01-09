.class final Lcom/android/server/power/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/Notifier$NotifierHandler;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field private static final INTERACTIVE_STATE_ASLEEP:I = 0x2

.field private static final INTERACTIVE_STATE_AWAKE:I = 0x1

.field private static final INTERACTIVE_STATE_UNKNOWN:I = 0x0

.field private static final MSG_BROADCAST:I = 0x2

.field private static final MSG_USER_ACTIVITY:I = 0x1

.field private static final MSG_WIRELESS_CHARGING_STARTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PowerManagerNotifier"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private mActualInteractiveState:I

.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBroadcastInProgress:Z

.field private mBroadcastStartTime:J

.field private mBroadcastedInteractiveState:I

.field private final mContext:Landroid/content/Context;

.field private final mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

.field private final mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

.field private final mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private mLastReason:I

.field private final mLock:Ljava/lang/Object;

.field private mPendingGoToSleepBroadcast:Z

.field private mPendingWakeUpBroadcast:Z

.field private final mPolicy:Landroid/view/WindowManagerPolicy;

.field private final mScreenOffIntent:Landroid/content/Intent;

.field private final mScreenOnIntent:Landroid/content/Intent;

.field private final mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mUserActivityPending:Z

.field private final mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/Notifier;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/power/SuspendBlocker;Landroid/view/WindowManagerPolicy;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p4, "appOps"    # Lcom/android/internal/app/IAppOpsService;
    .param p5, "suspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p6, "policy"    # Landroid/view/WindowManagerPolicy;

    .prologue
    const/high16 v2, 0x50000000

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    .line 520
    new-instance v0, Lcom/android/server/power/Notifier$4;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$4;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 555
    new-instance v0, Lcom/android/server/power/Notifier$5;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$5;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 122
    iput-object p2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    .line 123
    iput-object p3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 124
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 125
    iput-object p5, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 126
    iput-object p6, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 127
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 128
    const-class v0, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 130
    new-instance v0, Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/Notifier$NotifierHandler;-><init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    .line 132
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    .line 135
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/power/Notifier;)Landroid/app/ActivityManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/Notifier;)Landroid/view/WindowManagerPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/power/Notifier;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/power/Notifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/power/Notifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendUserActivity()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/power/Notifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->playWirelessChargingStartedSound()V

    return-void
.end method

.method private finishPendingBroadcastLocked()V
    .locals 2

    .prologue
    .line 431
    sget-boolean v0, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 432
    const-string v0, "PowerManagerNotifier"

    const-string v1, "finishPendingBroadcastLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 436
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 437
    return-void
.end method

.method private static getBatteryStatsWakeLockMonitorType(I)I
    .locals 1
    .param p0, "flags"    # I

    .prologue
    .line 236
    const v0, 0xffff

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_0

    .line 241
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 239
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 236
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleWakefulnessChange(IZI)V
    .locals 6
    .param p1, "wakefulness"    # I
    .param p2, "interactive"    # Z
    .param p3, "reason"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 288
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v4, Lcom/android/server/power/Notifier$1;

    invoke-direct {v4, p0, p1}, Lcom/android/server/power/Notifier$1;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "interactiveChanged":Z
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 299
    if-eqz p2, :cond_3

    .line 301
    :try_start_0
    iget v4, p0, Lcom/android/server/power/Notifier;->mActualInteractiveState:I

    if-eq v4, v1, :cond_2

    move v0, v1

    .line 302
    :goto_0
    if-eqz v0, :cond_0

    .line 303
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/power/Notifier;->mActualInteractiveState:I

    .line 304
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 305
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$2;

    invoke-direct {v2, p0}, Lcom/android/server/power/Notifier$2;-><init>(Lcom/android/server/power/Notifier;)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 318
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    .line 359
    :cond_0
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    if-eqz v0, :cond_1

    .line 364
    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p2}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 367
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 301
    goto :goto_0

    .line 326
    :cond_3
    :try_start_2
    iget v4, p0, Lcom/android/server/power/Notifier;->mActualInteractiveState:I

    if-eq v4, v5, :cond_5

    move v0, v1

    .line 327
    :goto_3
    if-eqz v0, :cond_0

    .line 328
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/power/Notifier;->mActualInteractiveState:I

    .line 329
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 330
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-eqz v1, :cond_4

    .line 331
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 332
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->removeMessages(I)V

    .line 334
    :cond_4
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$3;

    invoke-direct {v2, p0, p3}, Lcom/android/server/power/Notifier$3;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 356
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    goto :goto_1

    .line 359
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_5
    move v0, v2

    .line 326
    goto :goto_3

    .line 365
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private playWirelessChargingStartedSound()V
    .locals 5

    .prologue
    .line 571
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wireless_charging_started_sound"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 573
    .local v1, "soundPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 574
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 575
    .local v2, "soundUri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 576
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 577
    .local v0, "sfx":Landroid/media/Ringtone;
    if-eqz v0, :cond_0

    .line 578
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 579
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 584
    .end local v0    # "sfx":Landroid/media/Ringtone;
    .end local v2    # "soundUri":Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v3}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 585
    return-void
.end method

.method private sendGoToSleepBroadcast()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 536
    sget-boolean v0, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 537
    const-string v0, "PowerManagerNotifier"

    const-string v1, "Sending go to sleep broadcast."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 543
    sget-boolean v0, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 544
    const-string v0, "PowerManagerNotifier"

    const-string v1, "sendGoToSleepBroadcast - sendOrderedBroadcastAsUser"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 553
    :goto_0
    return-void

    .line 550
    :cond_2
    const/16 v0, 0xaa7

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 551
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    goto :goto_0
.end method

.method private sendNextBroadcast()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 455
    sget-boolean v1, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 456
    const-string v1, "PowerManagerNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendNextBroadcast, mBroadcastedInteractiveState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mActualInteractiveState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/Notifier;->mActualInteractiveState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 461
    :try_start_0
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-nez v1, :cond_1

    .line 463
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 464
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 487
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    .line 488
    iget v0, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 489
    .local v0, "powerState":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    const/16 v1, 0xaa5

    invoke-static {v1, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 493
    if-ne v0, v6, :cond_7

    .line 494
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendWakeUpBroadcast()V

    .line 498
    .end local v0    # "powerState":I
    :goto_1
    return-void

    .line 465
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-ne v1, v6, :cond_4

    .line 467
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/power/Notifier;->mActualInteractiveState:I

    if-ne v1, v4, :cond_3

    .line 469
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 470
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_0

    .line 489
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 472
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 473
    monitor-exit v2

    goto :goto_1

    .line 477
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/server/power/Notifier;->mActualInteractiveState:I

    if-ne v1, v6, :cond_6

    .line 479
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 480
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_0

    .line 482
    :cond_6
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 483
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 496
    .restart local v0    # "powerState":I
    :cond_7
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendGoToSleepBroadcast()V

    goto :goto_1
.end method

.method private sendUserActivity()V
    .locals 2

    .prologue
    .line 440
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 441
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v0, :cond_0

    .line 442
    monitor-exit v1

    .line 448
    :goto_0
    return-void

    .line 444
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 445
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->userActivity()V

    goto :goto_0

    .line 445
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendWakeUpBroadcast()V
    .locals 9

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 501
    sget-boolean v0, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 502
    const-string v0, "PowerManagerNotifier"

    const-string v1, "Sending wake up broadcast."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    sget-boolean v0, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 509
    const-string v0, "PowerManagerNotifier"

    const-string v1, "sendWakeUpBroadcast - sendOrderedBroadcastAsUser"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 518
    :goto_0
    return-void

    .line 515
    :cond_2
    const/16 v0, 0xaa7

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 516
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    goto :goto_0
.end method

.method private updatePendingBroadcastLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 410
    sget-boolean v1, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 411
    const-string v1, "PowerManagerNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePendingBroadcastLocked mBroadcastInProgress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPendingGoToSleepBroadcast = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPendingWakeUpBroadcast = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mActualInteractiveState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/Notifier;->mActualInteractiveState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mBroadcastedInteractiveState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/power/Notifier;->mActualInteractiveState:I

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/server/power/Notifier;->mActualInteractiveState:I

    iget v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-eq v1, v2, :cond_2

    .line 420
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 421
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 422
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 423
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 424
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 426
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    return-void
.end method


# virtual methods
.method public onUserActivity(II)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "uid"    # I

    .prologue
    .line 373
    sget-boolean v1, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 374
    const-string v1, "PowerManagerNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUserActivity: event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 384
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v1, :cond_1

    .line 385
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 386
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 387
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 388
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 390
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    monitor-exit v2

    .line 391
    return-void

    .line 390
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 379
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 7
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;

    .prologue
    .line 149
    sget-boolean v0, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "PowerManagerNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWakeLockAcquired: flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tag=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ownerUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ownerPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", workSource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v5

    .line 158
    .local v5, "monitorType":I
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    const/16 v0, 0x3e8

    if-ne p4, v0, :cond_1

    const/4 v6, 0x1

    .line 160
    .local v6, "unimportantForLogging":Z
    :goto_0
    if-eqz p6, :cond_2

    .line 161
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v1, p6

    move v2, p5

    move-object v3, p2

    move-object v4, p7

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 173
    .end local v5    # "monitorType":I
    .end local v6    # "unimportantForLogging":Z
    :goto_1
    return-void

    .line 158
    .restart local v5    # "monitorType":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 164
    .restart local v6    # "unimportantForLogging":Z
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move v1, p4

    move v2, p5

    move-object v3, p2

    move-object v4, p7

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    .line 167
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-interface {v0, v1, v2, p4, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 170
    .end local v5    # "monitorType":I
    .end local v6    # "unimportantForLogging":Z
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 21
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;
    .param p8, "newFlags"    # I
    .param p9, "newTag"    # Ljava/lang/String;
    .param p10, "newPackageName"    # Ljava/lang/String;
    .param p11, "newOwnerUid"    # I
    .param p12, "newOwnerPid"    # I
    .param p13, "newWorkSource"    # Landroid/os/WorkSource;
    .param p14, "newHistoryTag"    # Ljava/lang/String;

    .prologue
    .line 183
    if-eqz p6, :cond_2

    if-eqz p13, :cond_2

    .line 184
    invoke-static/range {p1 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v6

    .line 185
    .local v6, "monitorType":I
    invoke-static/range {p8 .. p8}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v11

    .line 186
    .local v11, "newMonitorType":I
    const/high16 v1, 0x40000000    # 2.0f

    and-int v1, v1, p8

    if-eqz v1, :cond_1

    const/16 v1, 0x3e8

    move/from16 v0, p11

    if-ne v0, v1, :cond_1

    const/4 v12, 0x1

    .line 188
    .local v12, "unimportantForLogging":Z
    :goto_0
    sget-boolean v1, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 189
    const-string v1, "PowerManagerNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWakeLockChanging: flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tag=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ownerUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ownerPid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", workSource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v2, p6

    move/from16 v3, p5

    move-object/from16 v4, p2

    move-object/from16 v5, p7

    move-object/from16 v7, p13

    move/from16 v8, p12

    move-object/from16 v9, p9

    move-object/from16 v10, p14

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/app/IBatteryStats;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v6    # "monitorType":I
    .end local v11    # "newMonitorType":I
    .end local v12    # "unimportantForLogging":Z
    :goto_1
    return-void

    .line 186
    .restart local v6    # "monitorType":I
    .restart local v11    # "newMonitorType":I
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 202
    .end local v6    # "monitorType":I
    .end local v11    # "newMonitorType":I
    :cond_2
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    move-object/from16 v13, p0

    move/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    move/from16 v17, p11

    move/from16 v18, p12

    move-object/from16 v19, p13

    move-object/from16 v20, p14

    .line 203
    invoke-virtual/range {v13 .. v20}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    goto :goto_1

    .line 198
    .restart local v6    # "monitorType":I
    .restart local v11    # "newMonitorType":I
    .restart local v12    # "unimportantForLogging":Z
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 6
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;

    .prologue
    .line 213
    sget-boolean v0, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "PowerManagerNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWakeLockReleased: flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tag=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ownerUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ownerPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", workSource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v5

    .line 222
    .local v5, "monitorType":I
    if-eqz p6, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v1, p6

    move v2, p5

    move-object v3, p2

    move-object v4, p7

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    .line 233
    .end local v5    # "monitorType":I
    :goto_0
    return-void

    .line 226
    .restart local v5    # "monitorType":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move v1, p4

    move v2, p5

    move-object v3, p2

    move-object v4, p7

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    .line 227
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-interface {v0, v1, v2, p4, p3}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    .end local v5    # "monitorType":I
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onWakefulnessChangeFinished(I)V
    .locals 4
    .param p1, "wakefulness"    # I

    .prologue
    .line 271
    sget-boolean v1, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 272
    const-string v1, "PowerManagerNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWakefulnessChangeFinished: wakefulness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    .line 279
    .local v0, "interactive":Z
    if-nez v0, :cond_1

    .line 280
    iget v1, p0, Lcom/android/server/power/Notifier;->mLastReason:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/power/Notifier;->handleWakefulnessChange(IZI)V

    .line 282
    :cond_1
    return-void
.end method

.method public onWakefulnessChangeStarted(II)V
    .locals 4
    .param p1, "wakefulness"    # I
    .param p2, "reason"    # I

    .prologue
    .line 249
    sget-boolean v1, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 250
    const-string v1, "PowerManagerNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWakefulnessChangeStarted: wakefulness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    .line 257
    .local v0, "interactive":Z
    if-eqz v0, :cond_1

    .line 258
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/power/Notifier;->handleWakefulnessChange(IZI)V

    .line 264
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v1, v0}, Landroid/hardware/input/InputManagerInternal;->setInteractive(Z)V

    .line 265
    return-void

    .line 260
    :cond_1
    iput p2, p0, Lcom/android/server/power/Notifier;->mLastReason:I

    goto :goto_0
.end method

.method public onWirelessChargingStarted()V
    .locals 3

    .prologue
    .line 397
    sget-boolean v1, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 398
    const-string v1, "PowerManagerNotifier"

    const-string v2, "onWirelessChargingStarted"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 402
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 403
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 404
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 405
    return-void
.end method
