.class public Lcom/android/server/OemSceneModeController;
.super Ljava/lang/Object;
.source "OemSceneModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemSceneModeController$1;,
        Lcom/android/server/OemSceneModeController$2;,
        Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;,
        Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;,
        Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;,
        Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;
    }
.end annotation


# static fields
.field private static final ACTION_DISABLE_GAME_MODE:Ljava/lang/String; = "com.oem.intent.action.DISABLE_GAME_MODE"

.field private static DBG:Z = false

.field private static final GAME_MODE_EVER_ENABLED_KEY:Ljava/lang/String; = "persist.sys.oem.gamemode_dirty"

.field public static final MODE_GAMEING_NO_DISTURB:I = 0x1

.field public static final MODE_READING:I = 0x0

.field private static final MSG_GAME_AUTO_CHANGED:I = 0x3

.field private static final MSG_GAME_MANUAL_CHANGED:I = 0x2

.field private static final MSG_READ_AUTO_CHANGED:I = 0x1

.field private static final MSG_READ_MANUAL_CHANGED:I = 0x0

.field private static final MSG_START_MONITOR:I = 0x4

.field private static final MSG_START_MONITOR_PASSIVE:I = 0x7

.field private static final MSG_STOP_MONITOR:I = 0x5

.field private static final MSG_STOP_MONITOR_PASSIVE:I = 0x6

.field private static final NOTIFICATION_GAME_MODE_ENABLED:I = 0x15be

.field private static final NOTIFY_TAG:Ljava/lang/String; = "SceneModeController"

.field public static final SWITCHER_PASSIVE:I = 0x1

.field public static final SWITCHER_PROACTIVE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OemSceneModeController"

.field private static final URI_GAME_AUTO:Landroid/net/Uri;

.field private static final URI_GAME_MANUAL:Landroid/net/Uri;

.field private static final URI_READ_AUTO:Landroid/net/Uri;

.field private static final URI_READ_MANUAL:Landroid/net/Uri;

.field private static final VALUE_FORCE_OFF:Ljava/lang/String; = "force-off"

.field private static final VALUE_FORCE_ON:Ljava/lang/String; = "force-on"

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_ON:Ljava/lang/String; = "1"


# instance fields
.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mGameModeAuto:Z

.field private mGameModeAutoObserver:Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;

.field private mGameModeManual:Z

.field private mGameModeManualObserver:Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;

.field private mGameModeStatus:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsMonitoringPassiveProvider:Z

.field private mIsMonitoringProactiveProvider:Z

.field private mOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

.field private mReadModeAuto:Z

.field private mReadModeAutoObserver:Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;

.field private mReadModeManual:Z

.field private mReadModeManualObserver:Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;

.field private mReadModeStatus:Z

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/OemSceneModeController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/OemSceneModeController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/OemSceneModeController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringProactiveProvider:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/OemSceneModeController;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/OemSceneModeController;Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneModeController;->validateValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/OemSceneModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleGameAutoChanged()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/OemSceneModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleGameManualChanged()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/OemSceneModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleReadAutoChanged()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/OemSceneModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleReadManualChanged()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/OemSceneModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->showStatusLog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    .line 50
    const-string/jumbo v0, "reading_mode_status_manual"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_READ_MANUAL:Landroid/net/Uri;

    .line 51
    const-string/jumbo v0, "rading_mode_status_auto"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_READ_AUTO:Landroid/net/Uri;

    .line 52
    const-string/jumbo v0, "game_mode_status_manual"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_GAME_MANUAL:Landroid/net/Uri;

    .line 53
    const-string/jumbo v0, "game_mode_status_auto"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_GAME_AUTO:Landroid/net/Uri;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mReadModeAuto:Z

    .line 78
    iput-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    .line 79
    iput-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 80
    iput-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    .line 81
    iput-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    .line 82
    iput-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 83
    iput-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringProactiveProvider:Z

    .line 84
    iput-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    .line 210
    new-instance v1, Lcom/android/server/OemSceneModeController$1;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneModeController$1;-><init>(Lcom/android/server/OemSceneModeController;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    .line 592
    new-instance v1, Lcom/android/server/OemSceneModeController$2;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneModeController$2;-><init>(Lcom/android/server/OemSceneModeController;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    iput-object p1, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    .line 100
    new-instance v1, Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeManualObserver:Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;

    .line 101
    new-instance v1, Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeAutoObserver:Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;

    .line 102
    new-instance v1, Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeManualObserver:Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;

    .line 103
    new-instance v1, Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeAutoObserver:Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 107
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.oem.intent.action.DISABLE_GAME_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/server/OemSceneModeController;->URI_READ_MANUAL:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeManualObserver:Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 112
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/server/OemSceneModeController;->URI_READ_AUTO:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeAutoObserver:Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 113
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/server/OemSceneModeController;->URI_GAME_MANUAL:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeManualObserver:Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 114
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/server/OemSceneModeController;->URI_GAME_AUTO:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeAutoObserver:Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 116
    new-instance v1, Lcom/android/server/OemSceneButtonController;

    invoke-direct {v1, p1}, Lcom/android/server/OemSceneButtonController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    .line 95
    return-void
.end method

.method private getGameModeAuto()Z
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 448
    const-string/jumbo v0, "force-on"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "game_mode_status_auto"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "game_mode_status_auto"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 448
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getGameModeButtonBlocked()Z
    .locals 4

    .prologue
    .line 472
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "game_mode_lock_buttons"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getGameModeHeadUpBlocked()Z
    .locals 4

    .prologue
    .line 467
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "game_mode_block_notification"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getGameModeManual()Z
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 453
    const-string/jumbo v0, "force-on"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "game_mode_status_manual"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "game_mode_status_manual"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 453
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getGameModeStatus()Z
    .locals 4

    .prologue
    .line 462
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "game_mode_status"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getReadModeAuto()Z
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 438
    const-string/jumbo v0, "force-on"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "rading_mode_status_auto"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "rading_mode_status_auto"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 438
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getReadModeManual()Z
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 443
    const-string/jumbo v0, "force-on"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "reading_mode_status_manual"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "reading_mode_status_manual"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 443
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getReadModeStatus()Z
    .locals 4

    .prologue
    .line 458
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "reading_mode_status"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private handleGameAutoChanged()V
    .locals 5

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeAuto()Z

    move-result v1

    .line 340
    .local v1, "game_auto":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeManual()Z

    move-result v2

    .line 341
    .local v2, "game_manual":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeStatus()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 342
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 343
    .local v3, "mode_old_value":Z
    invoke-direct {p0, v1}, Lcom/android/server/OemSceneModeController;->setGameModeAuto(Z)V

    .line 346
    if-eqz v2, :cond_1

    .line 347
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 353
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    if-eq v1, v4, :cond_2

    const/4 v0, 0x1

    .line 356
    .local v0, "auto_value_changed":Z
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    .line 357
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    .line 359
    iget-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eq v3, v4, :cond_0

    .line 361
    iget-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v4}, Lcom/android/server/OemSceneModeController;->setGameModeStatus(Z)Z

    .line 363
    if-eqz v0, :cond_0

    .line 364
    iget-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v4}, Lcom/android/server/OemSceneModeController;->notifyGameModeToast(Z)V

    .line 338
    :cond_0
    return-void

    .line 349
    .end local v0    # "auto_value_changed":Z
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    goto :goto_0

    .line 353
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "auto_value_changed":Z
    goto :goto_1
.end method

.method private handleGameManualChanged()V
    .locals 4

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeAuto()Z

    move-result v0

    .line 319
    .local v0, "game_auto":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeManual()Z

    move-result v1

    .line 320
    .local v1, "game_manual":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeStatus()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 321
    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 322
    .local v2, "mode_old_value":Z
    invoke-direct {p0, v1}, Lcom/android/server/OemSceneModeController;->setGameModeManual(Z)V

    .line 325
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 328
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    .line 329
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    .line 331
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eq v2, v3, :cond_0

    .line 333
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v3}, Lcom/android/server/OemSceneModeController;->setGameModeStatus(Z)Z

    .line 334
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v3}, Lcom/android/server/OemSceneModeController;->notifyGameModeToast(Z)V

    .line 317
    :cond_0
    return-void
.end method

.method private handleReadAutoChanged()V
    .locals 4

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeAuto()Z

    move-result v1

    .line 295
    .local v1, "read_auto":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeManual()Z

    move-result v2

    .line 296
    .local v2, "read_manual":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeStatus()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 297
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 298
    .local v0, "mode_old_value":Z
    invoke-direct {p0, v1}, Lcom/android/server/OemSceneModeController;->setReadModeAuto(Z)V

    .line 301
    if-eqz v2, :cond_1

    .line 302
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 308
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    .line 309
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeAuto:Z

    .line 311
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    if-eq v0, v3, :cond_0

    .line 313
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    invoke-direct {p0, v3}, Lcom/android/server/OemSceneModeController;->setReadModeStatus(Z)Z

    .line 293
    :cond_0
    return-void

    .line 304
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    goto :goto_0
.end method

.method private handleReadManualChanged()V
    .locals 4

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeAuto()Z

    move-result v1

    .line 275
    .local v1, "read_auto":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeManual()Z

    move-result v2

    .line 276
    .local v2, "read_manual":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeStatus()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 277
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 278
    .local v0, "mode_old_value":Z
    invoke-direct {p0, v2}, Lcom/android/server/OemSceneModeController;->setReadModeManual(Z)V

    .line 281
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 284
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    .line 285
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeAuto:Z

    .line 287
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    if-eq v0, v3, :cond_0

    .line 289
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    invoke-direct {p0, v3}, Lcom/android/server/OemSceneModeController;->setReadModeStatus(Z)Z

    .line 272
    :cond_0
    return-void
.end method

.method private isGameModeEverEnabled()Z
    .locals 3

    .prologue
    .line 582
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.sys.oem.gamemode_dirty"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private makeAllUserToastAndShow(I)Landroid/widget/Toast;
    .locals 3
    .param p1, "strRes"    # I

    .prologue
    .line 569
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 570
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 572
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 573
    return-object v0
.end method

.method private notifyGameMode(Z)V
    .locals 10
    .param p1, "enabled"    # Z

    .prologue
    const/16 v9, 0x15be

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 517
    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 518
    .local v1, "mNotificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_0

    .line 520
    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    .line 521
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.oem.intent.action.DISABLE_GAME_MODE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x10000000

    .line 520
    invoke-static {v4, v8, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 523
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 524
    #game mode notification icon
    #const v5, 0x5020001
    sget v5, Lcom/flyme/internal/R$drawable;->mz_stat_sys_keyboard:I

    .line 523
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 525
    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const v6, 0x50a003b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 523
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 526
    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const v6, 0x50a003c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 523
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 533
    .local v0, "mBuilder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 534
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 535
    .local v2, "notification":Landroid/app/Notification;
    iget-object v4, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v5, 0x10203b8

    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 536
    const-string/jumbo v4, "SceneModeController"

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v9, v2, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 515
    .end local v0    # "mBuilder":Landroid/app/Notification$Builder;
    .end local v2    # "notification":Landroid/app/Notification;
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 539
    :cond_0
    const-string/jumbo v4, "SceneModeController"

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v9, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private notifyGameModeToast(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 544
    if-eqz p1, :cond_4

    .line 546
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->isGameModeEverEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    const v0, 0x50a0039

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->makeAllUserToastAndShow(I)Landroid/widget/Toast;

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->setGameModeEverEnabled()V

    .line 553
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeHeadUpBlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeButtonBlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 554
    const v0, 0x50a0038

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->makeAllUserToastAndShow(I)Landroid/widget/Toast;

    goto :goto_0

    .line 555
    :cond_2
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeHeadUpBlocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 556
    const v0, 0x50a0036

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->makeAllUserToastAndShow(I)Landroid/widget/Toast;

    goto :goto_0

    .line 557
    :cond_3
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeButtonBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    const v0, 0x50a0037

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->makeAllUserToastAndShow(I)Landroid/widget/Toast;

    goto :goto_0

    .line 564
    :cond_4
    const v0, 0x50a003a

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->makeAllUserToastAndShow(I)Landroid/widget/Toast;

    goto :goto_0
.end method

.method private notifyReadMode(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 576
    return-void
.end method

.method private setGameModeAuto(Z)V
    .locals 4
    .param p1, "status"    # Z

    .prologue
    .line 484
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "game_mode_status_auto"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 483
    return-void

    .line 484
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method private setGameModeEverEnabled()V
    .locals 2

    .prologue
    .line 587
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OemSceneModeController"

    const-string/jumbo v1, "[scene] setGameModeEverEnabled was called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_0
    const-string/jumbo v0, "persist.sys.oem.gamemode_dirty"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method private setGameModeManual(Z)V
    .locals 4
    .param p1, "status"    # Z

    .prologue
    .line 487
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "game_mode_status_manual"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 486
    return-void

    .line 487
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method private setGameModeStatus(Z)Z
    .locals 4
    .param p1, "status"    # Z

    .prologue
    .line 492
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "game_mode_status"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 499
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneModeController;->notifyGameMode(Z)V

    .line 500
    return p1

    .line 492
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method private setReadModeAuto(Z)V
    .locals 4
    .param p1, "status"    # Z

    .prologue
    .line 478
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "rading_mode_status_auto"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 477
    return-void

    .line 478
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method private setReadModeManual(Z)V
    .locals 4
    .param p1, "status"    # Z

    .prologue
    .line 481
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "reading_mode_status_manual"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 480
    return-void

    .line 481
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method private setReadModeStatus(Z)Z
    .locals 4
    .param p1, "status"    # Z

    .prologue
    .line 505
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "reading_mode_status"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 511
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneModeController;->notifyReadMode(Z)V

    .line 512
    return p1

    .line 505
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method private showStatusLog()V
    .locals 4

    .prologue
    .line 247
    sget-boolean v1, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-nez v1, :cond_0

    return-void

    .line 248
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[scene] Read Manual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\t Game Manual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "[scene] Read Auto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeAuto:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\t Game Auto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "[scene] Read Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\t Game Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "[scene] Proactive monitoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringProactiveProvider:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\t Passive monitoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "[scene] -----------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    const-string/jumbo v1, "OemSceneModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[scene] values: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void
.end method

.method private validateValue(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 433
    const-string/jumbo v0, "force-on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "force-off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public handleStartMonitor()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 371
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[scene] start monitoring, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/OemSceneModeController;->URI_READ_MANUAL:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/OemSceneModeController;->URI_READ_AUTO:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/OemSceneModeController;->URI_GAME_MANUAL:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/OemSceneModeController;->URI_GAME_AUTO:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringProactiveProvider:Z

    .line 374
    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    .line 376
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneButtonController;->startMonitor()V

    .line 379
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyReadMode(Z)V

    .line 380
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyGameMode(Z)V

    .line 369
    return-void
.end method

.method public handleStartMonitorPassive()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 401
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OemSceneModeController"

    const-string/jumbo v1, "[scene] start monitoring passive switcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    .line 404
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneButtonController;->startMonitor()V

    .line 407
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 408
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 399
    return-void
.end method

.method public handleStopMonitor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 385
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OemSceneModeController"

    const-string/jumbo v1, "[scene] stop monitoring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/OemSceneModeController;->setReadModeStatus(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyReadMode(Z)V

    .line 389
    invoke-direct {p0, v2}, Lcom/android/server/OemSceneModeController;->setGameModeStatus(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyGameMode(Z)V

    .line 391
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 392
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 394
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneButtonController;->stopMonitor()V

    .line 395
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringProactiveProvider:Z

    .line 396
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    .line 383
    return-void
.end method

.method public handleStopMonitorPassive()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 413
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OemSceneModeController"

    const-string/jumbo v1, "[scene] stop monitoring passive switcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    if-eqz v0, :cond_3

    .line 423
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    if-eqz v0, :cond_4

    .line 428
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneButtonController;->stopMonitorPassive()V

    .line 429
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    .line 411
    return-void

    .line 418
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/OemSceneModeController;->setReadModeStatus(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyReadMode(Z)V

    .line 419
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    goto :goto_0

    .line 424
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/server/OemSceneModeController;->setGameModeStatus(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyGameMode(Z)V

    .line 425
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    goto :goto_1
.end method

.method public preEvaluateModeStatus(II)Z
    .locals 4
    .param p1, "modeType"    # I
    .param p2, "switcherType"    # I

    .prologue
    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, "result":Z
    if-nez p1, :cond_3

    .line 259
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 260
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeAuto()Z

    move-result v0

    .line 261
    .local v0, "read_auto":Z
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    .line 268
    .end local v0    # "read_auto":Z
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->showStatusLog()V

    .line 269
    return v1

    .line 261
    .restart local v0    # "read_auto":Z
    .restart local v1    # "result":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 263
    .end local v0    # "read_auto":Z
    :cond_2
    sget-boolean v2, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OemSceneModeController"

    const-string/jumbo v3, "[scene] Not yet supported"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    :cond_3
    sget-boolean v2, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OemSceneModeController"

    const-string/jumbo v3, "[scene] Not yet supported"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startMonitor()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 122
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 125
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 119
    return-void
.end method

.method public startMonitorPassive()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 133
    return-void
.end method

.method public stopMonitor()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 128
    return-void
.end method

.method public stopMonitorPassive()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 138
    return-void
.end method
