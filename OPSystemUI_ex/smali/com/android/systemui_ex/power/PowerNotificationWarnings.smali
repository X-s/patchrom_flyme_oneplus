.class public Lcom/android/systemui_ex/power/PowerNotificationWarnings;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Lcom/android/systemui_ex/power/PowerUI$WarningsUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/power/PowerNotificationWarnings$Receiver;
    }
.end annotation


# static fields
.field private static final AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final DEBUG:Z

.field private static final SHOWING_STRINGS:[Ljava/lang/String;


# instance fields
.field private mBatteryLevel:I

.field private mBucket:I

.field private mBucketDroppedNegativeTimeMs:J

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInvalidCharger:Z

.field private final mNoMan:Landroid/app/NotificationManager;

.field private final mOpenBatterySettings:Landroid/content/Intent;

.field private final mOpenSaverSettings:Landroid/content/Intent;

.field private mPlaySound:Z

.field private final mPowerMan:Landroid/os/PowerManager;

.field private final mReceiver:Lcom/android/systemui_ex/power/PowerNotificationWarnings$Receiver;

.field private mSaver:Z

.field private mSaverConfirmation:Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;

.field private mScreenOffTime:J

.field private mShowing:I

.field private final mStartSaverMode:Landroid/content/DialogInterface$OnClickListener;

.field private mWarning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 51
    sget-boolean v0, Lcom/android/systemui_ex/power/PowerUI;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->DEBUG:Z

    .line 60
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SHOWING_NOTHING"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SHOWING_WARNING"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SHOWING_SAVER"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SHOWING_INVALID_CHARGER"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->SHOWING_STRINGS:[Ljava/lang/String;

    .line 72
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneStatusBar"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/android/systemui_ex/power/PowerNotificationWarnings$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/power/PowerNotificationWarnings$Receiver;-><init>(Lcom/android/systemui_ex/power/PowerNotificationWarnings;Lcom/android/systemui_ex/power/PowerNotificationWarnings$1;)V

    iput-object v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mReceiver:Lcom/android/systemui_ex/power/PowerNotificationWarnings$Receiver;

    .line 82
    const-string v0, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-static {v0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    .line 83
    const-string v0, "android.settings.BATTERY_SAVER_SETTINGS"

    invoke-static {v0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mOpenSaverSettings:Landroid/content/Intent;

    .line 412
    new-instance v0, Lcom/android/systemui_ex/power/PowerNotificationWarnings$2;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings$2;-><init>(Lcom/android/systemui_ex/power/PowerNotificationWarnings;)V

    iput-object v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mStartSaverMode:Landroid/content/DialogInterface$OnClickListener;

    .line 99
    iput-object p1, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 100
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    .line 101
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mPowerMan:Landroid/os/PowerManager;

    .line 102
    iget-object v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mReceiver:Lcom/android/systemui_ex/power/PowerNotificationWarnings$Receiver;

    invoke-virtual {v0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings$Receiver;->init()V

    .line 103
    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui_ex/power/PowerNotificationWarnings;Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;)Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/power/PowerNotificationWarnings;
    .param p1, "x1"    # Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/power/PowerNotificationWarnings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/power/PowerNotificationWarnings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/power/PowerNotificationWarnings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/power/PowerNotificationWarnings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/power/PowerNotificationWarnings;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->dismissLowBatteryNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/power/PowerNotificationWarnings;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/power/PowerNotificationWarnings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui_ex/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/power/PowerNotificationWarnings;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->showStartSaverConfirmation()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui_ex/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/power/PowerNotificationWarnings;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->dismissSaverNotification()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui_ex/power/PowerNotificationWarnings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/power/PowerNotificationWarnings;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->setSaverMode(Z)V

    return-void
.end method

.method private addStopSaverAction(Landroid/app/Notification$Builder;)V
    .locals 3
    .param p1, "nb"    # Landroid/app/Notification$Builder;

    .prologue
    .line 237
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0164

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PNW.stopSaver"

    invoke-direct {p0, v2}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 240
    return-void
.end method

.method private attachLowBatterySound(Landroid/app/Notification$Builder;)V
    .locals 11
    .param p1, "b"    # Landroid/app/Notification$Builder;

    .prologue
    const/4 v10, 0x1

    .line 307
    iget-object v6, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 309
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "low_battery_sound_timeout"

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 311
    .local v1, "silenceAfter":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mScreenOffTime:J

    sub-long v2, v6, v8

    .line 312
    .local v2, "offTime":J
    if-lez v1, :cond_1

    iget-wide v6, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mScreenOffTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    int-to-long v6, v1

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 315
    const-string v6, "PowerUI.Notification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "screen off too long ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms, limit "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms): not waking up the user with low battery sound"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    sget-boolean v6, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 321
    const-string v6, "PowerUI.Notification"

    const-string v7, "playing low battery sound. pick-a-doop!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_2
    const-string v6, "power_sounds_enabled"

    invoke-static {v0, v6, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 325
    const-string v6, "low_battery_sound"

    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 327
    .local v4, "soundPath":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 328
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 329
    .local v5, "soundUri":Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 330
    sget-object v6, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 331
    sget-boolean v6, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "PowerUI.Notification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playing sound "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dismissInvalidChargerNotification()V
    .locals 2

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mInvalidCharger:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing invalid charger notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 345
    invoke-direct {p0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->updateNotification()V

    .line 346
    return-void
.end method

.method private dismissLowBatteryNotification()V
    .locals 2

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mWarning:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing low battery notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mWarning:Z

    .line 285
    invoke-direct {p0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->updateNotification()V

    .line 286
    return-void
.end method

.method private dismissSaverNotification()V
    .locals 2

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mSaver:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing saver notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mSaver:Z

    .line 245
    invoke-direct {p0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->updateNotification()V

    .line 246
    return-void
.end method

.method private hasBatterySettings()Z
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasSaverSettings()Z
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mOpenSaverSettings:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pendingActivity(Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 249
    iget-object v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v2, p1

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 254
    iget-object v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v0, v3, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private setSaverMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mPowerMan:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    .line 379
    return-void
.end method

.method private static settings(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 259
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x5c800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private showInvalidChargerNotification()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 155
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0200cc

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0034

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0035

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 166
    .local v1, "nb":Landroid/app/Notification$Builder;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 167
    .local v0, "n":Landroid/app/Notification;
    iget-object v2, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v3, 0x1020034

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v3, "low_battery"

    const/16 v4, 0x64

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 171
    return-void
.end method

.method private showSaverNotification()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 220
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0200cd

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0162

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0163

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 229
    .local v0, "nb":Landroid/app/Notification$Builder;
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->addStopSaverAction(Landroid/app/Notification$Builder;)V

    .line 230
    invoke-direct {p0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->hasSaverSettings()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mOpenSaverSettings:Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->pendingActivity(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v2, "low_battery"

    const/16 v3, 0x64

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 234
    return-void
.end method

.method private showStartSaverConfirmation()V
    .locals 3

    .prologue
    .line 360
    iget-object v1, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;

    if-eqz v1, :cond_0

    .line 375
    :goto_0
    return-void

    .line 361
    :cond_0
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 362
    .local v0, "d":Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;
    const v1, 0x7f0c0037

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->setTitle(I)V

    .line 363
    const v1, 0x10406da

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 364
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 365
    const v1, 0x7f0c0038

    iget-object v2, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mStartSaverMode:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 366
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 367
    new-instance v1, Lcom/android/systemui_ex/power/PowerNotificationWarnings$1;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings$1;-><init>(Lcom/android/systemui_ex/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 373
    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->show()V

    .line 374
    iput-object v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;

    goto :goto_0
.end method

.method private showWarningNotification()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 174
    iget-boolean v5, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mSaver:Z

    if-eqz v5, :cond_3

    const v4, 0x7f0c0032

    .line 176
    .local v4, "textRes":I
    :goto_0
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mBatteryLevel:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "percentage":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    .local v0, "extra":Landroid/os/Bundle;
    const-string v5, "hide_icon"

    invoke-virtual {v0, v5, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 182
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0200cc

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0c0030

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v3, v7, v11

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v6, "PNW.dismissedWarning"

    invoke-direct {p0, v6}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106005a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 198
    .local v2, "nb":Landroid/app/Notification$Builder;
    invoke-direct {p0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->hasBatterySettings()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 199
    const-string v5, "PNW.batterySettings"

    invoke-direct {p0, v5}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 201
    :cond_0
    iget-boolean v5, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mSaver:Z

    if-nez v5, :cond_4

    .line 208
    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mPlaySound:Z

    if-eqz v5, :cond_1

    .line 209
    invoke-direct {p0, v2}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->attachLowBatterySound(Landroid/app/Notification$Builder;)V

    .line 210
    iput-boolean v11, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 212
    :cond_1
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 213
    .local v1, "n":Landroid/app/Notification;
    iget-object v5, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_2

    .line 214
    iget-object v5, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v6, 0x1020034

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 216
    :cond_2
    iget-object v5, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v6, "low_battery"

    const/16 v7, 0x64

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7, v1, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 217
    return-void

    .line 174
    .end local v0    # "extra":Landroid/os/Bundle;
    .end local v1    # "n":Landroid/app/Notification;
    .end local v2    # "nb":Landroid/app/Notification$Builder;
    .end local v3    # "percentage":Ljava/lang/String;
    .end local v4    # "textRes":I
    :cond_3
    const v4, 0x7f0c0031

    goto/16 :goto_0

    .line 206
    .restart local v0    # "extra":Landroid/os/Bundle;
    .restart local v2    # "nb":Landroid/app/Notification$Builder;
    .restart local v3    # "percentage":Ljava/lang/String;
    .restart local v4    # "textRes":I
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->addStopSaverAction(Landroid/app/Notification$Builder;)V

    goto :goto_1
.end method

.method private updateNotification()V
    .locals 4

    .prologue
    .line 137
    sget-boolean v0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNotification mWarning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mWarning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPlaySound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mPlaySound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSaver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mSaver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mInvalidCharger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mInvalidCharger:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mInvalidCharger:Z

    if-eqz v0, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->showInvalidChargerNotification()V

    .line 141
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mShowing:I

    .line 152
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mWarning:Z

    if-eqz v0, :cond_2

    .line 143
    invoke-direct {p0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->showWarningNotification()V

    .line 144
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_0

    .line 145
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mSaver:Z

    if-eqz v0, :cond_3

    .line 146
    invoke-direct {p0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->showSaverNotification()V

    .line 147
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_0

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v1, "low_battery"

    const/16 v2, 0x64

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_0
.end method


# virtual methods
.method public dismissInvalidChargerWarning()V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->dismissInvalidChargerNotification()V

    .line 340
    return-void
.end method

.method public dismissLowBatteryWarning()V
    .locals 3

    .prologue
    .line 278
    sget-boolean v0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->dismissLowBatteryNotification()V

    .line 280
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 107
    const-string v0, "mSaver="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mSaver:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 108
    const-string v0, "mWarning="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mWarning:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 109
    const-string v0, "mPlaySound="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mPlaySound:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 110
    const-string v0, "mInvalidCharger="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mInvalidCharger:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 111
    const-string v0, "mShowing="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->SHOWING_STRINGS:[Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mShowing:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    const-string v0, "mSaverConfirmation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_0

    const-string v0, "not null"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidChargerWarningShowing()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mInvalidCharger:Z

    return v0
.end method

.method public showInvalidChargerWarning()V
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 351
    invoke-direct {p0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->updateNotification()V

    .line 352
    return-void
.end method

.method public showLowBatteryWarning(Z)V
    .locals 3
    .param p1, "playSound"    # Z

    .prologue
    .line 298
    const-string v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mBucket:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] playSound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iput-boolean p1, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mWarning:Z

    .line 303
    invoke-direct {p0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->updateNotification()V

    .line 304
    return-void
.end method

.method public showSaverMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mSaver:Z

    .line 130
    iget-boolean v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mSaver:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;->dismiss()V

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->updateNotification()V

    .line 134
    return-void
.end method

.method public update(IIJ)V
    .locals 3
    .param p1, "batteryLevel"    # I
    .param p2, "bucket"    # I
    .param p3, "screenOffTime"    # J

    .prologue
    .line 117
    iput p1, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mBatteryLevel:I

    .line 118
    if-ltz p2, :cond_1

    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    .line 123
    :cond_0
    :goto_0
    iput p2, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mBucket:I

    .line 124
    iput-wide p3, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mScreenOffTime:J

    .line 125
    return-void

    .line 120
    :cond_1
    iget v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mBucket:I

    if-ge p2, v0, :cond_0

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    goto :goto_0
.end method

.method public updateLowBatteryWarning()V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->updateNotification()V

    .line 274
    return-void
.end method

.method public userSwitched()V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->updateNotification()V

    .line 357
    return-void
.end method
