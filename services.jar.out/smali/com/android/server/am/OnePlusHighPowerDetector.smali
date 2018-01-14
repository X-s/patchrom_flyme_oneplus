.class Lcom/android/server/am/OnePlusHighPowerDetector;
.super Ljava/lang/Object;
.source "OnePlusHighPowerDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusHighPowerDetector$1;,
        Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;,
        Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;,
        Lcom/android/server/am/OnePlusHighPowerDetector$BackgroundDetectionConfigUpdater;,
        Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    }
.end annotation


# static fields
.field private static final ACTION_FORCE_STOP_PKG:Ljava/lang/String; = "com.oem.intent.action.force_stop_pkg"

.field private static final ACTION_TEST:Ljava/lang/String; = "ohpd.action.test"

.field static APP_CONT_BUSY_TIME_THOLD:I = 0x0

.field static APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD:I = 0x0

.field static APP_LAST_FOREGROUND_TIME_THRESHOLD:I = 0x0

.field private static BACKGROUND_DETECTION_CONFIG_NAME:Ljava/lang/String; = null

.field static BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I = null

.field static BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I = null

.field static BG_DETECTION_NETWORK_USAGE_THRESHOLD:I = 0x0

.field public static final CHECK_CUSTOMIZED_NOTIFICATION_MSG:I = 0xd6dd

.field public static final CHECK_EXCESSIVE_CPU_DEFAULT_MSG:I = 0xd6d8

.field public static final CHECK_EXCESSIVE_CPU_MODE1_MSG:I = 0xd6d9

.field public static final CHECK_EXCESSIVE_CPU_MODE2_MSG:I = 0xd6da

.field public static final CHECK_EXCESSIVE_CPU_MODE3_MSG:I = 0xd6de

.field public static final CLEANUP_PACKAGE_RECORD_MSG:I = 0xd6dc

.field static CPU_CHECK_DELAY:[I = null

.field public static DEBUG:Z = false

.field static DEBUG_BG_USAGE_QUICK:Z = false

.field private static final DEVICE_TEMP_PATH:Ljava/lang/String; = "/sys/class/thermal/thermal_zone27/temp"

.field public static ENABLE:Z = false

.field public static final FORCE_STOP_PKG_MSG:I = 0xd6e0

.field public static final GLOBAL_FLAG_SETTED_SIM_COUNTRY:I = 0x1

.field static final MILLIS_PER_DAY:J = 0x5265c00L

.field static final MILLIS_PER_HOUR:J = 0x36ee80L

.field static final MODE_MSGS:[I

.field private static final MULTI_APP_USER_ID:I = 0x3e7

.field static NOTIFY_INTERVAL:J = 0x0L

.field public static final NOTIFY_PD_MSG:I = 0xd6df

.field public static final NUM_CPU_MONITOR_LEVELS:I = 0x4

.field static ONLINE_CONFIG:Z = false

.field static PD_LAST_FG_TIME_THOLD:I = 0x0

.field public static final POST_CUSTOMIZED_NOTIFICATION_MSG:I = 0xd6db

.field static POWER_DRAIN_TEMP_THOLD:I = 0x0

.field static POWER_DRAIN_TIME_THOLD:I = 0x0

.field static POWER_DRAIN_USG_THOLD:I = 0x0

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.ohpd.debug"

.field private static final PROP_DEBUG_BG_USAGE_QUICK:Ljava/lang/String; = "persist.sys.ohpd.debug.bg"

.field private static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.ohpd.enable"

.field private static final PROP_KILL_ON:Ljava/lang/String; = "persist.sys.ohpd.kcheck"

.field private static final PROP_NOTIFY_INTERVAL:Ljava/lang/String; = "persist.sys.ohpd.notify"

.field private static final PROP_ONLINE_CONFIG:Ljava/lang/String; = "persist.sys.ohpd.onlineconfig"

.field private static final PROP_POWER_DRAIN_LAST_FG_THOLD:Ljava/lang/String; = "persist.sys.ohpd.pd.lastfg"

.field private static final PROP_POWER_DRAIN_TEMP_THOLD:Ljava/lang/String; = "persist.sys.ohpd.pd.temp.thold"

.field private static final PROP_POWER_DRAIN_USG_THOLD:Ljava/lang/String; = "persist.sys.ohpd.pd.usg.thold"

.field private static final PROP_THRESHOLD:Ljava/lang/String; = "persist.sys.ohpd.threshold"

.field private static final RECENT_TASK_LOCKED_LIST:Ljava/lang/String; = "com_oneplus_systemui_recent_task_lockd_list"

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final TAG:Ljava/lang/String; = "OHPD"

.field public static final VERSION:I = 0x103b975

.field private static mAms:Lcom/android/server/am/ActivityManagerService;

.field private static mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static mKillMechanism:Z

.field static sBattUpdteLock:Ljava/lang/Object;

.field static sConfigLock:Ljava/lang/Object;


# instance fields
.field private blackAppListSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blackExAppListSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gmsMonitorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private killProcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private level0KillList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAppForkedProcMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundDetectionConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field mBgDetectStartMonitoring:Z

.field mCurNotifyPkgKey:Ljava/lang/String;

.field mCurNotifyPkgKeySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGeneralReceiver:Landroid/content/BroadcastReceiver;

.field private mHighPowerEventCollector:Lcom/android/server/SystemEventCollector;

.field mHighPowerPkgForDualMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/ActivityManager$HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field mHighPowerPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/ActivityManager$HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field mHugePowerPkgForDualMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/ActivityManager$HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field mHugePowerPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/ActivityManager$HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field mIsPowerDrain:Z

.field mLastActiveAudioList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mLastBatteryDropTime:J

.field mLastBatteryPercent:I

.field mLastBgDetectCleanUpTime:J

.field mLastCpuCheckUptime:[J

.field mMediumPowerPkgForDualMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/ActivityManager$HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field mMediumPowerPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/ActivityManager$HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field mNotifyPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mPendingRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mWorkingForkedPidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private whiteAppListSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "triggerPkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "userId"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/am/OnePlusHighPowerDetector;Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->resolveBackgroundDetectionConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->scheduleForceStopPkg(Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x12c

    const/16 v1, 0x3c

    const/16 v3, 0x14

    const/4 v6, 0x1

    .line 98
    sput-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->ENABLE:Z

    .line 99
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    .line 117
    const-string/jumbo v0, "persist.sys.ohpd.debug.bg"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    .line 118
    const-string/jumbo v0, "persist.sys.ohpd.notify"

    const-wide/32 v4, 0x36ee80

    invoke-static {v0, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/OnePlusHighPowerDetector;->NOTIFY_INTERVAL:J

    .line 119
    const-string/jumbo v0, "persist.sys.ohpd.onlineconfig"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->ONLINE_CONFIG:Z

    .line 138
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I

    .line 140
    const v0, 0xdbba00

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->PD_LAST_FG_TIME_THOLD:I

    .line 141
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD:I

    .line 142
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_2
    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_CONT_BUSY_TIME_THOLD:I

    .line 146
    const/4 v0, 0x4

    new-array v4, v0, [I

    .line 147
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    mul-int/lit16 v0, v0, 0x3e8

    aput v0, v4, v7

    .line 148
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v0, :cond_4

    :goto_4
    mul-int/lit16 v0, v1, 0x3e8

    aput v0, v4, v6

    .line 149
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v0, :cond_5

    const/16 v0, 0x78

    :goto_5
    mul-int/lit16 v0, v0, 0x3e8

    const/4 v1, 0x2

    aput v0, v4, v1

    .line 150
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x78

    :goto_6
    mul-int/lit16 v0, v0, 0x3e8

    const/4 v1, 0x3

    aput v0, v4, v1

    .line 146
    sput-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    .line 153
    const v0, 0xd6d8

    .line 154
    const v1, 0xd6d9

    .line 155
    const v2, 0xd6da

    .line 156
    const v4, 0xd6de

    .line 152
    filled-new-array {v0, v1, v2, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->MODE_MSGS:[I

    .line 160
    const/16 v0, 0x3e8

    const/16 v1, 0xf

    const/16 v2, 0x3e8

    filled-new-array {v0, v3, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    .line 161
    const/16 v0, 0xf

    const/16 v1, 0xa

    filled-new-array {v3, v0, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    .line 162
    const/high16 v0, 0x1400000

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_NETWORK_USAGE_THRESHOLD:I

    .line 164
    const/4 v0, 0x5

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_USG_THOLD:I

    .line 166
    const/16 v0, 0x2c

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    .line 168
    const v0, 0x493e0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TIME_THOLD:I

    .line 178
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->sConfigLock:Ljava/lang/Object;

    .line 179
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->sBattUpdteLock:Ljava/lang/Object;

    .line 213
    sput-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mKillMechanism:Z

    .line 237
    const-string/jumbo v0, "BackgroundDetection"

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->BACKGROUND_DETECTION_CONFIG_NAME:Ljava/lang/String;

    .line 96
    return-void

    :cond_0
    move v0, v2

    .line 138
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 141
    goto/16 :goto_1

    :cond_2
    move v0, v3

    .line 142
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 147
    goto :goto_3

    :cond_4
    move v1, v2

    .line 148
    goto :goto_4

    .line 149
    :cond_5
    const/16 v0, 0x258

    goto :goto_5

    .line 150
    :cond_6
    const/16 v0, 0x4b0

    goto :goto_6
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/am/BatteryStatsService;)V
    .locals 4
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "batteryStatsService"    # Lcom/android/server/am/BatteryStatsService;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-wide v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBgDetectCleanUpTime:J

    .line 191
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCpuCheckUptime:[J

    .line 199
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBgDetectStartMonitoring:Z

    .line 200
    iput v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryPercent:I

    .line 201
    iput-wide v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryDropTime:J

    .line 202
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsPowerDrain:Z

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    .line 214
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKeySet:Ljava/util/HashSet;

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWorkingForkedPidList:Ljava/util/ArrayList;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPendingRemoveList:Ljava/util/ArrayList;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastActiveAudioList:Ljava/util/List;

    .line 296
    new-instance v0, Lcom/android/server/am/OnePlusHighPowerDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusHighPowerDetector$1;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    .line 249
    const-string/jumbo v0, "persist.sys.ohpd.enable"

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->ENABLE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->ENABLE:Z

    .line 250
    const-string/jumbo v0, "persist.sys.ohpd.debug"

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    .line 252
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->ENABLE:Z

    if-nez v0, :cond_0

    .line 253
    const-string/jumbo v0, "OHPD"

    const-string/jumbo v1, "disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void

    .line 256
    :cond_0
    const-string/jumbo v0, "OnePlusHighPowerDetector--constructor"

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 257
    sput-object p1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 258
    sput-object p2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    .line 259
    sput-object p3, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    .line 260
    sput-object p4, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 263
    new-instance v0, Lcom/android/server/SystemEventCollector;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "HighPowerDetector"

    invoke-direct {v0, v1, v2}, Lcom/android/server/SystemEventCollector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerEventCollector:Lcom/android/server/SystemEventCollector;

    .line 266
    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->init()V

    .line 248
    return-void
.end method

.method private checkExcessiveCpuUsageLocked(II)I
    .locals 78
    .param p1, "level"    # I
    .param p2, "minCheckDuration"    # I

    .prologue
    .line 733
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "checkExcessiveCpuUsageLocked # level="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ", minCheckDuration="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v64

    .line 737
    .local v64, "startTime":J
    const/16 v39, 0x1

    .line 739
    .local v39, "doCpuKills":Z
    const/4 v10, 0x0

    .line 740
    .local v10, "isBatteryDrain":Z
    const/16 v59, 0x0

    .line 741
    .local v59, "numOfAbnormal":I
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 745
    .local v29, "blackExUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v67, Ljava/util/ArrayList;

    invoke-direct/range {v67 .. v67}, Ljava/util/ArrayList;-><init>()V

    .line 749
    .local v67, "stopAppNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 751
    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 753
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v63

    .line 754
    .local v63, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCpuCheckUptime:[J

    aget-wide v12, v4, p1

    const-wide/16 v18, 0x0

    cmp-long v4, v12, v18

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/16 v11, 0xe

    const/4 v12, 0x0

    aput v11, v4, v12

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 757
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 758
    .local v6, "curUptime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCpuCheckUptime:[J

    aget-wide v12, v4, p1

    sub-long v14, v6, v12

    .line 760
    .local v14, "uptimeSince":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v36

    .line 761
    .local v36, "currentElapsedTime":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBgDetectCleanUpTime:J

    const-wide/16 v18, 0x0

    cmp-long v4, v12, v18

    if-nez v4, :cond_3

    .line 762
    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBgDetectCleanUpTime:J

    .line 767
    :cond_1
    :goto_1
    move/from16 v0, p2

    int-to-long v12, v0

    cmp-long v4, v14, v12

    if-gez v4, :cond_4

    .line 768
    const-string/jumbo v4, "OHPD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[BgDetect]sample period is less than min check duration of level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 769
    const-string/jumbo v12, " : "

    .line 768
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 769
    const-wide/16 v12, 0x3e8

    div-long v12, v14, v12

    .line 768
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 769
    const-string/jumbo v12, " secs critical "

    .line 768
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->MODE_MSGS:[I

    aget v55, v4, p1

    .line 771
    .local v55, "msgId":I
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    move/from16 v0, v55

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 772
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    move/from16 v0, v55

    invoke-virtual {v4, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v58

    .line 773
    .local v58, "nmsg":Landroid/os/Message;
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    move/from16 v0, p2

    int-to-long v12, v0

    sub-long/2addr v12, v14

    const-wide/16 v18, 0xbb8

    add-long v12, v12, v18

    move-object/from16 v0, v58

    invoke-virtual {v4, v0, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    const/4 v4, -0x1

    monitor-exit v8

    .line 751
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 774
    return v4

    .line 755
    .end local v6    # "curUptime":J
    .end local v14    # "uptimeSince":J
    .end local v36    # "currentElapsedTime":J
    .end local v55    # "msgId":I
    .end local v58    # "nmsg":Landroid/os/Message;
    :cond_2
    const/16 v39, 0x0

    goto/16 :goto_0

    .line 763
    .restart local v6    # "curUptime":J
    .restart local v14    # "uptimeSince":J
    .restart local v36    # "currentElapsedTime":J
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBgDetectCleanUpTime:J

    sub-long v12, v36, v12

    const-wide/32 v18, 0x5265c00

    cmp-long v4, v12, v18

    if-lez v4, :cond_1

    .line 764
    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBgDetectCleanUpTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 751
    .end local v6    # "curUptime":J
    .end local v14    # "uptimeSince":J
    .end local v36    # "currentElapsedTime":J
    .end local v63    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :catchall_0
    move-exception v4

    monitor-exit v8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .restart local v6    # "curUptime":J
    .restart local v14    # "uptimeSince":J
    .restart local v36    # "currentElapsedTime":J
    .restart local v63    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :cond_4
    monitor-exit v8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 779
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getVisibleWindowUids()Ljava/util/List;

    move-result-object v76

    .line 780
    .local v76, "visibleUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getActiveAudioUids()[Ljava/lang/String;

    move-result-object v28

    .line 781
    .local v28, "avtiveAudioUids":[Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "com_oneplus_systemui_recent_task_lockd_list"

    const/4 v11, -0x2

    invoke-static {v4, v8, v11}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v54

    .line 783
    .local v54, "lockedStr":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->parseLockedStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v53

    .line 785
    .local v53, "lockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_7

    .line 786
    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->sBattUpdteLock:Ljava/lang/Object;

    monitor-enter v8

    .line 787
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getDeviceTemp()I

    move-result v38

    .line 789
    .local v38, "deviceTemp":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsPowerDrain:Z

    if-nez v4, :cond_5

    sget v4, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    move/from16 v0, v38

    if-lt v0, v4, :cond_6

    .line 790
    :cond_5
    const-string/jumbo v4, "OHPD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[BgDetect] Batt drain triggered , curr temp "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v38

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 791
    const/4 v10, 0x1

    :cond_6
    monitor-exit v8

    .line 796
    .end local v38    # "deviceTemp":I
    :cond_7
    sget-object v77, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v77

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 797
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCpuCheckUptime:[J

    aput-wide v6, v4, p1

    .line 799
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect]chkExcessCpu level: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " doKills: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 800
    const-string/jumbo v11, " critical "

    .line 799
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 800
    const-string/jumbo v11, " uptime: "

    .line 799
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    new-instance v41, Landroid/util/ArrayMap;

    invoke-direct/range {v41 .. v41}, Landroid/util/ArrayMap;-><init>()V

    .line 803
    .local v41, "doForceStopMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/ProcessRecord;>;"
    new-instance v61, Landroid/util/ArrayMap;

    invoke-direct/range {v61 .. v61}, Landroid/util/ArrayMap;-><init>()V

    .line 805
    .local v61, "skipUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v60, Landroid/util/ArrayMap;

    invoke-direct/range {v60 .. v60}, Landroid/util/ArrayMap;-><init>()V

    .line 807
    .local v60, "skipPDUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v72, Landroid/util/ArrayMap;

    invoke-direct/range {v72 .. v72}, Landroid/util/ArrayMap;-><init>()V

    .line 809
    .local v72, "uidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v45, Landroid/util/ArrayMap;

    invoke-direct/range {v45 .. v45}, Landroid/util/ArrayMap;-><init>()V

    .line 811
    .local v45, "fgUidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v71, Landroid/util/ArrayMap;

    invoke-direct/range {v71 .. v71}, Landroid/util/ArrayMap;-><init>()V

    .line 813
    .local v71, "uidAppInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;>;"
    if-nez p1, :cond_8

    .line 814
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 815
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 816
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    monitor-exit v8

    .line 819
    :cond_8
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_9

    .line 820
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 821
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 822
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    monitor-exit v8

    .line 825
    :cond_9
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_a

    .line 826
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 827
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 828
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 833
    :cond_a
    :try_start_a
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v48

    .line 834
    .local v48, "i":I
    :cond_b
    :goto_2
    if-lez v48, :cond_25

    .line 835
    add-int/lit8 v48, v48, -0x1

    .line 836
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 839
    .local v5, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->hasSystemFlag(I)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 848
    :cond_c
    if-nez v39, :cond_e

    .line 849
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateProcUsg(Lcom/android/server/am/ProcessRecord;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_2

    .line 1338
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v48    # "i":I
    :catch_0
    move-exception v42

    .line 1339
    .local v42, "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Exception;->printStackTrace()V

    .line 1340
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] got exception "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .end local v42    # "e":Ljava/lang/Exception;
    :goto_3
    monitor-exit v77

    .line 796
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1346
    if-eqz v67, :cond_76

    :try_start_c
    invoke-virtual/range {v67 .. v67}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_76

    .line 1347
    const-string/jumbo v56, ""

    .line 1348
    .local v56, "namesString":Ljava/lang/String;
    const/16 v48, 0x0

    .restart local v48    # "i":I
    :goto_4
    invoke-virtual/range {v67 .. v67}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v48

    if-ge v0, v4, :cond_75

    .line 1349
    if-nez v48, :cond_74

    .line 1350
    move-object/from16 v0, v67

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    .end local v56    # "namesString":Ljava/lang/String;
    check-cast v56, Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 1348
    .restart local v56    # "namesString":Ljava/lang/String;
    :goto_5
    add-int/lit8 v48, v48, 0x1

    goto :goto_4

    .line 786
    .end local v41    # "doForceStopMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/ProcessRecord;>;"
    .end local v45    # "fgUidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v48    # "i":I
    .end local v56    # "namesString":Ljava/lang/String;
    .end local v60    # "skipPDUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v61    # "skipUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v71    # "uidAppInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;>;"
    .end local v72    # "uidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v4

    monitor-exit v8

    throw v4

    .line 814
    .restart local v41    # "doForceStopMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/ProcessRecord;>;"
    .restart local v45    # "fgUidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v60    # "skipPDUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v61    # "skipUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v71    # "uidAppInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;>;"
    .restart local v72    # "uidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_2
    move-exception v4

    :try_start_d
    monitor-exit v8

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 796
    .end local v41    # "doForceStopMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/ProcessRecord;>;"
    .end local v45    # "fgUidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v60    # "skipPDUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v61    # "skipUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v71    # "uidAppInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;>;"
    .end local v72    # "uidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_3
    move-exception v4

    monitor-exit v77

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 820
    .restart local v41    # "doForceStopMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/ProcessRecord;>;"
    .restart local v45    # "fgUidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v60    # "skipPDUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v61    # "skipUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v71    # "uidAppInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;>;"
    .restart local v72    # "uidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_4
    move-exception v4

    :try_start_e
    monitor-exit v8

    throw v4

    .line 826
    :catchall_5
    move-exception v4

    monitor-exit v8

    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 840
    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v48    # "i":I
    :cond_d
    :try_start_f
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkGmsList(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 841
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "proc "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "(pid : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ") sys pkg"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 842
    if-eqz v10, :cond_b

    .line 843
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "proc "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "(pid : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ") sys pkg"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 853
    :cond_e
    iget-wide v12, v5, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v18, v4, p1

    sub-long v16, v12, v18

    .line 856
    .local v16, "cputimeUsed":J
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v12, v4, p1

    const-wide/16 v18, 0x0

    cmp-long v4, v12, v18

    if-gtz v4, :cond_12

    .line 857
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateProcUsg(Lcom/android/server/am/ProcessRecord;I)V

    .line 860
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 861
    .local v9, "result":Ljava/lang/StringBuffer;
    if-eqz v10, :cond_f

    sget v11, Lcom/android/server/am/OnePlusHighPowerDetector;->PD_LAST_FG_TIME_THOLD:I

    move-object/from16 v4, p0

    move/from16 v8, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->skipCheck(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 862
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 864
    :cond_f
    new-instance v9, Ljava/lang/StringBuffer;

    .end local v9    # "result":Ljava/lang/StringBuffer;
    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 865
    .restart local v9    # "result":Ljava/lang/StringBuffer;
    sget v11, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I

    move-object/from16 v4, p0

    move/from16 v8, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->skipCheck(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 866
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 867
    const-wide/16 v12, 0x64

    mul-long v12, v12, v16

    div-long v74, v12, v14

    .line 869
    .local v74, "usage":J
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 870
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    .line 871
    .local v35, "currVal":Ljava/lang/Integer;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-wide/from16 v0, v74

    long-to-int v8, v0

    add-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    .line 872
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    .end local v35    # "currVal":Ljava/lang/Integer;
    .end local v74    # "usage":J
    :cond_10
    :goto_6
    if-nez p1, :cond_b

    .line 879
    const-wide/16 v12, 0x0

    iput-wide v12, v5, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    goto/16 :goto_2

    .line 874
    .restart local v74    # "usage":J
    :cond_11
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-wide/from16 v0, v74

    long-to-int v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 884
    .end local v9    # "result":Ljava/lang/StringBuffer;
    .end local v74    # "usage":J
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInBlackExList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 885
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    :cond_13
    const-wide/16 v12, 0x64

    mul-long v12, v12, v16

    div-long v74, v12, v14

    .line 889
    .restart local v74    # "usage":J
    const-wide/16 v12, 0xa

    cmp-long v4, v74, v12

    if-lez v4, :cond_14

    .line 890
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "(pid : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ") level "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " usage "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v74

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " bgtime: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v12, v8, p1

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 892
    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->needCheckProc(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v4

    if-nez v4, :cond_15

    .line 893
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkBlackList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    .line 892
    if-nez v4, :cond_15

    .line 894
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    .line 892
    if-nez v4, :cond_15

    .line 895
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkBlackExList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    .line 892
    if-eqz v4, :cond_22

    .line 898
    :cond_15
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 899
    .restart local v9    # "result":Ljava/lang/StringBuffer;
    if-eqz v10, :cond_16

    sget v11, Lcom/android/server/am/OnePlusHighPowerDetector;->PD_LAST_FG_TIME_THOLD:I

    move-object/from16 v4, p0

    move/from16 v8, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->skipCheck(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 900
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 903
    :cond_16
    new-instance v9, Ljava/lang/StringBuffer;

    .end local v9    # "result":Ljava/lang/StringBuffer;
    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 904
    .restart local v9    # "result":Ljava/lang/StringBuffer;
    sget v11, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I

    move-object/from16 v4, p0

    move/from16 v8, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->skipCheck(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 905
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateProcUsg(Lcom/android/server/am/ProcessRecord;I)V

    .line 906
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 907
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v4, v4, p1

    int-to-long v12, v4

    cmp-long v4, v74, v12

    if-ltz v4, :cond_17

    .line 908
    const-string/jumbo v8, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] skip proc "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "(uid "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v11, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "), reason= "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v61

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    if-nez p1, :cond_17

    iget-wide v12, v5, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    const-wide/16 v18, 0x0

    cmp-long v4, v12, v18

    if-nez v4, :cond_17

    .line 912
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iput-wide v12, v5, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    .line 913
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] set lastSkipTime for "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "(uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ")"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_17
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 918
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    .line 919
    .restart local v35    # "currVal":Ljava/lang/Integer;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-wide/from16 v0, v74

    long-to-int v8, v0

    add-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    .line 920
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 922
    .end local v35    # "currVal":Ljava/lang/Integer;
    :cond_18
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-wide/from16 v0, v74

    long-to-int v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 928
    :cond_19
    if-nez p1, :cond_1a

    .line 929
    const-wide/16 v12, 0x0

    iput-wide v12, v5, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    .line 931
    :cond_1a
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v4, v4, p1

    int-to-long v12, v4

    cmp-long v4, v74, v12

    if-ltz v4, :cond_20

    .line 932
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    aget v4, v4, p1

    int-to-long v12, v4

    cmp-long v4, v74, v12

    if-gez v4, :cond_20

    .line 933
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v4, :cond_1b

    .line 934
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "catch level="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 935
    sget-object v11, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v11, v11, p1

    .line 934
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 936
    const-string/jumbo v11, "<="

    .line 934
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v74

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 936
    const-string/jumbo v11, "<"

    .line 934
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 937
    sget-object v11, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    aget v11, v11, p1

    .line 934
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_1b
    if-nez p1, :cond_1c

    .line 939
    monitor-enter v63
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 940
    :try_start_10
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v13, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v11, v63

    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/os/BatteryStatsImpl;->reportExcessiveCpuLocked(ILjava/lang/String;JJ)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    monitor-exit v63

    .line 945
    :cond_1c
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_1d

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_1d

    .line 946
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 951
    :cond_1d
    :goto_7
    if-nez p1, :cond_1e

    if-eqz v5, :cond_1e

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v4, :cond_1e

    .line 952
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4, v8}, Lcom/android/internal/app/procstats/ProcessState;->reportExcessiveCpu(Landroid/util/ArrayMap;)V

    .line 987
    .end local v9    # "result":Ljava/lang/StringBuffer;
    :cond_1e
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateProcUsg(Lcom/android/server/am/ProcessRecord;I)V

    goto/16 :goto_2

    .line 939
    .restart local v9    # "result":Ljava/lang/StringBuffer;
    :catchall_6
    move-exception v4

    monitor-exit v63

    throw v4

    .line 947
    :cond_1f
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect]detect excessive cpu on process "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 948
    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 947
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 948
    const-string/jumbo v11, "(pid : "

    .line 947
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 948
    iget v11, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 947
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 948
    const-string/jumbo v11, ") level "

    .line 947
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 948
    const-string/jumbo v11, " usage "

    .line 947
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v74

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 956
    :cond_20
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 957
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    .line 958
    .restart local v35    # "currVal":Ljava/lang/Integer;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-wide/from16 v0, v74

    long-to-int v8, v0

    add-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    .line 959
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v72

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    .end local v35    # "currVal":Ljava/lang/Integer;
    :goto_9
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;

    iget v11, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v12, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v13, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v8, v11, v12, v13}, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;-><init>(IILjava/lang/String;)V

    move-object/from16 v0, v71

    invoke-virtual {v0, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    const-wide/16 v12, 0x0

    cmp-long v4, v74, v12

    if-lez v4, :cond_1e

    .line 965
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect]accumulate usage "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v74

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " from procName "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " to uid "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 961
    :cond_21
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-wide/from16 v0, v74

    long-to-int v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v72

    invoke-virtual {v0, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 969
    .end local v9    # "result":Ljava/lang/StringBuffer;
    :cond_22
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "proc "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "(pid : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ") stat "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v5, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 970
    if-eqz v10, :cond_23

    .line 971
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "proc "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "(pid : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ") stat "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v5, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 974
    :cond_23
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 975
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    .line 976
    .restart local v35    # "currVal":Ljava/lang/Integer;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-wide/from16 v0, v74

    long-to-int v8, v0

    add-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    .line 977
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    .end local v35    # "currVal":Ljava/lang/Integer;
    :goto_a
    if-nez p1, :cond_1e

    .line 984
    const-wide/16 v12, 0x0

    iput-wide v12, v5, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    goto/16 :goto_8

    .line 979
    :cond_24
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-wide/from16 v0, v74

    long-to-int v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 990
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v16    # "cputimeUsed":J
    .end local v74    # "usage":J
    :cond_25
    if-eqz v39, :cond_71

    .line 993
    invoke-interface/range {v76 .. v76}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_27

    .line 994
    invoke-interface/range {v76 .. v76}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v70

    .local v70, "uid$iterator":Ljava/util/Iterator;
    :cond_26
    :goto_b
    invoke-interface/range {v70 .. v70}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface/range {v70 .. v70}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Ljava/lang/Integer;

    .line 995
    .local v68, "uid":Ljava/lang/Integer;
    move-object/from16 v0, v29

    move-object/from16 v1, v68

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 996
    invoke-virtual/range {v68 .. v68}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v8, "has visible window"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 997
    if-eqz v10, :cond_26

    .line 998
    invoke-virtual/range {v68 .. v68}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v8, "has visible window"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto :goto_b

    .line 1004
    .end local v68    # "uid":Ljava/lang/Integer;
    .end local v70    # "uid$iterator":Ljava/util/Iterator;
    :cond_27
    if-nez p1, :cond_2a

    .line 1005
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastActiveAudioList:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v70

    .restart local v70    # "uid$iterator":Ljava/util/Iterator;
    :cond_28
    :goto_c
    invoke-interface/range {v70 .. v70}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface/range {v70 .. v70}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Ljava/lang/Integer;

    .line 1006
    .restart local v68    # "uid":Ljava/lang/Integer;
    invoke-virtual/range {v68 .. v68}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v8, "audio active in last sample"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 1007
    if-eqz v10, :cond_28

    .line 1008
    invoke-virtual/range {v68 .. v68}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v8, "audio active in last sample"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto :goto_c

    .line 1010
    .end local v68    # "uid":Ljava/lang/Integer;
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastActiveAudioList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1014
    .end local v70    # "uid$iterator":Ljava/util/Iterator;
    :cond_2a
    if-eqz v28, :cond_30

    .line 1015
    const/4 v4, 0x0

    move-object/from16 v0, v28

    array-length v8, v0

    :goto_d
    if-ge v4, v8, :cond_30

    aget-object v69, v28, v4

    .line 1016
    .local v69, "uid":Ljava/lang/String;
    if-eqz v69, :cond_2b

    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2c

    .line 1015
    :cond_2b
    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1019
    :cond_2c
    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1020
    .local v26, "activeUid":I
    move-object/from16 v0, v29

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2e

    .line 1021
    const-string/jumbo v11, "audio active"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 1022
    if-eqz v10, :cond_2d

    .line 1023
    const-string/jumbo v11, "audio active"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 1025
    :cond_2d
    if-nez p1, :cond_2b

    .line 1026
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastActiveAudioList:Ljava/util/List;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1029
    :cond_2e
    move-object/from16 v0, v76

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2b

    .line 1030
    const-string/jumbo v11, "has visible window & audio active"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 1031
    if-eqz v10, :cond_2f

    .line 1032
    const-string/jumbo v11, "has visible window & audio active"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 1034
    :cond_2f
    if-nez p1, :cond_2b

    .line 1035
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastActiveAudioList:Ljava/util/List;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1041
    .end local v26    # "activeUid":I
    .end local v69    # "uid":Ljava/lang/String;
    :cond_30
    new-instance v40, Landroid/util/SparseArray;

    invoke-direct/range {v40 .. v40}, Landroid/util/SparseArray;-><init>()V

    .line 1043
    .local v40, "doForceStopForkedArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_39

    .line 1044
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1045
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v47

    .local v47, "fproc$iterator":Ljava/util/Iterator;
    :cond_31
    :goto_f
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 1046
    .local v46, "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->flags:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->hasSystemFlag(I)Z

    move-result v51

    .line 1048
    .local v51, "isSystemPkg":Z
    if-nez v51, :cond_31

    .line 1051
    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    aget-wide v18, v4, p1

    sub-long v16, v12, v18

    .line 1052
    .restart local v16    # "cputimeUsed":J
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v61

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 1053
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    const-string/jumbo v11, "dex2oat"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1052
    if-nez v4, :cond_32

    .line 1054
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isForkedProcInWhiteList(Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;)Z

    move-result v4

    .line 1052
    if-eqz v4, :cond_33

    .line 1055
    :cond_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] skip fproc "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    iget-object v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "(uid "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    iget v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "), reason= "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v61

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 1056
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    aput-wide v12, v4, p1

    .line 1059
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1060
    const-wide/16 v12, 0x64

    mul-long v12, v12, v16

    div-long v74, v12, v14

    .line 1061
    .restart local v74    # "usage":J
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    .line 1062
    .restart local v35    # "currVal":Ljava/lang/Integer;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-wide/from16 v0, v74

    long-to-int v11, v0

    add-int/2addr v4, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    .line 1063
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    goto/16 :goto_f

    .line 1044
    .end local v16    # "cputimeUsed":J
    .end local v35    # "currVal":Ljava/lang/Integer;
    .end local v46    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .end local v47    # "fproc$iterator":Ljava/util/Iterator;
    .end local v51    # "isSystemPkg":Z
    .end local v74    # "usage":J
    :catchall_7
    move-exception v4

    :try_start_13
    monitor-exit v8

    throw v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 1067
    .restart local v16    # "cputimeUsed":J
    .restart local v46    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .restart local v47    # "fproc$iterator":Ljava/util/Iterator;
    .restart local v51    # "isSystemPkg":Z
    :cond_33
    :try_start_14
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    aget-wide v12, v4, p1

    const-wide/16 v18, 0x0

    cmp-long v4, v12, v18

    if-lez v4, :cond_35

    .line 1068
    const-wide/16 v12, 0x64

    mul-long v12, v12, v16

    div-long v74, v12, v14

    .line 1069
    .restart local v74    # "usage":J
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v4, v4, p1

    int-to-long v12, v4

    cmp-long v4, v74, v12

    if-ltz v4, :cond_36

    .line 1070
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    aget v4, v4, p1

    int-to-long v12, v4

    cmp-long v4, v74, v12

    if-gez v4, :cond_36

    .line 1071
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    const/4 v11, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v11}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_34

    .line 1072
    const-string/jumbo v4, "OHPD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[BgDetect]detect excessive cpu on forked process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1073
    move-object/from16 v0, v46

    iget-object v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    .line 1072
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1073
    const-string/jumbo v12, "(pid : "

    .line 1072
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1073
    move-object/from16 v0, v46

    iget v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    .line 1072
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1073
    const-string/jumbo v12, ") level "

    .line 1072
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1073
    const-string/jumbo v12, " usage "

    .line 1072
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v74

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    move-object/from16 v0, v40

    move-object/from16 v1, v46

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1093
    :cond_34
    :goto_10
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1094
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    .line 1095
    .restart local v35    # "currVal":Ljava/lang/Integer;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-wide/from16 v0, v74

    long-to-int v11, v0

    add-int/2addr v4, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    .line 1096
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    .end local v35    # "currVal":Ljava/lang/Integer;
    .end local v74    # "usage":J
    :cond_35
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    aput-wide v12, v4, p1

    goto/16 :goto_f

    .line 1077
    .restart local v74    # "usage":J
    :cond_36
    const-string/jumbo v4, "OHPD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[BgDetect]forked proc "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v46

    iget-object v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1078
    const-string/jumbo v12, "(pid : "

    .line 1077
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1078
    move-object/from16 v0, v46

    iget v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    .line 1077
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1078
    const-string/jumbo v12, " uid: "

    .line 1077
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1078
    move-object/from16 v0, v46

    iget v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    .line 1077
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1078
    const-string/jumbo v12, ") "

    .line 1077
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1078
    const-string/jumbo v12, " during "

    .line 1077
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1081
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    .line 1082
    .restart local v35    # "currVal":Ljava/lang/Integer;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-wide/from16 v0, v74

    long-to-int v11, v0

    add-int/2addr v4, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    .line 1083
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v72

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    .end local v35    # "currVal":Ljava/lang/Integer;
    :goto_11
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v11, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;

    move-object/from16 v0, v46

    iget v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    move-object/from16 v0, v46

    iget v13, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v11, v12, v13, v0}, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;-><init>(IILjava/lang/String;)V

    move-object/from16 v0, v71

    invoke-virtual {v0, v4, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    const-wide/16 v12, 0x0

    cmp-long v4, v74, v12

    if-lez v4, :cond_34

    .line 1089
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect]accumulate usage "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v74

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, " from procName "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    iget-object v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, " to uid "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    iget v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1085
    :cond_37
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-wide/from16 v0, v74

    long-to-int v11, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v72

    invoke-virtual {v0, v4, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto :goto_11

    .end local v16    # "cputimeUsed":J
    .end local v46    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .end local v51    # "isSystemPkg":Z
    .end local v74    # "usage":J
    :cond_38
    :try_start_15
    monitor-exit v8

    .line 1104
    .end local v47    # "fproc$iterator":Ljava/util/Iterator;
    :cond_39
    invoke-virtual/range {v41 .. v41}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-lez v4, :cond_4d

    .line 1105
    invoke-virtual/range {v41 .. v41}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "app$iterator":Ljava/util/Iterator;
    :cond_3a
    :goto_12
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 1106
    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v61

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 1108
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mKillMechanism:Z

    if-eqz v4, :cond_41

    const/4 v4, 0x3

    move/from16 v0, p1

    if-ne v0, v4, :cond_41

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 1109
    const/16 v30, 0x0

    .line 1110
    .local v30, "boundByFG":Z
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    if-eqz v4, :cond_3f

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_3f

    .line 1111
    const/16 v62, 0x0

    .line 1112
    .local v62, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .end local v62    # "sr":Lcom/android/server/am/ServiceRecord;
    .local v52, "it":Ljava/util/Iterator;
    :cond_3b
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    move-result v4

    if-eqz v4, :cond_3f

    .line 1113
    const/16 v62, 0x0

    .line 1115
    .restart local v62    # "sr":Lcom/android/server/am/ServiceRecord;
    :try_start_16
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v62

    .end local v62    # "sr":Lcom/android/server/am/ServiceRecord;
    check-cast v62, Lcom/android/server/am/ServiceRecord;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 1119
    .local v62, "sr":Lcom/android/server/am/ServiceRecord;
    if-eqz v62, :cond_3b

    :try_start_17
    move-object/from16 v0, v62

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    if-eqz v4, :cond_3b

    .line 1120
    const/16 v33, 0x0

    .local v33, "conni":I
    :goto_13
    move-object/from16 v0, v62

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v33

    if-ge v0, v4, :cond_3b

    .line 1121
    move-object/from16 v0, v62

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/ArrayList;

    .line 1122
    .local v31, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/16 v49, 0x0

    .local v49, "idx":I
    :goto_14
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v49

    if-ge v0, v4, :cond_3d

    .line 1123
    move-object/from16 v0, v31

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/ConnectionRecord;

    .line 1124
    .local v34, "crd":Lcom/android/server/am/ConnectionRecord;
    if-eqz v34, :cond_3e

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v4, :cond_3e

    .line 1125
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v32, v0

    .line 1126
    .local v32, "client":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v8, 0x2

    if-eq v4, v8, :cond_3c

    .line 1127
    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v8, 0x1

    if-ne v4, v8, :cond_3e

    .line 1128
    :cond_3c
    const/16 v30, 0x1

    .line 1129
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] skip "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ", bound by "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v32

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "("

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v32

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ") state "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v32

    iget v11, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    .end local v32    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v34    # "crd":Lcom/android/server/am/ConnectionRecord;
    :cond_3d
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_13

    .line 1122
    .restart local v34    # "crd":Lcom/android/server/am/ConnectionRecord;
    :cond_3e
    add-int/lit8 v49, v49, 0x1

    goto/16 :goto_14

    .line 1116
    .end local v31    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v33    # "conni":I
    .end local v34    # "crd":Lcom/android/server/am/ConnectionRecord;
    .end local v49    # "idx":I
    .end local v62    # "sr":Lcom/android/server/am/ServiceRecord;
    :catch_1
    move-exception v42

    .line 1138
    .end local v52    # "it":Ljava/util/Iterator;
    :cond_3f
    if-nez v30, :cond_40

    .line 1139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect] kill "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " due to abnormally busy"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    invoke-virtual {v5, v4, v8}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 1144
    .end local v30    # "boundByFG":Z
    :cond_40
    :goto_15
    add-int/lit8 v59, v59, 0x1

    .line 1145
    goto/16 :goto_12

    .line 1142
    :cond_41
    const-string/jumbo v8, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] skip proc "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "(uid "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v11, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "), reason= "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v61

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1148
    :cond_42
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 1149
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    :cond_43
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v8, 0x3e7

    if-ne v4, v8, :cond_44

    const/16 v50, 0x1

    .line 1157
    .local v50, "isDualApp":Z
    :goto_16
    if-nez p1, :cond_48

    .line 1158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 1159
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] notify level-0 pkg:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    if-eqz v50, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    :goto_17
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v24, v0

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    .line 1161
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    const-string/jumbo v12, "lru_huge"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v11, v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;)V

    .line 1172
    :goto_18
    add-int/lit8 v59, v59, 0x1

    goto/16 :goto_12

    .line 1152
    .end local v50    # "isDualApp":Z
    :cond_44
    const/16 v50, 0x0

    .restart local v50    # "isDualApp":Z
    goto/16 :goto_16

    .line 1160
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    goto :goto_17

    .line 1162
    :cond_46
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkLevel0KillList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 1163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect] kill "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " due to abnormally busy"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    invoke-virtual {v5, v4, v8}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_18

    .line 1165
    :cond_47
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect]force stop "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " (uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ") level "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    .line 1169
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v67

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    .line 1173
    :cond_48
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_4a

    .line 1174
    if-eqz v50, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    :goto_19
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v24, v0

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    .line 1175
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    const-string/jumbo v12, "lru_high"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v11, v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_12

    .line 1174
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    goto :goto_19

    .line 1176
    :cond_4a
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_4c

    .line 1177
    if-eqz v50, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    :goto_1a
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v24, v0

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    goto/16 :goto_12

    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    goto :goto_1a

    .line 1178
    :cond_4c
    const/4 v4, 0x3

    move/from16 v0, p1

    if-ne v0, v4, :cond_3a

    .line 1179
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProviderBoundByFG(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v4

    if-nez v4, :cond_3a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 1180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect] kill "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " (uid "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ") level "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    invoke-virtual {v5, v4, v8}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto/16 :goto_12

    .line 1185
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v27    # "app$iterator":Ljava/util/Iterator;
    .end local v50    # "isDualApp":Z
    :cond_4d
    invoke-virtual/range {v40 .. v40}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_59

    .line 1186
    const/16 v48, 0x0

    :goto_1b
    invoke-virtual/range {v40 .. v40}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v48

    if-ge v0, v4, :cond_59

    .line 1187
    move-object/from16 v0, v40

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 1188
    .restart local v46    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    if-eqz v4, :cond_58

    .line 1190
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 1191
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    :cond_4e
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v8, 0x3e7

    if-ne v4, v8, :cond_50

    const/16 v50, 0x1

    .line 1195
    .restart local v50    # "isDualApp":Z
    :goto_1c
    if-nez p1, :cond_54

    .line 1196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    iget v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1197
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] notify level-0 pkg:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v46

    iget-object v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v46

    iget v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    if-eqz v50, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    :goto_1d
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    move/from16 v24, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    move/from16 v25, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    .line 1199
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v0, v46

    iget v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    move-object/from16 v0, v46

    iget v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    const-string/jumbo v12, "fork_huge"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v11, v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;)V

    .line 1211
    :goto_1e
    add-int/lit8 v59, v59, 0x1

    .line 1186
    .end local v50    # "isDualApp":Z
    :cond_4f
    :goto_1f
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_1b

    .line 1193
    :cond_50
    const/16 v50, 0x0

    .restart local v50    # "isDualApp":Z
    goto/16 :goto_1c

    .line 1198
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    goto :goto_1d

    .line 1200
    :cond_52
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkLevel0KillList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 1201
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v46

    iget v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    move-object/from16 v0, v46

    iget v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1202
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[BgDetect] kill forked "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v46

    iget-object v13, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " (uid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v46

    iget v13, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") level "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1201
    invoke-virtual {v4, v8, v11, v12}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    goto :goto_1e

    .line 1204
    :cond_53
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect]force stop forked "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v46

    iget-object v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " (uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v46

    iget v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ") level "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v0, v46

    iget v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    .line 1208
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v0, v67

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    .line 1212
    :cond_54
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_56

    .line 1213
    if-eqz v50, :cond_55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    :goto_20
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    move/from16 v24, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    move/from16 v25, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    .line 1214
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v0, v46

    iget v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    move-object/from16 v0, v46

    iget v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    const-string/jumbo v12, "fork_high"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v11, v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_1f

    .line 1213
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    goto :goto_20

    .line 1215
    :cond_56
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_4f

    .line 1216
    if-eqz v50, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    :goto_21
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    move/from16 v24, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    move/from16 v25, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    goto/16 :goto_1f

    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    goto :goto_21

    .line 1219
    .end local v50    # "isDualApp":Z
    :cond_58
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect]forked proc "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v46

    iget-object v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1220
    const-string/jumbo v11, " \'s pkgName is null, uid "

    .line 1219
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1220
    move-object/from16 v0, v46

    iget v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    .line 1219
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1220
    const-string/jumbo v11, " pid "

    .line 1219
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1220
    move-object/from16 v0, v46

    iget v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    .line 1219
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1225
    .end local v46    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    :cond_59
    invoke-virtual/range {v72 .. v72}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v44

    .local v44, "entry$iterator":Ljava/util/Iterator;
    :cond_5a
    :goto_22
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/Map$Entry;

    .line 1226
    .local v43, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v43 .. v43}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Ljava/lang/Integer;

    .line 1227
    .restart local v68    # "uid":Ljava/lang/Integer;
    invoke-interface/range {v43 .. v43}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Ljava/lang/Integer;

    .line 1228
    .local v73, "usageSum":Ljava/lang/Integer;
    move-object/from16 v0, v71

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;

    iget-object v0, v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->pkgName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 1229
    .local v20, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v71

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;

    iget v0, v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->pid:I

    move/from16 v24, v0

    .line 1230
    .local v24, "pid":I
    invoke-virtual/range {v68 .. v68}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v8, 0x3e7

    if-ne v4, v8, :cond_5c

    const/16 v50, 0x1

    .line 1231
    .restart local v50    # "isDualApp":Z
    :goto_23
    invoke-virtual/range {v73 .. v73}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_5b

    .line 1232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect] uid "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v68

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " pkgName "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " usage "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v73

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 1233
    :cond_5b
    invoke-virtual/range {v73 .. v73}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v8, v8, p1

    if-lt v4, v8, :cond_5a

    .line 1234
    invoke-virtual/range {v73 .. v73}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    aget v8, v8, p1

    if-ge v4, v8, :cond_5a

    .line 1235
    move-object/from16 v0, v61

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 1236
    const-string/jumbo v8, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] skip pkg "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "(uid "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v68

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "), reason= "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v61

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    .line 1230
    .end local v50    # "isDualApp":Z
    :cond_5c
    const/16 v50, 0x0

    .restart local v50    # "isDualApp":Z
    goto/16 :goto_23

    .line 1239
    :cond_5d
    if-nez p1, :cond_61

    .line 1240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v68 .. v68}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 1241
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] notify level-0 pkg:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v68

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    if-eqz v50, :cond_5e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    :goto_24
    invoke-virtual/range {v68 .. v68}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    .line 1243
    invoke-virtual/range {v68 .. v68}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const-string/jumbo v8, "accu_huge"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;)V

    .line 1255
    :goto_25
    add-int/lit8 v59, v59, 0x1

    goto/16 :goto_22

    .line 1242
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    goto :goto_24

    .line 1244
    :cond_5f
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkLevel0KillList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 1245
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {v68 .. v68}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    invoke-virtual/range {v68 .. v68}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1246
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[BgDetect] total usage "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v73

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " over thold, kill "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " (uid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v68

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") level "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1245
    invoke-virtual {v4, v8, v11, v12}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    goto :goto_25

    .line 1248
    :cond_60
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] total usage "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v73

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " over thold, force stop "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " (uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v68

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ") level "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    invoke-virtual/range {v68 .. v68}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    .line 1252
    move-object/from16 v0, v67

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_25

    .line 1256
    :cond_61
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_63

    .line 1257
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] HighPower total usage "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v73

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " over thold # add forked "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " (uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v68

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ") level "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    if-eqz v50, :cond_62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    :goto_26
    invoke-virtual/range {v68 .. v68}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    .line 1259
    invoke-virtual/range {v68 .. v68}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const-string/jumbo v8, "accu_high"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_22

    .line 1258
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    goto :goto_26

    .line 1260
    :cond_63
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_5a

    .line 1261
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] MediumPower total usage "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v73

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " over thold  # add forked "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " (uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v68

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ") level "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    if-eqz v50, :cond_64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    :goto_27
    invoke-virtual/range {v68 .. v68}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    goto/16 :goto_22

    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    goto :goto_27

    .line 1268
    .end local v20    # "pkgName":Ljava/lang/String;
    .end local v24    # "pid":I
    .end local v43    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v50    # "isDualApp":Z
    .end local v68    # "uid":Ljava/lang/Integer;
    .end local v73    # "usageSum":Ljava/lang/Integer;
    :cond_65
    if-eqz v10, :cond_70

    .line 1269
    const/16 v57, 0x1

    .line 1271
    .local v57, "needReportDrain":Z
    invoke-virtual/range {v45 .. v45}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v44

    :cond_66
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/Map$Entry;

    .line 1272
    .restart local v43    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v43 .. v43}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Ljava/lang/Integer;

    .line 1273
    .restart local v73    # "usageSum":Ljava/lang/Integer;
    invoke-interface/range {v43 .. v43}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Ljava/lang/Integer;

    .line 1274
    .restart local v68    # "uid":Ljava/lang/Integer;
    invoke-virtual/range {v73 .. v73}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v8, v8, p1

    if-lt v4, v8, :cond_66

    .line 1275
    add-int/lit8 v59, v59, 0x1

    .line 1276
    const/16 v57, 0x0

    .line 1277
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect][PD] found PD is caused by skipped uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v68

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " usg "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v73

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    .end local v43    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v68    # "uid":Ljava/lang/Integer;
    .end local v73    # "usageSum":Ljava/lang/Integer;
    :cond_67
    if-nez v59, :cond_6e

    .line 1283
    const-string/jumbo v4, "[BgDetect][PD] start review BG procs"

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 1284
    invoke-virtual/range {v72 .. v72}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v44

    :cond_68
    :goto_28
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/Map$Entry;

    .line 1285
    .restart local v43    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v43 .. v43}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Ljava/lang/Integer;

    .line 1286
    .restart local v68    # "uid":Ljava/lang/Integer;
    invoke-interface/range {v43 .. v43}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Ljava/lang/Integer;

    .line 1287
    .restart local v73    # "usageSum":Ljava/lang/Integer;
    move-object/from16 v0, v71

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;

    iget-object v0, v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->pkgName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 1288
    .restart local v20    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, v71

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;

    iget v0, v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->pid:I

    move/from16 v24, v0

    .line 1289
    .restart local v24    # "pid":I
    invoke-virtual/range {v68 .. v68}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v8, 0x3e7

    if-ne v4, v8, :cond_69

    const/16 v50, 0x1

    .line 1290
    .restart local v50    # "isDualApp":Z
    :goto_29
    invoke-virtual/range {v73 .. v73}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget v8, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_USG_THOLD:I

    if-lt v4, v8, :cond_68

    .line 1291
    move-object/from16 v0, v60

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 1292
    const-string/jumbo v8, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect][PD] skip pkg "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "(uid "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v68

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "), reason= "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v60

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 1289
    .end local v50    # "isDualApp":Z
    :cond_69
    const/16 v50, 0x0

    .restart local v50    # "isDualApp":Z
    goto :goto_29

    .line 1295
    :cond_6a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v68 .. v68}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 1296
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect][PD] notify level-0 pkg:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v68

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    if-eqz v50, :cond_6b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    :goto_2a
    invoke-virtual/range {v68 .. v68}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    .line 1298
    invoke-virtual/range {v68 .. v68}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const-string/jumbo v8, "accu_huge"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;)V

    .line 1310
    :goto_2b
    const/16 v57, 0x0

    goto/16 :goto_28

    .line 1297
    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    goto :goto_2a

    .line 1299
    :cond_6c
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkLevel0KillList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 1300
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {v68 .. v68}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    invoke-virtual/range {v68 .. v68}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1301
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[BgDetect][PD] total usage "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v73

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " over thold, kill "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " (uid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v68

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") level "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1300
    invoke-virtual {v4, v8, v11, v12}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    goto :goto_2b

    .line 1303
    :cond_6d
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect][PD] total usage "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v73

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " over thold, force stop "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " (uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v68

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ") level "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    invoke-virtual/range {v68 .. v68}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    .line 1307
    move-object/from16 v0, v67

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2b

    .line 1314
    .end local v20    # "pkgName":Ljava/lang/String;
    .end local v24    # "pid":I
    .end local v43    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v50    # "isDualApp":Z
    .end local v68    # "uid":Ljava/lang/Integer;
    .end local v73    # "usageSum":Ljava/lang/Integer;
    :cond_6e
    const/16 v57, 0x0

    .line 1317
    :cond_6f
    if-eqz v57, :cond_70

    .line 1318
    const-string/jumbo v4, "OHPD"

    const-string/jumbo v8, "[BgDetect][PD] notify OPBR"

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v8, 0xd6df

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v58

    .line 1320
    .restart local v58    # "nmsg":Landroid/os/Message;
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const-wide/16 v12, 0x3e8

    move-object/from16 v0, v58

    invoke-virtual {v4, v0, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1336
    .end local v40    # "doForceStopForkedArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;>;"
    .end local v44    # "entry$iterator":Ljava/util/Iterator;
    .end local v57    # "needReportDrain":Z
    .end local v58    # "nmsg":Landroid/os/Message;
    :cond_70
    :goto_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->cancelBgDetectNotificationIfNeeded()V

    goto/16 :goto_3

    .line 1324
    :cond_71
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_70

    .line 1325
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 1326
    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v47

    .restart local v47    # "fproc$iterator":Ljava/util/Iterator;
    :cond_72
    :goto_2d
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 1327
    .restart local v46    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    const-wide/16 v18, 0x0

    cmp-long v4, v12, v18

    if-lez v4, :cond_72

    .line 1328
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    aput-wide v12, v4, p1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    goto :goto_2d

    .line 1325
    .end local v46    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .end local v47    # "fproc$iterator":Ljava/util/Iterator;
    :catchall_8
    move-exception v4

    :try_start_19
    monitor-exit v8

    throw v4

    .restart local v47    # "fproc$iterator":Ljava/util/Iterator;
    :cond_73
    monitor-exit v8
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    goto :goto_2c

    .line 1352
    .end local v47    # "fproc$iterator":Ljava/util/Iterator;
    .restart local v56    # "namesString":Ljava/lang/String;
    :cond_74
    :try_start_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v67

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_5

    .line 1355
    :cond_75
    new-instance v66, Lcom/android/server/SystemEvent;

    const-string/jumbo v4, "ForceStopApplication"

    move-object/from16 v0, v66

    invoke-direct {v0, v4}, Lcom/android/server/SystemEvent;-><init>(Ljava/lang/String;)V

    .line 1356
    .local v66, "stopAppEvent":Lcom/android/server/SystemEvent;
    const-string/jumbo v4, "name"

    move-object/from16 v0, v66

    move-object/from16 v1, v56

    invoke-virtual {v0, v4, v1}, Lcom/android/server/SystemEvent;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerEventCollector:Lcom/android/server/SystemEventCollector;

    move-object/from16 v0, v66

    invoke-virtual {v4, v0}, Lcom/android/server/SystemEventCollector;->submit(Lcom/android/server/SystemEvent;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_2

    .line 1364
    .end local v48    # "i":I
    .end local v56    # "namesString":Ljava/lang/String;
    .end local v66    # "stopAppEvent":Lcom/android/server/SystemEvent;
    :cond_76
    :goto_2e
    if-eqz v10, :cond_77

    .line 1365
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->sBattUpdteLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1366
    const/4 v8, 0x0

    :try_start_1b
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsPowerDrain:Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    monitor-exit v4

    .line 1370
    :cond_77
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v4, :cond_78

    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] checkExcessiveCpuUsageLocked -# level "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1371
    const-string/jumbo v11, " in "

    .line 1370
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1371
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v64

    .line 1370
    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1371
    const-string/jumbo v11, "ms"

    .line 1370
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    :cond_78
    const/4 v4, 0x0

    return v4

    .line 1359
    :catch_2
    move-exception v42

    .line 1360
    .restart local v42    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[MDM_Collect] Exception:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 1365
    .end local v42    # "e":Ljava/lang/Exception;
    :catchall_9
    move-exception v8

    monitor-exit v4

    throw v8
.end method

.method private cleanUpWhenPkgRemoved(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1759
    const-string/jumbo v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[BgDetect] pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " removed , userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    const/16 v0, 0x3e7

    if-eq p2, v0, :cond_3

    .line 1762
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1763
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1764
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1767
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1768
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1769
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    monitor-exit v1

    .line 1772
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1773
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1774
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    :goto_0
    monitor-exit v1

    .line 1758
    return-void

    .line 1762
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1767
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1772
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1778
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1779
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1780
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :cond_4
    monitor-exit v1

    .line 1783
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1784
    :try_start_4
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1785
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :cond_5
    monitor-exit v1

    .line 1788
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1789
    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1790
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_0

    .line 1788
    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1778
    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1783
    :catchall_5
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private forceStopPackage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1530
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 1531
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v0, :cond_0

    .line 1532
    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->updateAppStopInfo(Ljava/lang/String;)V

    .line 1533
    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v0

    .line 1534
    const v1, 0x8000

    .line 1533
    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/OnePlusAppBootManager;->updatePowerFlag(Ljava/lang/String;I)V

    .line 1536
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->postProcessOfForceStop(Ljava/lang/String;I)V

    .line 1529
    return-void
.end method

.method private getActiveAudioUids()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1966
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 1968
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1967
    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAudioManager:Landroid/media/AudioManager;

    .line 1970
    :cond_0
    const-string/jumbo v0, ""

    .line 1971
    .local v0, "uids":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 1973
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "get_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1979
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1976
    :cond_1
    const-string/jumbo v0, ":0"

    goto :goto_0
.end method

.method private getLastFGTimeThold(Z)I
    .locals 1
    .param p1, "isBatteryDrain"    # Z

    .prologue
    .line 1797
    if-eqz p1, :cond_0

    sget v0, Lcom/android/server/am/OnePlusHighPowerDetector;->PD_LAST_FG_TIME_THOLD:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 270
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 271
    const v2, 0x5070002

    .line 270
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 273
    const v2, 0x5070003

    .line 272
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 275
    const v2, 0x5070006

    .line 274
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 277
    const v2, 0x5070004

    .line 276
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 279
    const v2, 0x5070005

    .line 278
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 281
    const v2, 0x5070007

    .line 280
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    .line 282
    const-string/jumbo v0, "persist.sys.ohpd.kcheck"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mKillMechanism:Z

    .line 284
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateCpuThreshold(Ljava/lang/String;)V

    .line 285
    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->registerReceiver()V

    .line 286
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->initOnlineConfig()V

    .line 287
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 288
    const-string/jumbo v0, "persist.sys.ohpd.pd.usg.thold"

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_USG_THOLD:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_USG_THOLD:I

    .line 289
    const-string/jumbo v0, "persist.sys.ohpd.pd.temp.thold"

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    .line 290
    const-string/jumbo v0, "persist.sys.ohpd.pd.lastfg"

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->PD_LAST_FG_TIME_THOLD:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->PD_LAST_FG_TIME_THOLD:I

    .line 269
    :cond_0
    return-void
.end method

.method private isAppBusyLongTime(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1801
    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1802
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    sub-long/2addr v0, v2

    sget v2, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_CONT_BUSY_TIME_THOLD:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1803
    const/4 v0, 0x1

    return v0

    .line 1805
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 242
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 243
    const-string/jumbo v0, "OHPD"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    return-void
.end method

.method private notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6
    .param p1, "triggerPkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "userId"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .line 1556
    :try_start_0
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyBgDetectIfNecessary # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :cond_0
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v3, 0xd6db

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1558
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1559
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 1560
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 1561
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1554
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 1562
    :catch_0
    move-exception v0

    .line 1563
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error when notifyBgDetectIfNecessary "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "uids"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1983
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1984
    :cond_0
    return-object v2

    .line 1986
    :cond_1
    const-string/jumbo v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1987
    return-object v2

    .line 1989
    :cond_2
    const-string/jumbo v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1990
    .local v0, "arrayUid":[Ljava/lang/String;
    return-object v0
.end method

.method private parseLockedStr(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "lockedStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1994
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1995
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 1996
    return-object v2

    .line 1998
    :cond_0
    const-string/jumbo v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1999
    .local v1, "keys":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 2000
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 2001
    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2000
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2004
    .end local v0    # "i":I
    :cond_1
    return-object v2
.end method

.method private registerReceiver()V
    .locals 4

    .prologue
    .line 325
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 326
    .local v0, "batteryStateFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/am/OnePlusHighPowerDetector$2;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusHighPowerDetector$2;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 358
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 359
    .local v1, "generalFilter":Landroid/content/IntentFilter;
    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 361
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 362
    const-string/jumbo v2, "ohpd.action.test"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    :cond_0
    const-string/jumbo v2, "com.oem.intent.action.force_stop_pkg"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 324
    return-void
.end method

.method private resolveBackgroundDetectionConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 30
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 2022
    sget-boolean v26, Lcom/android/server/am/OnePlusHighPowerDetector;->ONLINE_CONFIG:Z

    if-nez v26, :cond_0

    .line 2023
    return-void

    .line 2025
    :cond_0
    if-nez p1, :cond_1

    .line 2026
    return-void

    .line 2030
    :cond_1
    :try_start_0
    sget-object v27, Lcom/android/server/am/OnePlusHighPowerDetector;->sConfigLock:Ljava/lang/Object;

    monitor-enter v27
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2031
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-ge v11, v0, :cond_1d

    .line 2032
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 2033
    .local v13, "json":Lorg/json/JSONObject;
    const-string/jumbo v26, "name"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v28, "backgroundprocess_detection_app_whitelist"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 2034
    const-string/jumbo v26, "value"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v25

    .line 2035
    .local v25, "whiteAppListJsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    monitor-enter v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2036
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 2037
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-ge v10, v0, :cond_2

    .line 2038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2037
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    :try_start_3
    monitor-exit v28

    .line 2042
    .end local v10    # "i":I
    .end local v25    # "whiteAppListJsonArray":Lorg/json/JSONArray;
    :cond_3
    const-string/jumbo v26, "name"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v28, "black_list"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 2043
    const-string/jumbo v26, "value"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2044
    .local v3, "blackAppListJsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    monitor-enter v28
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2045
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 2046
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-ge v10, v0, :cond_4

    .line 2047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2046
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2035
    .end local v3    # "blackAppListJsonArray":Lorg/json/JSONArray;
    .end local v10    # "i":I
    .restart local v25    # "whiteAppListJsonArray":Lorg/json/JSONArray;
    :catchall_0
    move-exception v26

    :try_start_5
    monitor-exit v28

    throw v26
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2030
    .end local v13    # "json":Lorg/json/JSONObject;
    .end local v25    # "whiteAppListJsonArray":Lorg/json/JSONArray;
    :catchall_1
    move-exception v26

    :try_start_6
    monitor-exit v27

    throw v26
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 2169
    .end local v11    # "index":I
    :catch_0
    move-exception v8

    .line 2170
    .local v8, "e":Lorg/json/JSONException;
    const-string/jumbo v26, "OHPD"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v8}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    .end local v8    # "e":Lorg/json/JSONException;
    :goto_3
    return-void

    .restart local v3    # "blackAppListJsonArray":Lorg/json/JSONArray;
    .restart local v10    # "i":I
    .restart local v11    # "index":I
    .restart local v13    # "json":Lorg/json/JSONObject;
    :cond_4
    :try_start_7
    monitor-exit v28

    .line 2051
    .end local v3    # "blackAppListJsonArray":Lorg/json/JSONArray;
    .end local v10    # "i":I
    :cond_5
    const-string/jumbo v26, "name"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v28, "black_ex_list"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 2052
    const-string/jumbo v26, "value"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2053
    .local v4, "blackExAppListJsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    monitor-enter v28
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2054
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 2055
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-ge v10, v0, :cond_6

    .line 2056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2055
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 2044
    .end local v4    # "blackExAppListJsonArray":Lorg/json/JSONArray;
    .end local v10    # "i":I
    .restart local v3    # "blackAppListJsonArray":Lorg/json/JSONArray;
    :catchall_2
    move-exception v26

    :try_start_9
    monitor-exit v28

    throw v26

    .end local v3    # "blackAppListJsonArray":Lorg/json/JSONArray;
    .restart local v4    # "blackExAppListJsonArray":Lorg/json/JSONArray;
    .restart local v10    # "i":I
    :cond_6
    monitor-exit v28

    .line 2060
    .end local v4    # "blackExAppListJsonArray":Lorg/json/JSONArray;
    .end local v10    # "i":I
    :cond_7
    const-string/jumbo v26, "name"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v28, "kill_proc_list"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 2061
    const-string/jumbo v26, "value"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 2062
    .local v15, "killProcListJsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    monitor-enter v28
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2063
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 2064
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_5
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-ge v10, v0, :cond_8

    .line 2065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual {v15, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 2064
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 2053
    .end local v10    # "i":I
    .end local v15    # "killProcListJsonArray":Lorg/json/JSONArray;
    .restart local v4    # "blackExAppListJsonArray":Lorg/json/JSONArray;
    :catchall_3
    move-exception v26

    :try_start_b
    monitor-exit v28

    throw v26

    .end local v4    # "blackExAppListJsonArray":Lorg/json/JSONArray;
    .restart local v10    # "i":I
    .restart local v15    # "killProcListJsonArray":Lorg/json/JSONArray;
    :cond_8
    monitor-exit v28

    .line 2069
    .end local v10    # "i":I
    .end local v15    # "killProcListJsonArray":Lorg/json/JSONArray;
    :cond_9
    const-string/jumbo v26, "name"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v28, "level0_kill_proc_list"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 2070
    const-string/jumbo v26, "value"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 2071
    .local v18, "level0KillListJsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    monitor-enter v28
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2072
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 2073
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_6
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-ge v10, v0, :cond_a

    .line 2074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 2073
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 2062
    .end local v10    # "i":I
    .end local v18    # "level0KillListJsonArray":Lorg/json/JSONArray;
    .restart local v15    # "killProcListJsonArray":Lorg/json/JSONArray;
    :catchall_4
    move-exception v26

    :try_start_d
    monitor-exit v28

    throw v26

    .end local v15    # "killProcListJsonArray":Lorg/json/JSONArray;
    .restart local v10    # "i":I
    .restart local v18    # "level0KillListJsonArray":Lorg/json/JSONArray;
    :cond_a
    monitor-exit v28

    .line 2078
    .end local v10    # "i":I
    .end local v18    # "level0KillListJsonArray":Lorg/json/JSONArray;
    :cond_b
    const-string/jumbo v26, "name"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v28, "prebuilt_gms_proc_list"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 2079
    const-string/jumbo v26, "value"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 2080
    .local v9, "gmsMonitorListJsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    monitor-enter v28
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 2081
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 2082
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_7
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-ge v10, v0, :cond_c

    .line 2083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 2082
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 2071
    .end local v9    # "gmsMonitorListJsonArray":Lorg/json/JSONArray;
    .end local v10    # "i":I
    .restart local v18    # "level0KillListJsonArray":Lorg/json/JSONArray;
    :catchall_5
    move-exception v26

    :try_start_f
    monitor-exit v28

    throw v26

    .end local v18    # "level0KillListJsonArray":Lorg/json/JSONArray;
    .restart local v9    # "gmsMonitorListJsonArray":Lorg/json/JSONArray;
    .restart local v10    # "i":I
    :cond_c
    monitor-exit v28

    .line 2087
    .end local v9    # "gmsMonitorListJsonArray":Lorg/json/JSONArray;
    .end local v10    # "i":I
    :cond_d
    const-string/jumbo v26, "name"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v28, "bg_detection_cpu_usage_threshold"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 2088
    const-string/jumbo v26, "value"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 2089
    .local v24, "thresholdJsonArray":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_8
    const/16 v26, 0x4

    move/from16 v0, v26

    if-ge v10, v0, :cond_e

    .line 2090
    sget-object v26, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    aput v28, v26, v10

    .line 2091
    const-string/jumbo v26, "OHPD"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "[OnlineConfig]BG_DETECTION_CPU_USAGE_THRESHOLD_MIN["

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "]:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v29, v29, v10

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 2080
    .end local v10    # "i":I
    .end local v24    # "thresholdJsonArray":Lorg/json/JSONArray;
    .restart local v9    # "gmsMonitorListJsonArray":Lorg/json/JSONArray;
    :catchall_6
    move-exception v26

    monitor-exit v28

    throw v26

    .line 2094
    .end local v9    # "gmsMonitorListJsonArray":Lorg/json/JSONArray;
    :cond_e
    const-string/jumbo v26, "name"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v28, "bg_detection_cpu_usage_threshold_max"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 2095
    const-string/jumbo v26, "value"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 2096
    .restart local v24    # "thresholdJsonArray":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_9
    const/16 v26, 0x4

    move/from16 v0, v26

    if-ge v10, v0, :cond_f

    .line 2097
    sget-object v26, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    aput v28, v26, v10

    .line 2098
    const-string/jumbo v26, "OHPD"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "[OnlineConfig]BG_DETECTION_CPU_USAGE_THRESHOLD_MAX["

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "]:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    aget v29, v29, v10

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 2101
    .end local v10    # "i":I
    .end local v24    # "thresholdJsonArray":Lorg/json/JSONArray;
    :cond_f
    const-string/jumbo v26, "name"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v28, "bg_detection_network_usage_threshold"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_10

    .line 2102
    const-string/jumbo v26, "value"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 2103
    .local v20, "netUsageJsonArray":Lorg/json/JSONArray;
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    sput v26, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_NETWORK_USAGE_THRESHOLD:I

    .line 2104
    const-string/jumbo v26, "OHPD"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "[OnlineConfig]BG_DETECTION_NETWORK_USAGE_THRESHOLD:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget v29, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_NETWORK_USAGE_THRESHOLD:I

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    .end local v20    # "netUsageJsonArray":Lorg/json/JSONArray;
    :cond_10
    const-string/jumbo v26, "name"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v28, "cpu_check_delay"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 2107
    const-string/jumbo v26, "value"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 2108
    .local v6, "delayJsonArray":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_a
    const/16 v26, 0x4

    move/from16 v0, v26

    if-ge v10, v0, :cond_11

    .line 2109
    sget-object v26, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    aput v28, v26, v10

    .line 2110
    const-string/jumbo v26, "OHPD"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "[OnlineConfig]CPU_CHECK_DELAY["

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "]:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    aget v29, v29, v10

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 2113
    .end local v6    # "delayJsonArray":Lorg/json/JSONArray;
    .end local v10    # "i":I
    :cond_11
    const-string/jumbo v26, "name"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v28, "cpu_min_check_duration"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 2114
    const-string/jumbo v26, "value"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 2115
    .local v19, "miuDurJsonArray":Lorg/json/JSONArray;
    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    sput v26, Lcom/android/server/am/ActivityManagerService;->CPU_MIN_CHECK_DURATION:I

    .line 2116
    const-string/jumbo v26, "OHPD"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "[OnlineConfig]CPU_MIN_CHECK_DURATION:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget v29, Lcom/android/server/am/ActivityManagerService;->CPU_MIN_CHECK_DURATION:I

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    .end local v19    # "miuDurJsonArray":Lorg/json/JSONArray;
    :cond_12
    const-string/jumbo v26, "name"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v28, "bg_detection_last_fg_threshold"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 2119
    const-string/jumbo v26, "value"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 2120
    .local v16, "lastFgJsonArray":Lorg/json/JSONArray;
    const/16 v26, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    sput v26, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I

    .line 2121
    const-string/jumbo v26, "OHPD"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "[OnlineConfig]APP_LAST_FOREGROUND_TIME_THRESHOLD: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget v29, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    .end local v16    # "lastFgJsonArray":Lorg/json/JSONArray;
    :cond_13
    const-string/jumbo v26, "name"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v28, "bg_detection_last_provider_threshold"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 2124
    const-string/jumbo v26, "value"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 2125
    .local v17, "lastProviderJsonArray":Lorg/json/JSONArray;
    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    sput v26, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD:I

    .line 2126
    const-string/jumbo v26, "OHPD"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "[OnlineConfig]APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget v29, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD:I

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    .end local v17    # "lastProviderJsonArray":Lorg/json/JSONArray;
    :cond_14
    const-string/jumbo v26, "name"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v28, "bg_detection_pd_usage_threshold"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_15

    .line 2129
    const-string/jumbo v26, "value"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    .line 2130
    .local v23, "pdUsgTholdJsonArray":Lorg/json/JSONArray;
    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    sput v26, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_USG_THOLD:I

    .line 2131
    const-string/jumbo v26, "OHPD"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "[OnlineConfig]POWER_DRAIN_USG_THOLD: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget v29, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_USG_THOLD:I

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    .end local v23    # "pdUsgTholdJsonArray":Lorg/json/JSONArray;
    :cond_15
    const-string/jumbo v26, "name"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v28, "bg_detection_pd_tempature_threshold"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 2134
    const-string/jumbo v26, "value"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    .line 2135
    .local v21, "pdTempTholdJsonArray":Lorg/json/JSONArray;
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    sput v26, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    .line 2136
    const-string/jumbo v26, "OHPD"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "[OnlineConfig]POWER_DRAIN_TEMP_THOLD: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget v29, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    .end local v21    # "pdTempTholdJsonArray":Lorg/json/JSONArray;
    :cond_16
    const-string/jumbo v26, "name"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v28, "bg_detection_pd_time_threshold"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 2139
    const-string/jumbo v26, "value"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 2140
    .local v22, "pdTimeTholdJsonArray":Lorg/json/JSONArray;
    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    sput v26, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TIME_THOLD:I

    .line 2141
    const-string/jumbo v26, "OHPD"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "[OnlineConfig]POWER_DRAIN_TIME_THOLD: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget v29, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TIME_THOLD:I

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    .end local v22    # "pdTimeTholdJsonArray":Lorg/json/JSONArray;
    :cond_17
    const-string/jumbo v26, "name"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v28, "bg_detection_pd_last_fg_threshold"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_18

    .line 2144
    const-string/jumbo v26, "value"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    .line 2145
    .restart local v21    # "pdTempTholdJsonArray":Lorg/json/JSONArray;
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    sput v26, Lcom/android/server/am/OnePlusHighPowerDetector;->PD_LAST_FG_TIME_THOLD:I

    .line 2146
    const-string/jumbo v26, "OHPD"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "[OnlineConfig]PD_LAST_FG_TIME_THOLD: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget v29, Lcom/android/server/am/OnePlusHighPowerDetector;->PD_LAST_FG_TIME_THOLD:I

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    .end local v21    # "pdTempTholdJsonArray":Lorg/json/JSONArray;
    :cond_18
    const-string/jumbo v26, "name"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v28, "bg_detection_set_kill_switch"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 2149
    const-string/jumbo v26, "value"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 2150
    .local v12, "jasonArray":Lorg/json/JSONArray;
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .line 2151
    .local v14, "killOn":Z
    const-string/jumbo v26, "persist.sys.ohpd.kcheck"

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 2152
    .local v5, "currStat":Z
    if-eq v14, v5, :cond_19

    .line 2153
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/am/OnePlusHighPowerDetector;->setKillMechanismState(Z)V

    .line 2155
    :cond_19
    const-string/jumbo v26, "OHPD"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "[OnlineConfig]set kill: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    .end local v5    # "currStat":Z
    .end local v12    # "jasonArray":Lorg/json/JSONArray;
    .end local v14    # "killOn":Z
    :cond_1a
    const-string/jumbo v26, "name"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v28, "native_detection_list"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1b

    .line 2158
    const-string/jumbo v26, "value"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 2159
    .restart local v12    # "jasonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->saveNativeMonitorList(Lorg/json/JSONArray;)V

    .line 2161
    .end local v12    # "jasonArray":Lorg/json/JSONArray;
    :cond_1b
    const-string/jumbo v26, "name"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v28, "bg_detection_app_cont_busy_time_thold"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1c

    .line 2162
    const-string/jumbo v26, "value"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 2163
    .local v2, "appBusyTimeTholdJsonArray":Lorg/json/JSONArray;
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    sput v26, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_CONT_BUSY_TIME_THOLD:I

    .line 2164
    const-string/jumbo v26, "OHPD"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "[OnlineConfig] APP_CONT_BUSY_TIME_THOLD: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget v29, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_CONT_BUSY_TIME_THOLD:I

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 2031
    .end local v2    # "appBusyTimeTholdJsonArray":Lorg/json/JSONArray;
    :cond_1c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .end local v13    # "json":Lorg/json/JSONObject;
    :cond_1d
    :try_start_10
    monitor-exit v27

    .line 2168
    const-string/jumbo v26, "OHPD"

    const-string/jumbo v27, "[OnlineConfig] BackgroundDetection updated complete"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_3

    .line 2171
    .end local v11    # "index":I
    :catch_1
    move-exception v7

    .line 2172
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v26, "OHPD"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private saveNativeMonitorList(Lorg/json/JSONArray;)V
    .locals 12
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 2179
    const/4 v3, 0x0

    .line 2180
    .local v3, "file":Ljava/io/File;
    const/4 v8, 0x0

    .line 2182
    .local v8, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string/jumbo v10, "/cache/nativeproc/proclist"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2183
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 2184
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 2186
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 2187
    new-instance v9, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2188
    .local v9, "writer":Ljava/io/BufferedWriter;
    const/4 v5, 0x0

    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .local v5, "i":I
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v5, v10, :cond_1

    .line 2189
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 2190
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v10, "daemon"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2191
    .local v0, "daemon":Ljava/lang/String;
    const-string/jumbo v10, "thold"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2192
    .local v7, "thold":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2193
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2188
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v0    # "daemon":Ljava/lang/String;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "thold":Ljava/lang/String;
    :cond_1
    move-object v8, v9

    .line 2200
    .end local v5    # "i":I
    .end local v9    # "writer":Ljava/io/BufferedWriter;
    :cond_2
    if-eqz v8, :cond_3

    .line 2202
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    :goto_1
    move-object v3, v4

    .line 2178
    .end local v4    # "file":Ljava/io/File;
    :cond_4
    :goto_2
    return-void

    .line 2203
    .restart local v4    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_1

    .line 2196
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v2

    .line 2197
    .end local v3    # "file":Ljava/io/File;
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string/jumbo v10, "OHPD"

    const-string/jumbo v11, "fail to save native monitor list to file "

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2200
    if-eqz v8, :cond_4

    .line 2202
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 2203
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 2199
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 2200
    :goto_4
    if-eqz v8, :cond_5

    .line 2202
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2199
    :cond_5
    :goto_5
    throw v10

    .line 2203
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 2199
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .local v3, "file":Ljava/io/File;
    goto :goto_4

    .end local v3    # "file":Ljava/io/File;
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "i":I
    .restart local v9    # "writer":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v10

    move-object v8, v9

    .end local v9    # "writer":Ljava/io/BufferedWriter;
    .local v8, "writer":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_4

    .line 2196
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "i":I
    .restart local v4    # "file":Ljava/io/File;
    .local v8, "writer":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_3

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "i":I
    .restart local v9    # "writer":Ljava/io/BufferedWriter;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v8, v9

    .end local v9    # "writer":Ljava/io/BufferedWriter;
    .local v8, "writer":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_3
.end method

.method private scheduleForceStopPkg(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1570
    :try_start_0
    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[BgDetect] scheduleForceStopPkg # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " user id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v3, 0xd6e0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1572
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1573
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 1574
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1568
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 1575
    :catch_0
    move-exception v0

    .line 1576
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error when scheduleForceStopPkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setKillMechanismState(Z)V
    .locals 3
    .param p1, "set"    # Z

    .prologue
    .line 371
    sput-boolean p1, Lcom/android/server/am/OnePlusHighPowerDetector;->mKillMechanism:Z

    .line 372
    const-string/jumbo v1, "persist.sys.ohpd.kcheck"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string/jumbo v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[BgDetect] mKillMechanism "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mKillMechanism:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void

    .line 372
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private skipCheck(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z
    .locals 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "curUptime"    # J
    .param p4, "level"    # I
    .param p5, "skipReason"    # Ljava/lang/StringBuffer;
    .param p6, "isBatteryDrain"    # Z
    .param p7, "lastFGTimeThold"    # I

    .prologue
    .line 1810
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInBlackExList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1811
    const/4 v8, 0x0

    return v8

    .line 1815
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInWhiteList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1816
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "white list pkg "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1817
    const/4 v8, 0x1

    return v8

    .line 1820
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInBlackList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1825
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string/jumbo v9, "com.android"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1826
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v9, "com.google.android.gms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1825
    if-nez v8, :cond_3

    .line 1827
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v9, "com.google.android.gsf"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1825
    if-nez v8, :cond_3

    .line 1828
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v9, "com.google.android.packageinstaller"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1825
    if-nez v8, :cond_3

    .line 1829
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v9, "com.google.android.webview"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1825
    if-nez v8, :cond_3

    .line 1830
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string/jumbo v9, "android.process"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 1825
    if-eqz v8, :cond_5

    .line 1831
    :cond_3
    const-string/jumbo v8, "important proc"

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1832
    const/4 v8, 0x1

    return v8

    .line 1820
    :cond_4
    const/4 v8, 0x2

    move/from16 v0, p4

    if-gt v0, v8, :cond_2

    iget v8, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v9, 0x190

    if-gt v8, v9, :cond_2

    iget v8, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_2

    .line 1821
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "small adj "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1822
    const/4 v8, 0x1

    return v8

    .line 1835
    :cond_5
    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastFgTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_6

    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastFgTime:J

    sub-long v8, p2, v8

    move/from16 v0, p7

    int-to-long v10, v0

    cmp-long v8, v8, v10

    if-gez v8, :cond_6

    .line 1836
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") due to just switch to bg "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p1, Lcom/android/server/am/ProcessRecord;->lastFgTime:J

    sub-long v10, p2, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ms ago , thold "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1837
    const/4 v8, 0x1

    return v8

    .line 1841
    :cond_6
    if-nez p4, :cond_7

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isAppBusyLongTime(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1842
    const-string/jumbo v8, "OHPD"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[BgDetect] skip provider/network check on app "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    const/4 v8, 0x0

    return v8

    .line 1847
    :cond_7
    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastContactProviderTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_8

    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastContactProviderTime:J

    sub-long v8, p2, v8

    sget v10, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_8

    .line 1848
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") due to just access contacts provider "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p1, Lcom/android/server/am/ProcessRecord;->lastContactProviderTime:J

    sub-long v10, p2, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ms ago"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1849
    const/4 v8, 0x1

    return v8

    .line 1852
    :cond_8
    iget v8, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v8}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    .line 1853
    .local v2, "curUsage":J
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->lastRxBytes:[J

    aget-wide v8, v8, p4

    sub-long v4, v2, v8

    .line 1854
    .local v4, "rxDiff":J
    sget v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_NETWORK_USAGE_THRESHOLD:I

    int-to-long v8, v8

    cmp-long v8, v4, v8

    if-lez v8, :cond_9

    .line 1855
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") due to net rx usage is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1856
    const/4 v8, 0x1

    return v8

    .line 1859
    :cond_9
    iget v8, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v8}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    .line 1860
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->lastTxBytes:[J

    aget-wide v8, v8, p4

    sub-long v6, v2, v8

    .line 1861
    .local v6, "txDiff":J
    sget v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_NETWORK_USAGE_THRESHOLD:I

    int-to-long v8, v8

    cmp-long v8, v6, v8

    if-lez v8, :cond_a

    .line 1862
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") due to net tx usage is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1863
    const/4 v8, 0x1

    return v8

    .line 1865
    :cond_a
    const/4 v8, 0x0

    return v8
.end method

.method private stopBgPowerHungryApp(Ljava/lang/String;IZ)V
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "powerLevel"    # I
    .param p3, "remove"    # Z

    .prologue
    .line 1744
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopBgPowerHungryApp +# pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", powerLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", remove="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 1745
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1746
    .local v2, "startTime":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1748
    .local v0, "callerUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    .line 1750
    const/4 v4, -0x2

    :try_start_0
    invoke-direct {p0, p1, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    .line 1751
    const-string/jumbo v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[BgDetect]- stopBgPowerHungryApp : pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " level "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1743
    :cond_0
    :goto_0
    return-void

    .line 1752
    :catch_0
    move-exception v1

    .line 1753
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateCpuThreshold(Ljava/lang/String;)V
    .locals 11
    .param p0, "thresh"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x4

    .line 385
    move-object v5, p0

    .line 386
    .local v5, "threshold":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 387
    const-string/jumbo v6, "persist.sys.ohpd.threshold"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 389
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCpuThreshold # thresh="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", threshold="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 390
    if-eqz v5, :cond_4

    .line 391
    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "items":[Ljava/lang/String;
    array-length v6, v2

    if-ne v6, v10, :cond_4

    .line 393
    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->sConfigLock:Ljava/lang/Object;

    monitor-enter v7

    .line 395
    :try_start_0
    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    const/high16 v8, 0x200000

    const/4 v9, 0x0

    aput v8, v6, v9

    .line 396
    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    aput v8, v6, v9

    .line 397
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v10, :cond_1

    .line 398
    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget-object v8, v2, v1

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v1

    .line 399
    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    add-int/lit8 v9, v1, -0x1

    aget v8, v8, v9

    aput v8, v6, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    const-string/jumbo v6, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateCpuThreshold # NumberFormatException : threshold="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    sget-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 406
    const-string/jumbo v4, ""

    .line 407
    .local v4, "min":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 408
    .local v3, "max":Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v10, :cond_2

    .line 409
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v8, v8, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 410
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    aget v8, v8, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 408
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 412
    :cond_2
    const-string/jumbo v6, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateCpuThreshold # min="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " max="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "i":I
    .end local v3    # "max":Ljava/lang/String;
    .end local v4    # "min":Ljava/lang/String;
    :cond_3
    monitor-exit v7

    .line 384
    .end local v2    # "items":[Ljava/lang/String;
    :cond_4
    return-void

    .line 393
    .restart local v2    # "items":[Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method


# virtual methods
.method addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V
    .locals 10
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "level"    # I
    .param p4, "locked"    # Z
    .param p5, "stopped"    # Z
    .param p6, "pid"    # I
    .param p7, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/ActivityManager$HighPowerApp;",
            ">;",
            "Ljava/lang/String;",
            "IZZII)V"
        }
    .end annotation

    .prologue
    .line 1376
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    monitor-enter p1

    .line 1378
    :try_start_0
    new-instance v1, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    move v3, p3

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;-><init>(Ljava/lang/String;IZZJII)V

    .line 1377
    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 1375
    return-void

    .line 1376
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public beginCpuStatistics()V
    .locals 2

    .prologue
    .line 1438
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OHPD"

    const-string/jumbo v1, "beginCpuStatistics"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1440
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWorkingForkedPidList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1441
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPendingRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1437
    return-void

    .line 1439
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public cancelBgDetectNotificationIfNeeded()V
    .locals 6

    .prologue
    .line 1541
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OHPD"

    const-string/jumbo v3, "cancelBgDetectNotificationIfNeeded"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v3, 0xd6dd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1544
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v3, 0xd6dd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1546
    :cond_1
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v3, 0xd6dd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1547
    .local v1, "msg":Landroid/os/Message;
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1540
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 1548
    :catch_0
    move-exception v0

    .line 1549
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "OHPD"

    const-string/jumbo v3, "Error when cancelBgDetectNotificationIfNeeded"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method checkBlackExList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1909
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInBlackExList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1910
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1911
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1914
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1912
    :cond_1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 1913
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1916
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method checkBlackList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1920
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInBlackList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1921
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "com.truecaller"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1926
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1922
    :cond_1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 1923
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1924
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method checkGmsList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1930
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1931
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    .line 1936
    const/4 v0, 0x0

    return v0

    .line 1932
    :cond_1
    if-eqz p1, :cond_0

    .line 1933
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1930
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method checkLevel0KillList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1952
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1953
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    .line 1958
    const/4 v0, 0x0

    return v0

    .line 1954
    :cond_1
    if-eqz p1, :cond_0

    .line 1955
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1952
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method checkProcExists(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z
    .locals 6
    .param p1, "currNotifyPkgKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/ActivityManager$HighPowerApp;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 683
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    .local p3, "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p4, "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    monitor-enter p2

    .line 684
    :try_start_0
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 686
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 687
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    .line 688
    .local v0, "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    iget v3, v0, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 689
    iget-object v3, v0, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 690
    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[BgDetect][Notification] cancel abort: running: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    :cond_1
    const/4 v3, 0x1

    monitor-exit p2

    return v3

    .line 696
    .end local v0    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    monitor-exit p2

    return v3

    .line 683
    .end local v2    # "pkg$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p2

    throw v3
.end method

.method checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1941
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1942
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    .line 1947
    const/4 v0, 0x0

    return v0

    .line 1943
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1944
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1941
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public doCpuStatistics(Lcom/android/internal/os/ProcessCpuTracker$Stats;)V
    .locals 10
    .param p1, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .prologue
    .line 1446
    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_1

    iget-wide v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1447
    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 1448
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1449
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 1450
    .local v1, "proc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    if-nez v1, :cond_2

    .line 1451
    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    new-instance v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget v5, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget v6, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v7, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v8, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v9, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWorkingForkedPidList:Ljava/util/ArrayList;

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1456
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "doCpuStatistics # forkedPid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 1445
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "proc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    :cond_1
    return-void

    .line 1453
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "proc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    :cond_2
    :try_start_1
    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v2, v4

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->addTime(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1447
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "proc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public finishCpuStatistics()V
    .locals 8

    .prologue
    .line 1462
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1463
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 1464
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "proc$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 1465
    .local v0, "proc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWorkingForkedPidList:Ljava/util/ArrayList;

    iget v6, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1466
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPendingRemoveList:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1463
    .end local v0    # "proc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .end local v1    # "proc$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1469
    .restart local v1    # "proc$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPendingRemoveList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "target$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1470
    .local v2, "target":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v2    # "target":Ljava/lang/String;
    :cond_2
    monitor-exit v5

    .line 1474
    .end local v1    # "proc$iterator":Ljava/util/Iterator;
    .end local v3    # "target$iterator":Ljava/util/Iterator;
    :cond_3
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "OHPD"

    const-string/jumbo v5, "finishCpuStatistics"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :cond_4
    return-void
.end method

.method public forceUpdateOnlineConfigImmediately()V
    .locals 3

    .prologue
    .line 2017
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->BACKGROUND_DETECTION_CONFIG_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2018
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->resolveBackgroundDetectionConfigFromJSON(Lorg/json/JSONArray;)V

    .line 2016
    return-void
.end method

.method public getBgMonitorMode()Z
    .locals 1

    .prologue
    .line 1582
    const/4 v0, 0x0

    return v0
.end method

.method public getBgPowerHungryList()Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$HighPowerApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1589
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 1590
    .local v20, "startTime":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1592
    .local v6, "callerUid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v23

    const/16 v24, 0x3e8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_24

    .line 1593
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1596
    .local v17, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$HighPowerApp;>;"
    :try_start_0
    sget-object v23, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "com_oneplus_systemui_recent_task_lockd_list"

    const/16 v25, -0x2

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 1597
    .local v14, "lockedStr":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/am/OnePlusHighPowerDetector;->parseLockedStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 1598
    .local v13, "lockedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .line 1599
    .local v19, "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1600
    .local v4, "addedPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 1602
    .local v18, "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-object v24, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v24
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1603
    sget-object v23, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "pr$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    .line 1604
    .local v15, "pr":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1605
    iget v0, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1602
    .end local v15    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v16    # "pr$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v23

    :try_start_2
    monitor-exit v24

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v23
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1722
    .end local v4    # "addedPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "lockedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "lockedStr":Ljava/lang/String;
    .end local v18    # "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v19    # "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 1723
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v23, "OHPD"

    const-string/jumbo v24, "[BgDetect] Error in getBgPowerHungryList"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1726
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v23, "OHPD"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "[BgDetect] getBgPowerHungryList result size "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1727
    const-string/jumbo v25, " in "

    .line 1726
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1727
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v20

    .line 1726
    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1727
    const-string/jumbo v25, " ms"

    .line 1726
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    sget-boolean v23, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v23, :cond_23

    .line 1729
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1730
    .local v22, "sz":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    move/from16 v0, v22

    if-ge v11, v0, :cond_23

    .line 1731
    const-string/jumbo v24, "OHPD"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "dump# "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v25, " pkg:"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/ActivityManager$HighPowerApp;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/ActivityManager$HighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v25, " powerLevel:"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/ActivityManager$HighPowerApp;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/app/ActivityManager$HighPowerApp;->powerLevel:I

    move/from16 v23, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v25, " uid "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/ActivityManager$HighPowerApp;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/app/ActivityManager$HighPowerApp;->uid:I

    move/from16 v23, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .end local v11    # "i":I
    .end local v22    # "sz":I
    .restart local v4    # "addedPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13    # "lockedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "lockedStr":Ljava/lang/String;
    .restart local v16    # "pr$iterator":Ljava/util/Iterator;
    .restart local v18    # "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v19    # "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    :try_start_3
    monitor-exit v24

    .line 1602
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v23

    if-lez v23, :cond_2

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1611
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "fproc$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 1612
    .local v9, "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    iget-object v0, v9, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1613
    iget v0, v9, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 1610
    .end local v9    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .end local v10    # "fproc$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v23

    :try_start_5
    monitor-exit v24

    throw v23

    .restart local v10    # "fproc$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v24

    .line 1618
    .end local v10    # "fproc$iterator":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1619
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;>;"
    :cond_3
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1620
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1621
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    .line 1622
    .local v5, "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->uid:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    const/16 v23, 0x1

    :goto_5
    move/from16 v0, v23

    iput-boolean v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->isLocked:Z

    .line 1623
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 1624
    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 1625
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1626
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    .line 1618
    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;>;"
    :catchall_2
    move-exception v23

    :try_start_7
    monitor-exit v24

    throw v23
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1622
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    .restart local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;>;"
    :cond_4
    const/16 v23, 0x0

    goto :goto_5

    .line 1628
    :cond_5
    :try_start_8
    sget-boolean v23, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v23, :cond_3

    const-string/jumbo v23, "OHPD"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "huge dead pid:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1631
    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_4

    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    :cond_7
    :try_start_9
    monitor-exit v24

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 1636
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_8
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 1637
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1638
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    .line 1639
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->uid:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    const/16 v23, 0x1

    :goto_7
    move/from16 v0, v23

    iput-boolean v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->isLocked:Z

    .line 1640
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 1641
    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 1642
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1643
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_6

    .line 1635
    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    :catchall_3
    move-exception v23

    :try_start_b
    monitor-exit v24

    throw v23
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 1639
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    :cond_9
    const/16 v23, 0x0

    goto :goto_7

    .line 1645
    :cond_a
    :try_start_c
    sget-boolean v23, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v23, :cond_8

    const-string/jumbo v23, "OHPD"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "high dead pid:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1648
    :cond_b
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto/16 :goto_6

    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    :cond_c
    :try_start_d
    monitor-exit v24

    .line 1652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 1653
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_d
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_12

    .line 1654
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1655
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    .line 1656
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->uid:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    const/16 v23, 0x1

    :goto_9
    move/from16 v0, v23

    iput-boolean v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->isLocked:Z

    .line 1657
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 1658
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 1665
    :cond_e
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_8

    .line 1652
    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    :catchall_4
    move-exception v23

    :try_start_f
    monitor-exit v24

    throw v23
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    .line 1656
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    :cond_f
    const/16 v23, 0x0

    goto :goto_9

    .line 1659
    :cond_10
    :try_start_10
    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 1660
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1662
    :cond_11
    sget-boolean v23, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v23, :cond_d

    const-string/jumbo v23, "OHPD"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "medium dead pid:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto/16 :goto_8

    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    :cond_12
    :try_start_11
    monitor-exit v24

    .line 1670
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    .line 1672
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_13
    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_17

    .line 1673
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1674
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    .line 1675
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->uid:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    const/16 v23, 0x1

    :goto_b
    move/from16 v0, v23

    iput-boolean v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->isLocked:Z

    .line 1676
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 1677
    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 1678
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1679
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    goto :goto_a

    .line 1671
    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    :catchall_5
    move-exception v23

    :try_start_13
    monitor-exit v24

    throw v23
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    .line 1675
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    :cond_14
    const/16 v23, 0x0

    goto :goto_b

    .line 1681
    :cond_15
    :try_start_14
    sget-boolean v23, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v23, :cond_13

    const-string/jumbo v23, "OHPD"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "huge dead pid:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1684
    :cond_16
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    goto/16 :goto_a

    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    :cond_17
    :try_start_15
    monitor-exit v24

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    .line 1689
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_18
    :goto_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 1690
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1691
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    .line 1692
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->uid:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_19

    const/16 v23, 0x1

    :goto_d
    move/from16 v0, v23

    iput-boolean v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->isLocked:Z

    .line 1693
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1b

    .line 1694
    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 1695
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1696
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    goto :goto_c

    .line 1688
    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    :catchall_6
    move-exception v23

    :try_start_17
    monitor-exit v24

    throw v23
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    .line 1692
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    :cond_19
    const/16 v23, 0x0

    goto :goto_d

    .line 1698
    :cond_1a
    :try_start_18
    sget-boolean v23, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v23, :cond_18

    const-string/jumbo v23, "OHPD"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "high dead pid:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1701
    :cond_1b
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    goto/16 :goto_c

    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    :cond_1c
    :try_start_19
    monitor-exit v24

    .line 1705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0

    .line 1706
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1d
    :goto_e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_22

    .line 1707
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1708
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    .line 1709
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->uid:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1f

    const/16 v23, 0x1

    :goto_f
    move/from16 v0, v23

    iput-boolean v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->isLocked:Z

    .line 1710
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1e

    .line 1711
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_20

    .line 1718
    :cond_1e
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    goto :goto_e

    .line 1705
    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    :catchall_7
    move-exception v23

    :try_start_1b
    monitor-exit v24

    throw v23
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0

    .line 1709
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    :cond_1f
    const/16 v23, 0x0

    goto :goto_f

    .line 1712
    :cond_20
    :try_start_1c
    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_21

    .line 1713
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1715
    :cond_21
    sget-boolean v23, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v23, :cond_1d

    const-string/jumbo v23, "OHPD"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "medium dead pid:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    goto/16 :goto_e

    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    :cond_22
    :try_start_1d
    monitor-exit v24
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_0

    goto/16 :goto_1

    .line 1734
    .end local v4    # "addedPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;>;"
    .end local v13    # "lockedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "lockedStr":Ljava/lang/String;
    .end local v16    # "pr$iterator":Ljava/util/Iterator;
    .end local v18    # "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v19    # "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_23
    return-object v17

    .line 1736
    .end local v17    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$HighPowerApp;>;"
    :cond_24
    const/16 v23, 0x0

    return-object v23
.end method

.method getDeviceTemp()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1409
    const/16 v4, 0xa

    :try_start_0
    new-array v0, v4, [C

    .line 1410
    .local v0, "buffer":[C
    new-instance v2, Ljava/io/FileReader;

    const-string/jumbo v4, "/sys/class/thermal/thermal_zone27/temp"

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1412
    .local v2, "file":Ljava/io/FileReader;
    const/4 v4, 0x0

    const/16 v5, 0xa

    :try_start_1
    invoke-virtual {v2, v0, v4, v5}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 1413
    .local v3, "len":I
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 1415
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 1413
    return v4

    .line 1414
    .end local v3    # "len":I
    :catchall_0
    move-exception v4

    .line 1415
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 1414
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1417
    .end local v0    # "buffer":[C
    .end local v2    # "file":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 1418
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "OHPD"

    const-string/jumbo v5, "Can\'t get device temp w /sys/class/thermal/thermal_zone27/temp"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    return v6
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 56
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage # msg.what="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 437
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 439
    :pswitch_0
    sget v4, Lcom/android/server/am/ActivityManagerService;->CPU_MIN_CHECK_DURATION:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkExcessiveCpuUsageLocked(II)I

    move-result v48

    .line 440
    .local v48, "result":I
    if-nez v48, :cond_0

    .line 441
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 442
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v8, 0xd6d8

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 443
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v8, 0xd6d8

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v39

    .line 444
    .local v39, "nmsg":Landroid/os/Message;
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    int-to-long v8, v8

    move-object/from16 v0, v39

    invoke-virtual {v4, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 441
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    .end local v39    # "nmsg":Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 449
    .end local v48    # "result":I
    :pswitch_1
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkExcessiveCpuUsageLocked(II)I

    move-result v48

    .line 450
    .restart local v48    # "result":I
    if-nez v48, :cond_0

    .line 451
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 452
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v8, 0xd6d9

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 453
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v8, 0xd6d9

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v39

    .line 454
    .restart local v39    # "nmsg":Landroid/os/Message;
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    int-to-long v8, v8

    move-object/from16 v0, v39

    invoke-virtual {v4, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v5

    .line 451
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    .end local v39    # "nmsg":Landroid/os/Message;
    :catchall_1
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 459
    .end local v48    # "result":I
    :pswitch_2
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkExcessiveCpuUsageLocked(II)I

    move-result v48

    .line 460
    .restart local v48    # "result":I
    if-nez v48, :cond_0

    .line 461
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 462
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v8, 0xd6da

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 463
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v8, 0xd6da

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v39

    .line 464
    .restart local v39    # "nmsg":Landroid/os/Message;
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    int-to-long v8, v8

    move-object/from16 v0, v39

    invoke-virtual {v4, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v5

    .line 461
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v39    # "nmsg":Landroid/os/Message;
    :catchall_2
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 469
    .end local v48    # "result":I
    :pswitch_3
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkExcessiveCpuUsageLocked(II)I

    move-result v48

    .line 470
    .restart local v48    # "result":I
    if-nez v48, :cond_0

    .line 471
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 472
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v8, 0xd6de

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 473
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v8, 0xd6de

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v39

    .line 474
    .restart local v39    # "nmsg":Landroid/os/Message;
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    int-to-long v8, v8

    move-object/from16 v0, v39

    invoke-virtual {v4, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v5

    .line 471
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v39    # "nmsg":Landroid/os/Message;
    :catchall_3
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 480
    .end local v48    # "result":I
    :pswitch_4
    :try_start_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v54, v0

    check-cast v54, Ljava/lang/String;

    .line 481
    .local v54, "triggerPkgName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v55, v0

    .line 482
    .local v55, "userId":I
    if-nez v54, :cond_1

    return-void

    .line 484
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    .line 486
    .local v32, "curTime":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    .line 487
    .local v53, "triggerKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 488
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    .line 489
    .local v40, "lastNotifyTime":J
    sub-long v4, v32, v40

    sget-wide v8, Lcom/android/server/am/OnePlusHighPowerDetector;->NOTIFY_INTERVAL:J

    cmp-long v4, v4, v8

    if-gez v4, :cond_3

    .line 490
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Notification # too short time to notify: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v8, v32, v40

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_2
    return-void

    .line 494
    .end local v40    # "lastNotifyTime":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 496
    const/16 v45, 0x0

    .line 498
    .local v45, "pkgLabel":Ljava/lang/String;
    :try_start_5
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v30

    .line 499
    .local v30, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v30, :cond_4

    .line 500
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object/from16 v45, v0

    .line 502
    .end local v45    # "pkgLabel":Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v55

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v45

    .line 506
    .end local v30    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    if-eqz v45, :cond_5

    :try_start_6
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_6

    .line 507
    :cond_5
    const-string/jumbo v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect] error: cannot get pkg label : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return-void

    .line 503
    :catch_0
    move-exception v34

    .line 504
    .local v34, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "OHPD"

    const-string/jumbo v5, "get highpower pkg label error"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 569
    .end local v32    # "curTime":J
    .end local v34    # "e":Ljava/lang/Exception;
    .end local v53    # "triggerKey":Ljava/lang/String;
    .end local v54    # "triggerPkgName":Ljava/lang/String;
    .end local v55    # "userId":I
    :catch_1
    move-exception v34

    .line 570
    .restart local v34    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "OHPD"

    const-string/jumbo v5, "Error posting power intensive notification"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 511
    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v32    # "curTime":J
    .restart local v53    # "triggerKey":Ljava/lang/String;
    .restart local v54    # "triggerPkgName":Ljava/lang/String;
    .restart local v55    # "userId":I
    :cond_6
    :try_start_7
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const v5, 0x50a002f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v52

    .line 512
    .local v52, "title":Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const v5, 0x50a002e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 513
    .local v31, "content":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v4, :cond_7

    .line 514
    const-string/jumbo v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Notification # title:84541487 "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v52

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const-string/jumbo v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Notification # content:84541486 "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const-string/jumbo v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Notification # triggerPkgName:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ",pkgLabel:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 523
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "classname"

    const-string/jumbo v5, "com.android.settings.fuelgauge.PowerUsageSummary"

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    new-instance v51, Landroid/content/Intent;

    const-string/jumbo v4, "com.oem.intent.action.force_stop_pkg"

    move-object/from16 v0, v51

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .local v51, "stopIntent":Landroid/content/Intent;
    const-string/jumbo v4, "pkg"

    move-object/from16 v0, v51

    move-object/from16 v1, v54

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    const-string/jumbo v4, "userid"

    move-object/from16 v0, v51

    move/from16 v1, v55

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 531
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    .line 532
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 531
    const/4 v8, 0x0

    .line 532
    const/high16 v9, 0x8000000

    .line 531
    move-object/from16 v0, v51

    invoke-static {v4, v8, v0, v9, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v43

    .line 535
    .local v43, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification$Action$Builder;

    .line 536
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const v8, 0x50a0035

    invoke-virtual {v5, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 535
    const v8, 0x108032b

    move-object/from16 v0, v43

    invoke-direct {v4, v8, v5, v0}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v28

    .line 539
    .local v28, "action":Landroid/app/Notification$Action;
    new-instance v4, Landroid/app/Notification$Builder;

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 540
    const v5, 0x108008a

    .line 539
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 548
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const v8, 0x106005b

    invoke-virtual {v5, v8}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 539
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 552
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    .line 554
    new-instance v9, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-direct {v9, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 552
    const/4 v5, 0x0

    .line 553
    const/high16 v7, 0x8000000

    const/4 v8, 0x0

    .line 552
    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 539
    invoke-virtual {v10, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 555
    const/4 v5, 0x1

    .line 539
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 556
    const/4 v5, 0x1

    .line 539
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    .line 560
    .local v12, "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    new-array v13, v4, [I

    .line 561
    .local v13, "outId":[I
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v7

    .line 562
    .local v7, "inm":Landroid/app/INotificationManager;
    const-string/jumbo v8, "android"

    const-string/jumbo v9, "android"

    .line 564
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    .line 562
    const/4 v10, 0x0

    .line 563
    const v11, 0x50a002e

    .line 562
    invoke-interface/range {v7 .. v14}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 566
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKeySet:Ljava/util/HashSet;

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 567
    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    .line 568
    const-string/jumbo v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect][Notification] notify for pkg "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " pid "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " userId "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v55

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 576
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "inm":Landroid/app/INotificationManager;
    .end local v12    # "notification":Landroid/app/Notification;
    .end local v13    # "outId":[I
    .end local v28    # "action":Landroid/app/Notification$Action;
    .end local v31    # "content":Ljava/lang/String;
    .end local v32    # "curTime":J
    .end local v43    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v51    # "stopIntent":Landroid/content/Intent;
    .end local v52    # "title":Ljava/lang/String;
    .end local v53    # "triggerKey":Ljava/lang/String;
    .end local v54    # "triggerPkgName":Ljava/lang/String;
    .end local v55    # "userId":I
    :pswitch_5
    :try_start_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/lang/String;

    .line 577
    .local v44, "pkg":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->cleanUpWhenPkgRemoved(Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 578
    .end local v44    # "pkg":Ljava/lang/String;
    :catch_2
    move-exception v34

    .line 579
    .restart local v34    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "OHPD"

    const-string/jumbo v5, "Error when clean up package removed record"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 587
    .end local v34    # "e":Ljava/lang/Exception;
    :pswitch_6
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 588
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 626
    :cond_8
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v7

    .line 627
    .restart local v7    # "inm":Landroid/app/INotificationManager;
    const-string/jumbo v4, "android"

    invoke-interface {v7, v4}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v29

    .line 628
    .local v29, "activeList":[Landroid/service/notification/StatusBarNotification;
    if-eqz v29, :cond_9

    move-object/from16 v0, v29

    array-length v4, v0

    const/4 v5, 0x1

    if-ge v4, v5, :cond_14

    .line 629
    :cond_9
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v4, :cond_a

    const-string/jumbo v4, "OHPD"

    const-string/jumbo v5, "[BgDetect][Notification] activeList null"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_a
    return-void

    .line 590
    .end local v7    # "inm":Landroid/app/INotificationManager;
    .end local v29    # "activeList":[Landroid/service/notification/StatusBarNotification;
    :cond_b
    new-instance v50, Ljava/util/HashSet;

    invoke-direct/range {v50 .. v50}, Ljava/util/HashSet;-><init>()V

    .line 591
    .local v50, "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v49, Ljava/util/HashSet;

    invoke-direct/range {v49 .. v49}, Ljava/util/HashSet;-><init>()V

    .line 592
    .local v49, "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 593
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v47

    .local v47, "pr$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/am/ProcessRecord;

    .line 594
    .local v46, "pr":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 595
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_2

    .line 592
    .end local v46    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v47    # "pr$iterator":Ljava/util/Iterator;
    :catchall_4
    move-exception v4

    :try_start_b
    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 646
    .end local v49    # "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v50    # "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_3
    move-exception v34

    .line 647
    .restart local v34    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "OHPD"

    .line 648
    const-string/jumbo v5, "[BgDetect] cancel notification fail"

    .line 647
    move-object/from16 v0, v34

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v47    # "pr$iterator":Ljava/util/Iterator;
    .restart local v49    # "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v50    # "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_c
    :try_start_c
    monitor-exit v5

    .line 592
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 598
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_e

    .line 599
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 600
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v36

    .local v36, "fproc$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 601
    .local v35, "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 602
    move-object/from16 v0, v35

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_3

    .line 599
    .end local v35    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .end local v36    # "fproc$iterator":Ljava/util/Iterator;
    :catchall_5
    move-exception v4

    :try_start_e
    monitor-exit v5

    throw v4

    .restart local v36    # "fproc$iterator":Ljava/util/Iterator;
    :cond_d
    monitor-exit v5

    .line 606
    .end local v36    # "fproc$iterator":Ljava/util/Iterator;
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v49

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkProcExists(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 607
    return-void

    .line 609
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v49

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkProcExists(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 610
    return-void

    .line 612
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v49

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkProcExists(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 613
    return-void

    .line 615
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v49

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkProcExists(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 616
    return-void

    .line 618
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v49

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkProcExists(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 619
    return-void

    .line 621
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v49

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkProcExists(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 622
    return-void

    .line 632
    .end local v47    # "pr$iterator":Ljava/util/Iterator;
    .end local v49    # "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v50    # "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v7    # "inm":Landroid/app/INotificationManager;
    .restart local v29    # "activeList":[Landroid/service/notification/StatusBarNotification;
    :cond_14
    const/4 v4, 0x0

    move-object/from16 v0, v29

    array-length v5, v0

    :goto_4
    if-ge v4, v5, :cond_0

    aget-object v42, v29, v4

    .line 633
    .local v42, "noti":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v42 .. v42}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    const v9, 0x50a002e

    if-ne v8, v9, :cond_16

    .line 634
    const-string/jumbo v4, "OHPD"

    const-string/jumbo v5, "[BgDetect][Notification] notification exists, cancel it"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const-string/jumbo v4, "android"

    .line 636
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 635
    const/4 v8, 0x0

    .line 636
    const v9, 0x50a002e

    .line 635
    invoke-interface {v7, v4, v8, v9, v5}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    .line 638
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKeySet:Ljava/util/HashSet;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .local v38, "key$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 639
    .local v37, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    sget-wide v8, Lcom/android/server/am/OnePlusHighPowerDetector;->NOTIFY_INTERVAL:J

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 641
    .end local v37    # "key":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKeySet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 642
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_0

    .line 632
    .end local v38    # "key$iterator":Ljava/util/Iterator;
    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 653
    .end local v7    # "inm":Landroid/app/INotificationManager;
    .end local v29    # "activeList":[Landroid/service/notification/StatusBarNotification;
    .end local v42    # "noti":Landroid/service/notification/StatusBarNotification;
    :pswitch_7
    :try_start_f
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v4, "android.oem.bugreport.power_event"

    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 654
    .restart local v6    # "intent":Landroid/content/Intent;
    sget-object v14, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v15, "android"

    const/16 v16, 0x3e8

    .line 655
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v17, v6

    .line 654
    invoke-virtual/range {v14 .. v27}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZI)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_0

    .line 656
    .end local v6    # "intent":Landroid/content/Intent;
    :catch_4
    move-exception v34

    .line 657
    .restart local v34    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "OHPD"

    const-string/jumbo v5, "[BgDetect] Error when send boradcast to nofity PD event"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 663
    .end local v34    # "e":Ljava/lang/Exception;
    :pswitch_8
    :try_start_10
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v7

    .line 664
    .restart local v7    # "inm":Landroid/app/INotificationManager;
    const-string/jumbo v4, "android"

    .line 665
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 664
    const/4 v8, 0x0

    .line 665
    const v9, 0x50a002e

    .line 664
    invoke-interface {v7, v4, v8, v9, v5}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    .line 670
    .end local v7    # "inm":Landroid/app/INotificationManager;
    :goto_6
    :try_start_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/lang/String;

    .line 671
    .restart local v44    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v55, v0

    .line 672
    .restart local v55    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v55

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    goto/16 :goto_0

    .line 673
    .end local v44    # "pkg":Ljava/lang/String;
    .end local v55    # "userId":I
    :catch_5
    move-exception v34

    .line 674
    .restart local v34    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "OHPD"

    const-string/jumbo v5, "[BgDetect] Error when force stop pkg"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 666
    .end local v34    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v34

    .line 667
    .restart local v34    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "OHPD"

    const-string/jumbo v5, "[BgDetect] Error when cancel notification"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 437
    nop

    :pswitch_data_0
    .packed-switch 0xd6d8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method hasSystemFlag(I)Z
    .locals 2
    .param p1, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 701
    and-int/lit16 v1, p1, 0x81

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public initOnlineConfig()V
    .locals 5

    .prologue
    .line 378
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    .line 379
    new-instance v3, Lcom/android/server/am/OnePlusHighPowerDetector$BackgroundDetectionConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusHighPowerDetector$BackgroundDetectionConfigUpdater;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->BACKGROUND_DETECTION_CONFIG_NAME:Ljava/lang/String;

    .line 378
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBackgroundDetectionConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 380
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBackgroundDetectionConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 376
    return-void
.end method

.method isForkedProcInWhiteList(Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;)Z
    .locals 3
    .param p1, "pr"    # Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .prologue
    .line 1879
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1880
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    .line 1885
    const/4 v0, 0x0

    return v0

    .line 1881
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1882
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1879
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method isProcInBlackExList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "pr"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1899
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1900
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    .line 1905
    const/4 v0, 0x0

    return v0

    .line 1901
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1902
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1899
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method isProcInBlackList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "pr"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1889
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1890
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    .line 1895
    const/4 v0, 0x0

    return v0

    .line 1891
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1892
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1889
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method isProcInWhiteList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "pr"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1869
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1870
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    .line 1875
    const/4 v0, 0x0

    return v0

    .line 1871
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1872
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1869
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method isProviderBoundByFG(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "level"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1383
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    if-eqz v6, :cond_3

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 1384
    const/4 v2, 0x0

    .local v2, "conni":I
    :goto_0
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 1385
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord;

    .line 1386
    .local v0, "c":Lcom/android/server/am/ContentProviderRecord;
    const/4 v5, 0x0

    .line 1387
    .local v5, "sr":Lcom/android/server/am/ContentProviderConnection;
    iget-object v6, v0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v5    # "sr":Lcom/android/server/am/ContentProviderConnection;
    .local v4, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1389
    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ContentProviderConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1393
    .local v5, "sr":Lcom/android/server/am/ContentProviderConnection;
    if-eqz v5, :cond_0

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, v5, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v6, v7, :cond_0

    .line 1394
    iget-object v1, v5, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 1395
    .local v1, "client":Lcom/android/server/am/ProcessRecord;
    iget v6, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 1396
    iget v6, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v6, v9, :cond_0

    .line 1397
    :cond_1
    const-string/jumbo v6, "OHPD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect] skip "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", bound by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " level "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    return v9

    .line 1390
    .end local v1    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "sr":Lcom/android/server/am/ContentProviderConnection;
    :catch_0
    move-exception v3

    .line 1384
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1404
    .end local v0    # "c":Lcom/android/server/am/ContentProviderRecord;
    .end local v2    # "conni":I
    .end local v4    # "it":Ljava/util/Iterator;
    :cond_3
    return v8
.end method

.method needCheckProc(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "level"    # I

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xa

    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 705
    packed-switch p2, :pswitch_data_0

    .line 720
    return v1

    .line 709
    :pswitch_0
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ge v2, v5, :cond_0

    .line 710
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v2, v4, :cond_1

    .line 709
    :cond_0
    :goto_0
    return v0

    .line 711
    :cond_1
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 713
    :pswitch_1
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ge v2, v5, :cond_2

    .line 714
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v2, v4, :cond_3

    .line 713
    :cond_2
    :goto_1
    return v0

    .line 715
    :cond_3
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-eq v2, v3, :cond_2

    .line 716
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 717
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    .line 718
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    move v0, v1

    goto :goto_1

    .line 705
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public postProcessOfForceStop(Ljava/lang/String;I)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1479
    const/16 v4, 0x3e7

    if-eq p2, v4, :cond_4

    .line 1480
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1481
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1482
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :try_start_2
    monitor-exit v5

    .line 1485
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1486
    :try_start_3
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1487
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    :try_start_4
    monitor-exit v5

    .line 1490
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1491
    :try_start_5
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1492
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_2
    :try_start_6
    monitor-exit v5

    .line 1513
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1514
    :try_start_7
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    if-eqz v4, :cond_8

    .line 1515
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;>;>;"
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1516
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1517
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 1518
    .local v0, "app":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_3

    .line 1519
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 1513
    .end local v0    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;>;>;"
    :catchall_0
    move-exception v4

    :try_start_8
    monitor-exit v5

    throw v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 1524
    :catch_0
    move-exception v1

    .line 1525
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[BgDetect] postProcessOfForceStop err with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1477
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 1480
    :catchall_1
    move-exception v4

    :try_start_9
    monitor-exit v5

    throw v4

    .line 1485
    :catchall_2
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1490
    :catchall_3
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1496
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 1497
    :try_start_a
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1498
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :cond_5
    :try_start_b
    monitor-exit v5

    .line 1501
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 1502
    :try_start_c
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1503
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_6
    :try_start_d
    monitor-exit v5

    .line 1506
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 1507
    :try_start_e
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1508
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :cond_7
    :try_start_f
    monitor-exit v5

    goto/16 :goto_0

    .line 1496
    :catchall_4
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1501
    :catchall_5
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1506
    :catchall_6
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_8
    monitor-exit v5
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    goto :goto_2
.end method

.method public setBgMonitorMode(Z)V
    .locals 0
    .param p1, "auto"    # Z

    .prologue
    .line 1585
    return-void
.end method

.method public startMonitor()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 422
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v2, 0xd6d8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 423
    .local v0, "nmsg":Landroid/os/Message;
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 424
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v2, 0xd6d9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 425
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    aget v2, v2, v4

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 426
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v2, 0xd6da

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 427
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 428
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v2, 0xd6de

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 429
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 430
    const-string/jumbo v1, "OHPD"

    const-string/jumbo v2, "[BgDetect] startMonitor # queue CHECK_EXCESSIVE_CPU MSGs"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBgDetectStartMonitoring:Z

    .line 419
    return-void
.end method

.method public stopBgPowerHungryApp(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "powerLevel"    # I

    .prologue
    .line 1740
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->stopBgPowerHungryApp(Ljava/lang/String;IZ)V

    .line 1739
    return-void
.end method

.method updateProcUsg(Lcom/android/server/am/ProcessRecord;I)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "level"    # I

    .prologue
    .line 1424
    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    iput-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    .line 1425
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    aput-wide v2, v0, p2

    .line 1426
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->lastRxBytes:[J

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    aput-wide v2, v0, p2

    .line 1427
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->lastTxBytes:[J

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    aput-wide v2, v0, p2

    .line 1423
    return-void
.end method

.method updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V
    .locals 1
    .param p2, "uid"    # I
    .param p3, "skipReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1432
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1433
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    :cond_0
    return-void
.end method
