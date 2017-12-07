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

.field private static final DEVICE_TEMP_PATH:Ljava/lang/String; = "/sys/class/thermal/thermal_zone5/temp"

.field public static ENABLE:Z = false

.field public static final FORCE_STOP_PKG_MSG:I = 0xd6e0

.field public static final GLOBAL_FLAG_SETTED_SIM_COUNTRY:I = 0x1

.field static final MILLIS_PER_DAY:J = 0x5265c00L

.field static final MILLIS_PER_HOUR:J = 0x36ee80L

.field static final MODE_MSGS:[I

.field static NOTIFY_INTERVAL:J = 0x0L

.field public static final NUM_CPU_MONITOR_LEVELS:I = 0x4

.field static ONLINE_CONFIG:Z = false

.field static PD_LAST_FG_TIME_THOLD:I = 0x0

.field public static final POST_CUSTOMIZED_NOTIFICATION_MSG:I = 0xd6db

.field static POWER_DRAIN_TEMP_THOLD:I = 0x0

.field static POWER_DRAIN_USG_THOLD:I = 0x0

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.ohpd.debug"

.field private static final PROP_DEBUG_BG_USAGE_QUICK:Ljava/lang/String; = "persist.sys.ohpd.debug.bg"

.field private static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.ohpd.enable"

.field private static final PROP_FLAGS:Ljava/lang/String; = "persist.sys.ohpd.flags"

.field private static final PROP_KILL_ON:Ljava/lang/String; = "persist.sys.ohpd.kcheck"

.field private static final PROP_NOTIFY_INTERVAL:Ljava/lang/String; = "persist.sys.ohpd.notify"

.field private static final PROP_ONLINE_CONFIG:Ljava/lang/String; = "persist.sys.ohpd.onlineconfig"

.field private static final PROP_POWER_DRAIN_LAST_FG_THOLD:Ljava/lang/String; = "persist.sys.ohpd.pd.lastfg"

.field private static final PROP_POWER_DRAIN_TEMP_THOLD:Ljava/lang/String; = "persist.sys.ohpd.pd.temp.thold"

.field private static final PROP_POWER_DRAIN_USG_THOLD:Ljava/lang/String; = "persist.sys.ohpd.pd.usg.thold"

.field private static final PROP_SIM_COUNTRY:Ljava/lang/String; = "gsm.sim.operator.iso-country"

.field private static final PROP_THRESHOLD:Ljava/lang/String; = "persist.sys.ohpd.threshold"

.field private static final RECENT_TASK_LOCKED_LIST:Ljava/lang/String; = "com_oneplus_systemui_recent_task_lockd_list"

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final TAG:Ljava/lang/String; = "OHPD"

.field public static final VERSION:I = 0x103b975

.field private static mAms:Lcom/android/server/am/ActivityManagerService;

.field private static mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

.field private static mContext:Landroid/content/Context;

.field private static mGlobalFlags:I

.field private static mHandler:Landroid/os/Handler;

.field private static mKillMechanism:Z

.field private static mRegion:Ljava/lang/String;

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

.field mCurNotifyPkgName:Ljava/lang/String;

.field mCurNotifyPkgNameSet:Ljava/util/HashSet;
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

.field mLastBatteryDropTime:J

.field mLastBatteryPercent:I

.field mLastBgDetectCleanUpTime:J

.field mLastCpuCheckUptime:[J

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

.method static synthetic -wrap0(Lcom/android/server/am/OnePlusHighPowerDetector;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->responseSIMStateChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "triggerPkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/am/OnePlusHighPowerDetector;Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->resolveBackgroundDetectionConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->scheduleForceStopPkg(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v2, 0x12c

    const/16 v1, 0x3c

    const/16 v3, 0x14

    const/4 v6, 0x0

    .line 96
    sput-boolean v7, Lcom/android/server/am/OnePlusHighPowerDetector;->ENABLE:Z

    .line 97
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    .line 117
    const-string/jumbo v0, "persist.sys.ohpd.debug.bg"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

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

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->ONLINE_CONFIG:Z

    .line 137
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I

    .line 139
    const v0, 0xdbba00

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->PD_LAST_FG_TIME_THOLD:I

    .line 140
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD:I

    .line 141
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_2
    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_CONT_BUSY_TIME_THOLD:I

    .line 145
    const/4 v0, 0x4

    new-array v4, v0, [I

    .line 146
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    mul-int/lit16 v0, v0, 0x3e8

    aput v0, v4, v6

    .line 147
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v0, :cond_4

    :goto_4
    mul-int/lit16 v0, v1, 0x3e8

    aput v0, v4, v7

    .line 148
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v0, :cond_5

    const/16 v0, 0x78

    :goto_5
    mul-int/lit16 v0, v0, 0x3e8

    const/4 v1, 0x2

    aput v0, v4, v1

    .line 149
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x78

    :goto_6
    mul-int/lit16 v0, v0, 0x3e8

    const/4 v1, 0x3

    aput v0, v4, v1

    .line 145
    sput-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    .line 152
    const v0, 0xd6d8

    .line 153
    const v1, 0xd6d9

    .line 154
    const v2, 0xd6da

    .line 155
    const v4, 0xd6de

    .line 151
    filled-new-array {v0, v1, v2, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->MODE_MSGS:[I

    .line 159
    const/16 v0, 0x3e8

    const/16 v1, 0xf

    const/16 v2, 0x3e8

    filled-new-array {v0, v3, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    .line 160
    const/16 v0, 0xf

    const/16 v1, 0xa

    filled-new-array {v3, v0, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    .line 161
    const/high16 v0, 0x1400000

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_NETWORK_USAGE_THRESHOLD:I

    .line 163
    const/4 v0, 0x5

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_USG_THOLD:I

    .line 165
    const/16 v0, 0x2c

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    .line 173
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->sConfigLock:Ljava/lang/Object;

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->sBattUpdteLock:Ljava/lang/Object;

    .line 208
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mRegion:Ljava/lang/String;

    .line 209
    sput v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mGlobalFlags:I

    .line 210
    sput-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mKillMechanism:Z

    .line 227
    const-string/jumbo v0, "BackgroundDetection"

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->BACKGROUND_DETECTION_CONFIG_NAME:Ljava/lang/String;

    .line 94
    return-void

    :cond_0
    move v0, v2

    .line 137
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 140
    goto/16 :goto_1

    :cond_2
    move v0, v3

    .line 141
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 146
    goto :goto_3

    :cond_4
    move v1, v2

    .line 147
    goto :goto_4

    .line 148
    :cond_5
    const/16 v0, 0x258

    goto :goto_5

    .line 149
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

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-wide v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBgDetectCleanUpTime:J

    .line 186
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCpuCheckUptime:[J

    .line 194
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBgDetectStartMonitoring:Z

    .line 195
    iput v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryPercent:I

    .line 196
    iput-wide v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryDropTime:J

    .line 197
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsPowerDrain:Z

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgName:Ljava/lang/String;

    .line 211
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgNameSet:Ljava/util/HashSet;

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWorkingForkedPidList:Ljava/util/ArrayList;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPendingRemoveList:Ljava/util/ArrayList;

    .line 288
    new-instance v0, Lcom/android/server/am/OnePlusHighPowerDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusHighPowerDetector$1;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    .line 239
    const-string/jumbo v0, "persist.sys.ohpd.enable"

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->ENABLE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->ENABLE:Z

    .line 240
    const-string/jumbo v0, "persist.sys.ohpd.debug"

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    .line 242
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->ENABLE:Z

    if-nez v0, :cond_0

    .line 243
    const-string/jumbo v0, "OHPD"

    const-string/jumbo v1, "disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 246
    :cond_0
    const-string/jumbo v0, "OnePlusHighPowerDetector--constructor"

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 247
    sput-object p1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 248
    sput-object p2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    .line 249
    sput-object p3, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    .line 250
    sput-object p4, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 253
    new-instance v0, Lcom/android/server/SystemEventCollector;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "HighPowerDetector"

    invoke-direct {v0, v1, v2}, Lcom/android/server/SystemEventCollector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerEventCollector:Lcom/android/server/SystemEventCollector;

    .line 256
    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->init()V

    .line 238
    return-void
.end method

.method private checkExcessiveCpuUsageLocked(II)I
    .locals 76
    .param p1, "level"    # I
    .param p2, "minCheckDuration"    # I

    .prologue
    .line 750
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

    .line 751
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v62

    .line 754
    .local v62, "startTime":J
    const/16 v39, 0x1

    .line 756
    .local v39, "doCpuKills":Z
    const/4 v10, 0x0

    .line 757
    .local v10, "isBatteryDrain":Z
    const/16 v57, 0x0

    .line 758
    .local v57, "numOfAbnormal":I
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 762
    .local v29, "blackExUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v65, Ljava/util/ArrayList;

    invoke-direct/range {v65 .. v65}, Ljava/util/ArrayList;-><init>()V

    .line 766
    .local v65, "stopAppNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 768
    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 770
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v61

    .line 771
    .local v61, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCpuCheckUptime:[J

    aget-wide v12, v4, p1

    const-wide/16 v22, 0x0

    cmp-long v4, v12, v22

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/16 v11, 0xe

    const/4 v12, 0x0

    aput v11, v4, v12

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 774
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 775
    .local v6, "curUptime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCpuCheckUptime:[J

    aget-wide v12, v4, p1

    sub-long v14, v6, v12

    .line 777
    .local v14, "uptimeSince":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v36

    .line 778
    .local v36, "currentElapsedTime":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBgDetectCleanUpTime:J

    const-wide/16 v22, 0x0

    cmp-long v4, v12, v22

    if-nez v4, :cond_3

    .line 779
    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBgDetectCleanUpTime:J

    .line 784
    :cond_1
    :goto_1
    move/from16 v0, p2

    int-to-long v12, v0

    cmp-long v4, v14, v12

    if-gez v4, :cond_4

    .line 785
    const-string/jumbo v4, "OHPD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[BgDetect]sample period is less than min check duration of level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 786
    const-string/jumbo v12, " : "

    .line 785
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 786
    const-wide/16 v12, 0x3e8

    div-long v12, v14, v12

    .line 785
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 786
    const-string/jumbo v12, " secs critical "

    .line 785
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->MODE_MSGS:[I

    aget v54, v4, p1

    .line 788
    .local v54, "msgId":I
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 789
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v56

    .line 790
    .local v56, "nmsg":Landroid/os/Message;
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    move/from16 v0, p2

    int-to-long v12, v0

    sub-long/2addr v12, v14

    const-wide/16 v22, 0xbb8

    add-long v12, v12, v22

    move-object/from16 v0, v56

    invoke-virtual {v4, v0, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    const/4 v4, -0x1

    monitor-exit v8

    .line 768
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 791
    return v4

    .line 772
    .end local v6    # "curUptime":J
    .end local v14    # "uptimeSince":J
    .end local v36    # "currentElapsedTime":J
    .end local v54    # "msgId":I
    .end local v56    # "nmsg":Landroid/os/Message;
    :cond_2
    const/16 v39, 0x0

    goto/16 :goto_0

    .line 780
    .restart local v6    # "curUptime":J
    .restart local v14    # "uptimeSince":J
    .restart local v36    # "currentElapsedTime":J
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBgDetectCleanUpTime:J

    sub-long v12, v36, v12

    const-wide/32 v22, 0x5265c00

    cmp-long v4, v12, v22

    if-lez v4, :cond_1

    .line 781
    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBgDetectCleanUpTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 768
    .end local v6    # "curUptime":J
    .end local v14    # "uptimeSince":J
    .end local v36    # "currentElapsedTime":J
    .end local v61    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :catchall_0
    move-exception v4

    monitor-exit v8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .restart local v6    # "curUptime":J
    .restart local v14    # "uptimeSince":J
    .restart local v36    # "currentElapsedTime":J
    .restart local v61    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :cond_4
    monitor-exit v8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 796
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getVisibleWindowUids()Ljava/util/List;

    move-result-object v74

    .line 797
    .local v74, "visibleUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getActiveAudioUids()[Ljava/lang/String;

    move-result-object v28

    .line 798
    .local v28, "avtiveAudioUids":[Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "com_oneplus_systemui_recent_task_lockd_list"

    const/4 v11, -0x2

    invoke-static {v4, v8, v11}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v53

    .line 800
    .local v53, "lockedStr":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->parseLockedStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v52

    .line 802
    .local v52, "lockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_7

    .line 803
    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->sBattUpdteLock:Ljava/lang/Object;

    monitor-enter v8

    .line 804
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getDeviceTemp()I

    move-result v38

    .line 806
    .local v38, "deviceTemp":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsPowerDrain:Z

    if-nez v4, :cond_5

    sget v4, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    move/from16 v0, v38

    if-lt v0, v4, :cond_6

    .line 807
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

    .line 808
    const/4 v10, 0x1

    :cond_6
    monitor-exit v8

    .line 813
    .end local v38    # "deviceTemp":I
    :cond_7
    sget-object v75, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v75

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 814
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCpuCheckUptime:[J

    aput-wide v6, v4, p1

    .line 816
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

    .line 817
    const-string/jumbo v11, " critical "

    .line 816
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 817
    const-string/jumbo v11, " uptime: "

    .line 816
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    new-instance v41, Landroid/util/ArrayMap;

    invoke-direct/range {v41 .. v41}, Landroid/util/ArrayMap;-><init>()V

    .line 820
    .local v41, "doForceStopMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/ProcessRecord;>;"
    new-instance v59, Landroid/util/ArrayMap;

    invoke-direct/range {v59 .. v59}, Landroid/util/ArrayMap;-><init>()V

    .line 822
    .local v59, "skipUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v58, Landroid/util/ArrayMap;

    invoke-direct/range {v58 .. v58}, Landroid/util/ArrayMap;-><init>()V

    .line 824
    .local v58, "skipPDUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v70, Landroid/util/ArrayMap;

    invoke-direct/range {v70 .. v70}, Landroid/util/ArrayMap;-><init>()V

    .line 826
    .local v70, "uidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v45, Landroid/util/ArrayMap;

    invoke-direct/range {v45 .. v45}, Landroid/util/ArrayMap;-><init>()V

    .line 828
    .local v45, "fgUidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v69, Landroid/util/ArrayMap;

    invoke-direct/range {v69 .. v69}, Landroid/util/ArrayMap;-><init>()V

    .line 830
    .local v69, "uidAppInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;>;"
    if-nez p1, :cond_8

    .line 831
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 832
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    monitor-exit v8

    .line 835
    :cond_8
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_9

    .line 836
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 837
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    monitor-exit v8

    .line 840
    :cond_9
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_a

    .line 841
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 842
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 847
    :cond_a
    :try_start_a
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v48

    .line 848
    .local v48, "i":I
    :cond_b
    :goto_2
    if-lez v48, :cond_25

    .line 849
    add-int/lit8 v48, v48, -0x1

    .line 850
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 853
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

    .line 862
    :cond_c
    if-nez v39, :cond_e

    .line 863
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateProcUsg(Lcom/android/server/am/ProcessRecord;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_2

    .line 1356
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v48    # "i":I
    :catch_0
    move-exception v42

    .line 1357
    .local v42, "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Exception;->printStackTrace()V

    .line 1358
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
    monitor-exit v75

    .line 813
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1364
    if-eqz v65, :cond_61

    :try_start_c
    invoke-virtual/range {v65 .. v65}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_61

    .line 1365
    const-string/jumbo v55, ""

    .line 1366
    .local v55, "namesString":Ljava/lang/String;
    const/16 v48, 0x0

    .restart local v48    # "i":I
    :goto_4
    invoke-virtual/range {v65 .. v65}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v48

    if-ge v0, v4, :cond_60

    .line 1367
    if-nez v48, :cond_5f

    .line 1368
    move-object/from16 v0, v65

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v55

    .end local v55    # "namesString":Ljava/lang/String;
    check-cast v55, Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 1366
    .restart local v55    # "namesString":Ljava/lang/String;
    :goto_5
    add-int/lit8 v48, v48, 0x1

    goto :goto_4

    .line 803
    .end local v41    # "doForceStopMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/ProcessRecord;>;"
    .end local v45    # "fgUidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v48    # "i":I
    .end local v55    # "namesString":Ljava/lang/String;
    .end local v58    # "skipPDUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v59    # "skipUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v69    # "uidAppInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;>;"
    .end local v70    # "uidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v4

    monitor-exit v8

    throw v4

    .line 831
    .restart local v41    # "doForceStopMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/ProcessRecord;>;"
    .restart local v45    # "fgUidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v58    # "skipPDUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v59    # "skipUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v69    # "uidAppInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;>;"
    .restart local v70    # "uidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_2
    move-exception v4

    :try_start_d
    monitor-exit v8

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 813
    .end local v41    # "doForceStopMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/ProcessRecord;>;"
    .end local v45    # "fgUidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v58    # "skipPDUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v59    # "skipUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v69    # "uidAppInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;>;"
    .end local v70    # "uidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_3
    move-exception v4

    monitor-exit v75

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 836
    .restart local v41    # "doForceStopMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/ProcessRecord;>;"
    .restart local v45    # "fgUidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v58    # "skipPDUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v59    # "skipUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v69    # "uidAppInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;>;"
    .restart local v70    # "uidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_4
    move-exception v4

    :try_start_e
    monitor-exit v8

    throw v4

    .line 841
    :catchall_5
    move-exception v4

    monitor-exit v8

    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 854
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

    .line 855
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

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 856
    if-eqz v10, :cond_b

    .line 857
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

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 867
    :cond_e
    iget-wide v12, v5, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v22, v4, p1

    sub-long v16, v12, v22

    .line 870
    .local v16, "cputimeUsed":J
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v12, v4, p1

    const-wide/16 v22, 0x0

    cmp-long v4, v12, v22

    if-gtz v4, :cond_12

    .line 871
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateProcUsg(Lcom/android/server/am/ProcessRecord;I)V

    .line 874
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 875
    .local v9, "result":Ljava/lang/StringBuffer;
    if-eqz v10, :cond_f

    sget v11, Lcom/android/server/am/OnePlusHighPowerDetector;->PD_LAST_FG_TIME_THOLD:I

    move-object/from16 v4, p0

    move/from16 v8, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->skipCheck(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 876
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 878
    :cond_f
    new-instance v9, Ljava/lang/StringBuffer;

    .end local v9    # "result":Ljava/lang/StringBuffer;
    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 879
    .restart local v9    # "result":Ljava/lang/StringBuffer;
    sget v11, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I

    move-object/from16 v4, p0

    move/from16 v8, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->skipCheck(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 880
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 881
    const-wide/16 v12, 0x64

    mul-long v12, v12, v16

    div-long v72, v12, v14

    .line 883
    .local v72, "usage":J
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 884
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    .line 885
    .local v35, "currVal":Ljava/lang/Integer;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-wide/from16 v0, v72

    long-to-int v8, v0

    add-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    .line 886
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    .end local v35    # "currVal":Ljava/lang/Integer;
    .end local v72    # "usage":J
    :cond_10
    :goto_6
    if-nez p1, :cond_b

    .line 893
    const-wide/16 v12, 0x0

    iput-wide v12, v5, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    goto/16 :goto_2

    .line 888
    .restart local v72    # "usage":J
    :cond_11
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-wide/from16 v0, v72

    long-to-int v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 898
    .end local v9    # "result":Ljava/lang/StringBuffer;
    .end local v72    # "usage":J
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInBlackExList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 899
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    :cond_13
    const-wide/16 v12, 0x64

    mul-long v12, v12, v16

    div-long v72, v12, v14

    .line 903
    .restart local v72    # "usage":J
    const-wide/16 v12, 0xa

    cmp-long v4, v72, v12

    if-lez v4, :cond_14

    .line 904
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

    move-wide/from16 v0, v72

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

    .line 906
    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->needCheckProc(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v4

    if-nez v4, :cond_15

    .line 907
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkBlackList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    .line 906
    if-nez v4, :cond_15

    .line 908
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    .line 906
    if-nez v4, :cond_15

    .line 909
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkBlackExList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    .line 906
    if-eqz v4, :cond_22

    .line 912
    :cond_15
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 913
    .restart local v9    # "result":Ljava/lang/StringBuffer;
    if-eqz v10, :cond_16

    sget v11, Lcom/android/server/am/OnePlusHighPowerDetector;->PD_LAST_FG_TIME_THOLD:I

    move-object/from16 v4, p0

    move/from16 v8, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->skipCheck(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 914
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 917
    :cond_16
    new-instance v9, Ljava/lang/StringBuffer;

    .end local v9    # "result":Ljava/lang/StringBuffer;
    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 918
    .restart local v9    # "result":Ljava/lang/StringBuffer;
    sget v11, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I

    move-object/from16 v4, p0

    move/from16 v8, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->skipCheck(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 919
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateProcUsg(Lcom/android/server/am/ProcessRecord;I)V

    .line 920
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 921
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v4, v4, p1

    int-to-long v12, v4

    cmp-long v4, v72, v12

    if-ltz v4, :cond_17

    .line 922
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

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    if-nez p1, :cond_17

    iget-wide v12, v5, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    const-wide/16 v22, 0x0

    cmp-long v4, v12, v22

    if-nez v4, :cond_17

    .line 926
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iput-wide v12, v5, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    .line 927
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

    .line 931
    :cond_17
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 932
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    .line 933
    .restart local v35    # "currVal":Ljava/lang/Integer;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-wide/from16 v0, v72

    long-to-int v8, v0

    add-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    .line 934
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 936
    .end local v35    # "currVal":Ljava/lang/Integer;
    :cond_18
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-wide/from16 v0, v72

    long-to-int v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 942
    :cond_19
    if-nez p1, :cond_1a

    .line 943
    const-wide/16 v12, 0x0

    iput-wide v12, v5, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    .line 945
    :cond_1a
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v4, v4, p1

    int-to-long v12, v4

    cmp-long v4, v72, v12

    if-ltz v4, :cond_20

    .line 946
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    aget v4, v4, p1

    int-to-long v12, v4

    cmp-long v4, v72, v12

    if-gez v4, :cond_20

    .line 947
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v4, :cond_1b

    .line 948
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

    .line 949
    sget-object v11, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v11, v11, p1

    .line 948
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 950
    const-string/jumbo v11, "<="

    .line 948
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v72

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 950
    const-string/jumbo v11, "<"

    .line 948
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 951
    sget-object v11, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    aget v11, v11, p1

    .line 948
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_1b
    if-nez p1, :cond_1c

    .line 953
    monitor-enter v61
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 954
    :try_start_10
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v13, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v11, v61

    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/os/BatteryStatsImpl;->reportExcessiveCpuLocked(ILjava/lang/String;JJ)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    monitor-exit v61

    .line 959
    :cond_1c
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_1d

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_1d

    .line 960
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 965
    :cond_1d
    :goto_7
    if-nez p1, :cond_1e

    if-eqz v5, :cond_1e

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v4, :cond_1e

    .line 966
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4, v8}, Lcom/android/internal/app/procstats/ProcessState;->reportExcessiveCpu(Landroid/util/ArrayMap;)V

    .line 1001
    .end local v9    # "result":Ljava/lang/StringBuffer;
    :cond_1e
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateProcUsg(Lcom/android/server/am/ProcessRecord;I)V

    goto/16 :goto_2

    .line 953
    .restart local v9    # "result":Ljava/lang/StringBuffer;
    :catchall_6
    move-exception v4

    monitor-exit v61

    throw v4

    .line 961
    :cond_1f
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect]detect excessive cpu on process "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 962
    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 961
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 962
    const-string/jumbo v11, "(pid : "

    .line 961
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 962
    iget v11, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 961
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 962
    const-string/jumbo v11, ") level "

    .line 961
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 962
    const-string/jumbo v11, " usage "

    .line 961
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v72

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 970
    :cond_20
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 971
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    .line 972
    .restart local v35    # "currVal":Ljava/lang/Integer;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-wide/from16 v0, v72

    long-to-int v8, v0

    add-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    .line 973
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v70

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
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

    move-object/from16 v0, v69

    invoke-virtual {v0, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    const-wide/16 v12, 0x0

    cmp-long v4, v72, v12

    if-lez v4, :cond_1e

    .line 979
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect]accumulate usage "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v72

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

    .line 975
    :cond_21
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-wide/from16 v0, v72

    long-to-int v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v70

    invoke-virtual {v0, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 983
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

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 984
    if-eqz v10, :cond_23

    .line 985
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

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 988
    :cond_23
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 989
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    .line 990
    .restart local v35    # "currVal":Ljava/lang/Integer;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-wide/from16 v0, v72

    long-to-int v8, v0

    add-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    .line 991
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    .end local v35    # "currVal":Ljava/lang/Integer;
    :goto_a
    if-nez p1, :cond_1e

    .line 998
    const-wide/16 v12, 0x0

    iput-wide v12, v5, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    goto/16 :goto_8

    .line 993
    :cond_24
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-wide/from16 v0, v72

    long-to-int v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 1004
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v16    # "cputimeUsed":J
    .end local v72    # "usage":J
    :cond_25
    if-eqz v39, :cond_5b

    .line 1007
    invoke-interface/range {v74 .. v74}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_27

    .line 1008
    invoke-interface/range {v74 .. v74}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v68

    .local v68, "uid$iterator":Ljava/util/Iterator;
    :cond_26
    :goto_b
    invoke-interface/range {v68 .. v68}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface/range {v68 .. v68}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Ljava/lang/Integer;

    .line 1009
    .local v66, "uid":Ljava/lang/Integer;
    move-object/from16 v0, v29

    move-object/from16 v1, v66

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 1010
    invoke-virtual/range {v66 .. v66}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v8, "has visible window"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 1011
    if-eqz v10, :cond_26

    .line 1012
    invoke-virtual/range {v66 .. v66}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v8, "has visible window"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto :goto_b

    .line 1018
    .end local v66    # "uid":Ljava/lang/Integer;
    .end local v68    # "uid$iterator":Ljava/util/Iterator;
    :cond_27
    if-eqz v28, :cond_2b

    .line 1019
    const/4 v4, 0x0

    move-object/from16 v0, v28

    array-length v8, v0

    :goto_c
    if-ge v4, v8, :cond_2b

    aget-object v67, v28, v4

    .line 1020
    .local v67, "uid":Ljava/lang/String;
    if-eqz v67, :cond_28

    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_29

    .line 1019
    :cond_28
    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1023
    :cond_29
    move-object/from16 v0, v29

    move-object/from16 v1, v67

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2a

    .line 1024
    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v12, "audio active"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v11, v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 1025
    if-eqz v10, :cond_28

    .line 1026
    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v12, "audio active"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v11, v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto :goto_d

    .line 1029
    :cond_2a
    move-object/from16 v0, v74

    move-object/from16 v1, v67

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_28

    .line 1030
    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v12, "has visible window & audio active"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v11, v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 1031
    if-eqz v10, :cond_28

    .line 1032
    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v12, "has visible window & audio active"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v11, v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto :goto_d

    .line 1038
    .end local v67    # "uid":Ljava/lang/String;
    :cond_2b
    new-instance v40, Landroid/util/SparseArray;

    invoke-direct/range {v40 .. v40}, Landroid/util/SparseArray;-><init>()V

    .line 1040
    .local v40, "doForceStopForkedArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_34

    .line 1041
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1042
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v47

    .local v47, "fproc$iterator":Ljava/util/Iterator;
    :cond_2c
    :goto_e
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 1043
    .local v46, "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->flags:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->hasSystemFlag(I)Z

    move-result v50

    .line 1045
    .local v50, "isSystemPkg":Z
    if-nez v50, :cond_2c

    .line 1048
    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    aget-wide v22, v4, p1

    sub-long v16, v12, v22

    .line 1049
    .restart local v16    # "cputimeUsed":J
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 1050
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    const-string/jumbo v11, "dex2oat"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1049
    if-nez v4, :cond_2d

    .line 1051
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isForkedProcInWhiteList(Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;)Z

    move-result v4

    .line 1049
    if-eqz v4, :cond_2e

    .line 1052
    :cond_2d
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

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 1053
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    aput-wide v12, v4, p1

    .line 1056
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1057
    const-wide/16 v12, 0x64

    mul-long v12, v12, v16

    div-long v72, v12, v14

    .line 1058
    .restart local v72    # "usage":J
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    .line 1059
    .restart local v35    # "currVal":Ljava/lang/Integer;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-wide/from16 v0, v72

    long-to-int v11, v0

    add-int/2addr v4, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    .line 1060
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    goto/16 :goto_e

    .line 1041
    .end local v16    # "cputimeUsed":J
    .end local v35    # "currVal":Ljava/lang/Integer;
    .end local v46    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .end local v47    # "fproc$iterator":Ljava/util/Iterator;
    .end local v50    # "isSystemPkg":Z
    .end local v72    # "usage":J
    :catchall_7
    move-exception v4

    :try_start_13
    monitor-exit v8

    throw v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 1064
    .restart local v16    # "cputimeUsed":J
    .restart local v46    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .restart local v47    # "fproc$iterator":Ljava/util/Iterator;
    .restart local v50    # "isSystemPkg":Z
    :cond_2e
    :try_start_14
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    aget-wide v12, v4, p1

    const-wide/16 v22, 0x0

    cmp-long v4, v12, v22

    if-lez v4, :cond_30

    .line 1065
    const-wide/16 v12, 0x64

    mul-long v12, v12, v16

    div-long v72, v12, v14

    .line 1066
    .restart local v72    # "usage":J
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v4, v4, p1

    int-to-long v12, v4

    cmp-long v4, v72, v12

    if-ltz v4, :cond_31

    .line 1067
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    aget v4, v4, p1

    int-to-long v12, v4

    cmp-long v4, v72, v12

    if-gez v4, :cond_31

    .line 1068
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    const/4 v11, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v11}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2f

    .line 1069
    const-string/jumbo v4, "OHPD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[BgDetect]detect excessive cpu on forked process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1070
    move-object/from16 v0, v46

    iget-object v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    .line 1069
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1070
    const-string/jumbo v12, "(pid : "

    .line 1069
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1070
    move-object/from16 v0, v46

    iget v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    .line 1069
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1070
    const-string/jumbo v12, ") level "

    .line 1069
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1070
    const-string/jumbo v12, " usage "

    .line 1069
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v72

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    move-object/from16 v0, v40

    move-object/from16 v1, v46

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1090
    :cond_2f
    :goto_f
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1091
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    .line 1092
    .restart local v35    # "currVal":Ljava/lang/Integer;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-wide/from16 v0, v72

    long-to-int v11, v0

    add-int/2addr v4, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    .line 1093
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    .end local v35    # "currVal":Ljava/lang/Integer;
    .end local v72    # "usage":J
    :cond_30
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    aput-wide v12, v4, p1

    goto/16 :goto_e

    .line 1074
    .restart local v72    # "usage":J
    :cond_31
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

    .line 1075
    const-string/jumbo v12, "(pid : "

    .line 1074
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1075
    move-object/from16 v0, v46

    iget v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    .line 1074
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1075
    const-string/jumbo v12, " uid: "

    .line 1074
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1075
    move-object/from16 v0, v46

    iget v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    .line 1074
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1075
    const-string/jumbo v12, ") "

    .line 1074
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1075
    const-string/jumbo v12, " during "

    .line 1074
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1078
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    .line 1079
    .restart local v35    # "currVal":Ljava/lang/Integer;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-wide/from16 v0, v72

    long-to-int v11, v0

    add-int/2addr v4, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    .line 1080
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v70

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    .end local v35    # "currVal":Ljava/lang/Integer;
    :goto_10
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

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v11, v12, v13, v0}, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;-><init>(IILjava/lang/String;)V

    move-object/from16 v0, v69

    invoke-virtual {v0, v4, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    const-wide/16 v12, 0x0

    cmp-long v4, v72, v12

    if-lez v4, :cond_2f

    .line 1086
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect]accumulate usage "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v72

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

    goto/16 :goto_f

    .line 1082
    :cond_32
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-wide/from16 v0, v72

    long-to-int v11, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v70

    invoke-virtual {v0, v4, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto :goto_10

    .end local v16    # "cputimeUsed":J
    .end local v46    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .end local v50    # "isSystemPkg":Z
    .end local v72    # "usage":J
    :cond_33
    :try_start_15
    monitor-exit v8

    .line 1101
    .end local v47    # "fproc$iterator":Ljava/util/Iterator;
    :cond_34
    invoke-virtual/range {v41 .. v41}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-lez v4, :cond_44

    .line 1102
    invoke-virtual/range {v41 .. v41}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "app$iterator":Ljava/util/Iterator;
    :cond_35
    :goto_11
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 1103
    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1105
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mKillMechanism:Z

    if-eqz v4, :cond_3c

    const/4 v4, 0x3

    move/from16 v0, p1

    if-ne v0, v4, :cond_3c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1106
    const/16 v30, 0x0

    .line 1107
    .local v30, "boundByFG":Z
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    if-eqz v4, :cond_3a

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_3a

    .line 1108
    const/16 v60, 0x0

    .line 1109
    .local v60, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v51

    .end local v60    # "sr":Lcom/android/server/am/ServiceRecord;
    .local v51, "it":Ljava/util/Iterator;
    :cond_36
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    move-result v4

    if-eqz v4, :cond_3a

    .line 1110
    const/16 v60, 0x0

    .line 1112
    .restart local v60    # "sr":Lcom/android/server/am/ServiceRecord;
    :try_start_16
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v60

    .end local v60    # "sr":Lcom/android/server/am/ServiceRecord;
    check-cast v60, Lcom/android/server/am/ServiceRecord;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 1116
    .local v60, "sr":Lcom/android/server/am/ServiceRecord;
    if-eqz v60, :cond_36

    :try_start_17
    move-object/from16 v0, v60

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    if-eqz v4, :cond_36

    .line 1117
    const/16 v33, 0x0

    .local v33, "conni":I
    :goto_12
    move-object/from16 v0, v60

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v33

    if-ge v0, v4, :cond_36

    .line 1118
    move-object/from16 v0, v60

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/ArrayList;

    .line 1119
    .local v31, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/16 v49, 0x0

    .local v49, "idx":I
    :goto_13
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v49

    if-ge v0, v4, :cond_38

    .line 1120
    move-object/from16 v0, v31

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/ConnectionRecord;

    .line 1121
    .local v34, "crd":Lcom/android/server/am/ConnectionRecord;
    if-eqz v34, :cond_39

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v4, :cond_39

    .line 1122
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v32, v0

    .line 1123
    .local v32, "client":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v8, 0x2

    if-eq v4, v8, :cond_37

    .line 1124
    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v8, 0x1

    if-ne v4, v8, :cond_39

    .line 1125
    :cond_37
    const/16 v30, 0x1

    .line 1126
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

    .line 1117
    .end local v32    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v34    # "crd":Lcom/android/server/am/ConnectionRecord;
    :cond_38
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_12

    .line 1119
    .restart local v34    # "crd":Lcom/android/server/am/ConnectionRecord;
    :cond_39
    add-int/lit8 v49, v49, 0x1

    goto/16 :goto_13

    .line 1113
    .end local v31    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v33    # "conni":I
    .end local v34    # "crd":Lcom/android/server/am/ConnectionRecord;
    .end local v49    # "idx":I
    .end local v60    # "sr":Lcom/android/server/am/ServiceRecord;
    :catch_1
    move-exception v42

    .line 1135
    .end local v51    # "it":Ljava/util/Iterator;
    :cond_3a
    if-nez v30, :cond_3b

    .line 1136
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

    .line 1141
    .end local v30    # "boundByFG":Z
    :cond_3b
    :goto_14
    add-int/lit8 v57, v57, 0x1

    .line 1142
    goto/16 :goto_11

    .line 1139
    :cond_3c
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

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 1145
    :cond_3d
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1146
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    :cond_3e
    if-nez p1, :cond_41

    .line 1154
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

    move-object/from16 v0, v52

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1155
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

    .line 1156
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 1157
    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1158
    new-instance v19, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    iget-object v12, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v26, v0

    iget-object v12, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v27, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v19 .. v27}, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;-><init>(Ljava/lang/String;IZZJII)V

    .line 1157
    move-object/from16 v0, v19

    invoke-virtual {v4, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    :try_start_19
    monitor-exit v8

    .line 1160
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    const-string/jumbo v11, "lru_huge"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;ILjava/lang/String;)V

    .line 1171
    :goto_15
    add-int/lit8 v57, v57, 0x1

    goto/16 :goto_11

    .line 1156
    :catchall_8
    move-exception v4

    monitor-exit v8

    throw v4

    .line 1161
    :cond_3f
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkLevel0KillList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1162
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

    goto :goto_15

    .line 1164
    :cond_40
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

    .line 1165
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    .line 1168
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 1172
    :cond_41
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_42

    .line 1173
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 1174
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1175
    new-instance v19, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    iget-object v12, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v26, v0

    iget-object v12, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v27, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v19 .. v27}, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;-><init>(Ljava/lang/String;IZZJII)V

    .line 1174
    move-object/from16 v0, v19

    invoke-virtual {v4, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    :try_start_1b
    monitor-exit v8

    .line 1177
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    const-string/jumbo v11, "lru_high"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_11

    .line 1173
    :catchall_9
    move-exception v4

    monitor-exit v8

    throw v4

    .line 1178
    :cond_42
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_43

    .line 1179
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    .line 1180
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1181
    new-instance v19, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    iget-object v12, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v26, v0

    iget-object v12, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v27, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v19 .. v27}, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;-><init>(Ljava/lang/String;IZZJII)V

    .line 1180
    move-object/from16 v0, v19

    invoke-virtual {v4, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    :try_start_1d
    monitor-exit v8

    goto/16 :goto_11

    .line 1179
    :catchall_a
    move-exception v4

    monitor-exit v8

    throw v4

    .line 1183
    :cond_43
    const/4 v4, 0x3

    move/from16 v0, p1

    if-ne v0, v4, :cond_35

    .line 1184
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProviderBoundByFG(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v4

    if-nez v4, :cond_35

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

    move-object/from16 v0, v52

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 1185
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

    goto/16 :goto_11

    .line 1190
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v18    # "app$iterator":Ljava/util/Iterator;
    :cond_44
    invoke-virtual/range {v40 .. v40}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_4c

    .line 1191
    const/16 v48, 0x0

    :goto_16
    invoke-virtual/range {v40 .. v40}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v48

    if-ge v0, v4, :cond_4c

    .line 1192
    move-object/from16 v0, v40

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 1193
    .restart local v46    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    if-eqz v4, :cond_4b

    .line 1195
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 1196
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    :cond_45
    if-nez p1, :cond_49

    .line 1200
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

    move-object/from16 v0, v52

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 1201
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

    .line 1202
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    .line 1203
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v0, v46

    iget-object v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    .line 1204
    new-instance v19, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 1205
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    move/from16 v26, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    move/from16 v27, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 1204
    invoke-direct/range {v19 .. v27}, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;-><init>(Ljava/lang/String;IZZJII)V

    .line 1203
    move-object/from16 v0, v19

    invoke-virtual {v4, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    :try_start_1f
    monitor-exit v8

    .line 1207
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v0, v46

    iget v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    const-string/jumbo v11, "fork_huge"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;ILjava/lang/String;)V

    .line 1219
    :goto_17
    add-int/lit8 v57, v57, 0x1

    .line 1191
    :cond_46
    :goto_18
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_16

    .line 1202
    :catchall_b
    move-exception v4

    monitor-exit v8

    throw v4

    .line 1208
    :cond_47
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkLevel0KillList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 1209
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v46

    iget v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    move-object/from16 v0, v46

    iget v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1210
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

    .line 1209
    invoke-virtual {v4, v8, v11, v12}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    goto :goto_17

    .line 1212
    :cond_48
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

    .line 1213
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v0, v46

    iget v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    .line 1216
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 1220
    :cond_49
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_4a

    .line 1221
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_0
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    .line 1222
    :try_start_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v0, v46

    iget-object v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    .line 1223
    new-instance v19, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 1224
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    move/from16 v26, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    move/from16 v27, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 1223
    invoke-direct/range {v19 .. v27}, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;-><init>(Ljava/lang/String;IZZJII)V

    .line 1222
    move-object/from16 v0, v19

    invoke-virtual {v4, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    :try_start_21
    monitor-exit v8

    .line 1226
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v0, v46

    iget v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    const-string/jumbo v11, "fork_high"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_18

    .line 1221
    :catchall_c
    move-exception v4

    monitor-exit v8

    throw v4

    .line 1227
    :cond_4a
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_46

    .line 1228
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_0
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    .line 1229
    :try_start_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v0, v46

    iget-object v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    .line 1230
    new-instance v19, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 1231
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    move/from16 v26, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    move/from16 v27, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 1230
    invoke-direct/range {v19 .. v27}, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;-><init>(Ljava/lang/String;IZZJII)V

    .line 1229
    move-object/from16 v0, v19

    invoke-virtual {v4, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_d

    :try_start_23
    monitor-exit v8

    goto/16 :goto_18

    .line 1228
    :catchall_d
    move-exception v4

    monitor-exit v8

    throw v4

    .line 1235
    :cond_4b
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

    .line 1236
    const-string/jumbo v11, " \'s pkgName is null, uid "

    .line 1235
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1236
    move-object/from16 v0, v46

    iget v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    .line 1235
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1236
    const-string/jumbo v11, " pid "

    .line 1235
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1236
    move-object/from16 v0, v46

    iget v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    .line 1235
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 1241
    .end local v46    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    :cond_4c
    invoke-virtual/range {v70 .. v70}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v44

    .local v44, "entry$iterator":Ljava/util/Iterator;
    :cond_4d
    :goto_19
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/Map$Entry;

    .line 1242
    .local v43, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v43 .. v43}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Ljava/lang/Integer;

    .line 1243
    .restart local v66    # "uid":Ljava/lang/Integer;
    invoke-interface/range {v43 .. v43}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Ljava/lang/Integer;

    .line 1244
    .local v71, "usageSum":Ljava/lang/Integer;
    move-object/from16 v0, v69

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;

    iget-object v0, v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->pkgName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 1245
    .local v20, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v69

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;

    iget v0, v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->pid:I

    move/from16 v26, v0

    .line 1246
    .local v26, "pid":I
    invoke-virtual/range {v71 .. v71}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_4e

    .line 1247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect] uid "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v66

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

    move-object/from16 v0, v71

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 1248
    :cond_4e
    invoke-virtual/range {v71 .. v71}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v8, v8, p1

    if-lt v4, v8, :cond_4d

    .line 1249
    invoke-virtual/range {v71 .. v71}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    aget v8, v8, p1

    if-ge v4, v8, :cond_4d

    .line 1250
    move-object/from16 v0, v59

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 1251
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

    move-object/from16 v0, v66

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "), reason= "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v59

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 1254
    :cond_4f
    if-nez p1, :cond_52

    .line 1255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v66 .. v66}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 1256
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

    move-object/from16 v0, v66

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    .line 1258
    :try_start_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    .line 1259
    new-instance v19, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    .line 1260
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    invoke-virtual/range {v66 .. v66}, Ljava/lang/Integer;->intValue()I

    move-result v27

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 1259
    invoke-direct/range {v19 .. v27}, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;-><init>(Ljava/lang/String;IZZJII)V

    .line 1258
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_e

    :try_start_25
    monitor-exit v8

    .line 1262
    const-string/jumbo v4, "accu_huge"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v26

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;ILjava/lang/String;)V

    .line 1274
    :goto_1a
    add-int/lit8 v57, v57, 0x1

    goto/16 :goto_19

    .line 1257
    :catchall_e
    move-exception v4

    monitor-exit v8

    throw v4

    .line 1263
    :cond_50
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkLevel0KillList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 1264
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {v66 .. v66}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    invoke-virtual/range {v66 .. v66}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1265
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[BgDetect] total usage "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v71

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

    move-object/from16 v0, v66

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

    .line 1264
    invoke-virtual {v4, v8, v11, v12}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    goto :goto_1a

    .line 1267
    :cond_51
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] total usage "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v71

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

    move-object/from16 v0, v66

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

    .line 1268
    invoke-virtual/range {v66 .. v66}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    .line 1271
    move-object/from16 v0, v65

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a

    .line 1275
    :cond_52
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_53

    .line 1276
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] HighPower total usage "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v71

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

    move-object/from16 v0, v66

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

    .line 1277
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_0
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    .line 1278
    :try_start_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    .line 1279
    new-instance v19, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    .line 1280
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    invoke-virtual/range {v66 .. v66}, Ljava/lang/Integer;->intValue()I

    move-result v27

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 1279
    invoke-direct/range {v19 .. v27}, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;-><init>(Ljava/lang/String;IZZJII)V

    .line 1278
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_f

    :try_start_27
    monitor-exit v8

    .line 1282
    const-string/jumbo v4, "accu_high"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v26

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_19

    .line 1277
    :catchall_f
    move-exception v4

    monitor-exit v8

    throw v4

    .line 1283
    :cond_53
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_4d

    .line 1284
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] MediumPower total usage "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v71

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

    move-object/from16 v0, v66

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

    .line 1285
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_0
    .catchall {:try_start_27 .. :try_end_27} :catchall_3

    .line 1286
    :try_start_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    .line 1287
    new-instance v19, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    .line 1288
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    invoke-virtual/range {v66 .. v66}, Ljava/lang/Integer;->intValue()I

    move-result v27

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 1287
    invoke-direct/range {v19 .. v27}, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;-><init>(Ljava/lang/String;IZZJII)V

    .line 1286
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_10

    :try_start_29
    monitor-exit v8

    goto/16 :goto_19

    .line 1285
    :catchall_10
    move-exception v4

    monitor-exit v8

    throw v4

    .line 1295
    .end local v20    # "pkgName":Ljava/lang/String;
    .end local v26    # "pid":I
    .end local v43    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v66    # "uid":Ljava/lang/Integer;
    .end local v71    # "usageSum":Ljava/lang/Integer;
    :cond_54
    if-eqz v10, :cond_5e

    if-nez v57, :cond_5e

    .line 1297
    invoke-virtual/range {v45 .. v45}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v44

    :cond_55
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/Map$Entry;

    .line 1298
    .restart local v43    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v43 .. v43}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Ljava/lang/Integer;

    .line 1299
    .restart local v71    # "usageSum":Ljava/lang/Integer;
    invoke-interface/range {v43 .. v43}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Ljava/lang/Integer;

    .line 1300
    .restart local v66    # "uid":Ljava/lang/Integer;
    invoke-virtual/range {v71 .. v71}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v8, v8, p1

    if-lt v4, v8, :cond_55

    .line 1301
    add-int/lit8 v57, v57, 0x1

    .line 1302
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect][PD] found PD is caused by skipped uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v66

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " usg "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v71

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    .end local v43    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v66    # "uid":Ljava/lang/Integer;
    .end local v71    # "usageSum":Ljava/lang/Integer;
    :cond_56
    if-nez v57, :cond_5e

    .line 1307
    const-string/jumbo v4, "[BgDetect][PD] start review BG procs"

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 1308
    invoke-virtual/range {v70 .. v70}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v44

    :cond_57
    :goto_1b
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/Map$Entry;

    .line 1309
    .restart local v43    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v43 .. v43}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Ljava/lang/Integer;

    .line 1310
    .restart local v66    # "uid":Ljava/lang/Integer;
    invoke-interface/range {v43 .. v43}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Ljava/lang/Integer;

    .line 1311
    .restart local v71    # "usageSum":Ljava/lang/Integer;
    move-object/from16 v0, v69

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;

    iget-object v0, v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->pkgName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 1312
    .restart local v20    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, v69

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;

    iget v0, v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->pid:I

    move/from16 v26, v0

    .line 1313
    .restart local v26    # "pid":I
    invoke-virtual/range {v71 .. v71}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget v8, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_USG_THOLD:I

    if-lt v4, v8, :cond_57

    .line 1314
    move-object/from16 v0, v58

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 1315
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

    move-object/from16 v0, v66

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "), reason= "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v58

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 1318
    :cond_58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v66 .. v66}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 1319
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

    move-object/from16 v0, v66

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_0
    .catchall {:try_start_29 .. :try_end_29} :catchall_3

    .line 1321
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    .line 1322
    new-instance v19, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    .line 1323
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    invoke-virtual/range {v66 .. v66}, Ljava/lang/Integer;->intValue()I

    move-result v27

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 1322
    invoke-direct/range {v19 .. v27}, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;-><init>(Ljava/lang/String;IZZJII)V

    .line 1321
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_11

    :try_start_2b
    monitor-exit v8

    .line 1325
    const-string/jumbo v4, "accu_huge"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v26

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1b

    .line 1320
    :catchall_11
    move-exception v4

    monitor-exit v8

    throw v4

    .line 1326
    :cond_59
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkLevel0KillList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 1327
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {v66 .. v66}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    invoke-virtual/range {v66 .. v66}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1328
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[BgDetect][PD] total usage "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v71

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

    move-object/from16 v0, v66

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

    .line 1327
    invoke-virtual {v4, v8, v11, v12}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    goto/16 :goto_1b

    .line 1330
    :cond_5a
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect][PD] total usage "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v71

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

    move-object/from16 v0, v66

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

    .line 1331
    invoke-virtual/range {v66 .. v66}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    .line 1334
    move-object/from16 v0, v65

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    .line 1342
    .end local v20    # "pkgName":Ljava/lang/String;
    .end local v26    # "pid":I
    .end local v40    # "doForceStopForkedArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;>;"
    .end local v43    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v44    # "entry$iterator":Ljava/util/Iterator;
    .end local v66    # "uid":Ljava/lang/Integer;
    .end local v71    # "usageSum":Ljava/lang/Integer;
    :cond_5b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_5e

    .line 1343
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_0
    .catchall {:try_start_2b .. :try_end_2b} :catchall_3

    .line 1344
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v47

    .restart local v47    # "fproc$iterator":Ljava/util/Iterator;
    :cond_5c
    :goto_1c
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 1345
    .restart local v46    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    const-wide/16 v22, 0x0

    cmp-long v4, v12, v22

    if-lez v4, :cond_5c

    .line 1346
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    aput-wide v12, v4, p1
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_12

    goto :goto_1c

    .line 1343
    .end local v46    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .end local v47    # "fproc$iterator":Ljava/util/Iterator;
    :catchall_12
    move-exception v4

    :try_start_2d
    monitor-exit v8

    throw v4

    .restart local v47    # "fproc$iterator":Ljava/util/Iterator;
    :cond_5d
    monitor-exit v8

    .line 1354
    .end local v47    # "fproc$iterator":Ljava/util/Iterator;
    :cond_5e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->cancelBgDetectNotificationIfNeeded()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_0
    .catchall {:try_start_2d .. :try_end_2d} :catchall_3

    goto/16 :goto_3

    .line 1370
    .restart local v55    # "namesString":Ljava/lang/String;
    :cond_5f
    :try_start_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v65

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    goto/16 :goto_5

    .line 1373
    :cond_60
    new-instance v64, Lcom/android/server/SystemEvent;

    const-string/jumbo v4, "ForceStopApplication"

    move-object/from16 v0, v64

    invoke-direct {v0, v4}, Lcom/android/server/SystemEvent;-><init>(Ljava/lang/String;)V

    .line 1374
    .local v64, "stopAppEvent":Lcom/android/server/SystemEvent;
    const-string/jumbo v4, "name"

    move-object/from16 v0, v64

    move-object/from16 v1, v55

    invoke-virtual {v0, v4, v1}, Lcom/android/server/SystemEvent;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerEventCollector:Lcom/android/server/SystemEventCollector;

    move-object/from16 v0, v64

    invoke-virtual {v4, v0}, Lcom/android/server/SystemEventCollector;->submit(Lcom/android/server/SystemEvent;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_2

    .line 1382
    .end local v48    # "i":I
    .end local v55    # "namesString":Ljava/lang/String;
    .end local v64    # "stopAppEvent":Lcom/android/server/SystemEvent;
    :cond_61
    :goto_1d
    if-eqz v10, :cond_62

    .line 1383
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->sBattUpdteLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1384
    const/4 v8, 0x0

    :try_start_2f
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsPowerDrain:Z
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_13

    monitor-exit v4

    .line 1388
    :cond_62
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v4, :cond_63

    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] checkExcessiveCpuUsageLocked -# level "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1389
    const-string/jumbo v11, " in "

    .line 1388
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1389
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v62

    .line 1388
    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1389
    const-string/jumbo v11, "ms"

    .line 1388
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    :cond_63
    const/4 v4, 0x0

    return v4

    .line 1377
    :catch_2
    move-exception v42

    .line 1378
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

    goto :goto_1d

    .line 1383
    .end local v42    # "e":Ljava/lang/Exception;
    :catchall_13
    move-exception v8

    monitor-exit v4

    throw v8
.end method

.method private cleanUpWhenPkgRemoved(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1697
    const-string/jumbo v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[BgDetect] pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " removed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1700
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1701
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1704
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1705
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1706
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    monitor-exit v1

    .line 1709
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1710
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1711
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    monitor-exit v1

    .line 1696
    return-void

    .line 1699
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1704
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1709
    :catchall_2
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

    .line 1523
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 1524
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v0, :cond_0

    .line 1525
    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->updateAppStopInfo(Ljava/lang/String;)V

    .line 1526
    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v0

    .line 1527
    const v1, 0x8000

    .line 1526
    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/OnePlusAppBootManager;->updatePowerFlag(Ljava/lang/String;I)V

    .line 1529
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->postProcessOfForceStop(Ljava/lang/String;)V

    .line 1522
    return-void
.end method

.method private getActiveAudioUids()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1886
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 1888
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1887
    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAudioManager:Landroid/media/AudioManager;

    .line 1890
    :cond_0
    const-string/jumbo v0, ""

    .line 1891
    .local v0, "uids":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 1893
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "get_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1899
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1896
    :cond_1
    const-string/jumbo v0, ":0"

    goto :goto_0
.end method

.method private getLastFGTimeThold(Z)I
    .locals 1
    .param p1, "isBatteryDrain"    # Z

    .prologue
    .line 1717
    if-eqz p1, :cond_0

    sget v0, Lcom/android/server/am/OnePlusHighPowerDetector;->PD_LAST_FG_TIME_THOLD:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 261
    const v2, 0x5070002

    .line 260
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 263
    const v2, 0x5070003

    .line 262
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 265
    const v2, 0x5070006

    .line 264
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 267
    const v2, 0x5070004

    .line 266
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 269
    const v2, 0x5070005

    .line 268
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 271
    const v2, 0x5070007

    .line 270
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    .line 272
    sget-object v0, Landroid/os/Build;->REGION:Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mRegion:Ljava/lang/String;

    .line 273
    const-string/jumbo v0, "persist.sys.ohpd.flags"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mGlobalFlags:I

    .line 274
    const-string/jumbo v0, "persist.sys.ohpd.kcheck"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mKillMechanism:Z

    .line 276
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateCpuThreshold(Ljava/lang/String;)V

    .line 277
    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->registerReceiver()V

    .line 278
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->initOnlineConfig()V

    .line 279
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 280
    const-string/jumbo v0, "persist.sys.ohpd.pd.usg.thold"

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_USG_THOLD:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_USG_THOLD:I

    .line 281
    const-string/jumbo v0, "persist.sys.ohpd.pd.temp.thold"

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    .line 282
    const-string/jumbo v0, "persist.sys.ohpd.pd.lastfg"

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->PD_LAST_FG_TIME_THOLD:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->PD_LAST_FG_TIME_THOLD:I

    .line 259
    :cond_0
    return-void
.end method

.method private isAppBusyLongTime(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1721
    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1722
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    sub-long/2addr v0, v2

    sget v2, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_CONT_BUSY_TIME_THOLD:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1723
    const/4 v0, 0x1

    return v0

    .line 1725
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 232
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 233
    const-string/jumbo v0, "OHPD"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    return-void
.end method

.method private notifyBgDetectIfNecessary(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "triggerPkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 1549
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

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_0
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v3, 0xd6db

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1551
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1552
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 1553
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1547
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 1554
    :catch_0
    move-exception v0

    .line 1555
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

    .line 1556
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "uids"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1903
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1904
    :cond_0
    return-object v2

    .line 1906
    :cond_1
    const-string/jumbo v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1907
    return-object v2

    .line 1909
    :cond_2
    const-string/jumbo v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1910
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
    .line 1914
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1915
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 1916
    return-object v2

    .line 1918
    :cond_0
    const-string/jumbo v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1919
    .local v1, "keys":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 1920
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 1921
    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1920
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1924
    .end local v0    # "i":I
    :cond_1
    return-object v2
.end method

.method private registerReceiver()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 316
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 317
    .local v0, "batteryStateFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/am/OnePlusHighPowerDetector$2;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusHighPowerDetector$2;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 349
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 350
    .local v1, "generalFilter":Landroid/content/IntentFilter;
    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 353
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mRegion:Ljava/lang/String;

    const-string/jumbo v3, "CN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 355
    sget v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mGlobalFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->responseSIMStateChanged()Z

    move-result v2

    if-nez v2, :cond_0

    .line 357
    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 366
    const-string/jumbo v2, "ohpd.action.test"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    :cond_1
    const-string/jumbo v2, "com.oem.intent.action.force_stop_pkg"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 315
    return-void

    .line 362
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->setKillMechanismState(Z)V

    goto :goto_0
.end method

.method private resolveBackgroundDetectionConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 26
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 1942
    sget-boolean v22, Lcom/android/server/am/OnePlusHighPowerDetector;->ONLINE_CONFIG:Z

    if-nez v22, :cond_0

    .line 1943
    return-void

    .line 1945
    :cond_0
    if-nez p1, :cond_1

    .line 1946
    return-void

    .line 1950
    :cond_1
    :try_start_0
    sget-object v23, Lcom/android/server/am/OnePlusHighPowerDetector;->sConfigLock:Ljava/lang/Object;

    monitor-enter v23
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1951
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_19

    .line 1952
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 1953
    .local v11, "json":Lorg/json/JSONObject;
    const-string/jumbo v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v24, "backgroundprocess_detection_app_whitelist"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1954
    const-string/jumbo v22, "value"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    .line 1955
    .local v21, "whiteAppListJsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1956
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 1957
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_2

    .line 1958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1957
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    :try_start_3
    monitor-exit v24

    .line 1962
    .end local v9    # "i":I
    .end local v21    # "whiteAppListJsonArray":Lorg/json/JSONArray;
    :cond_3
    const-string/jumbo v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v24, "black_list"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1963
    const-string/jumbo v22, "value"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1964
    .local v3, "blackAppListJsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1965
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 1966
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_4

    .line 1967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1966
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1955
    .end local v3    # "blackAppListJsonArray":Lorg/json/JSONArray;
    .end local v9    # "i":I
    .restart local v21    # "whiteAppListJsonArray":Lorg/json/JSONArray;
    :catchall_0
    move-exception v22

    :try_start_5
    monitor-exit v24

    throw v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1950
    .end local v11    # "json":Lorg/json/JSONObject;
    .end local v21    # "whiteAppListJsonArray":Lorg/json/JSONArray;
    :catchall_1
    move-exception v22

    :try_start_6
    monitor-exit v23

    throw v22
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 2071
    .end local v10    # "index":I
    :catch_0
    move-exception v7

    .line 2072
    .local v7, "e":Lorg/json/JSONException;
    const-string/jumbo v22, "OHPD"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    .end local v7    # "e":Lorg/json/JSONException;
    :goto_3
    return-void

    .restart local v3    # "blackAppListJsonArray":Lorg/json/JSONArray;
    .restart local v9    # "i":I
    .restart local v10    # "index":I
    .restart local v11    # "json":Lorg/json/JSONObject;
    :cond_4
    :try_start_7
    monitor-exit v24

    .line 1971
    .end local v3    # "blackAppListJsonArray":Lorg/json/JSONArray;
    .end local v9    # "i":I
    :cond_5
    const-string/jumbo v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v24, "black_ex_list"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1972
    const-string/jumbo v22, "value"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1973
    .local v4, "blackExAppListJsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1974
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 1975
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_6

    .line 1976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1975
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1964
    .end local v4    # "blackExAppListJsonArray":Lorg/json/JSONArray;
    .end local v9    # "i":I
    .restart local v3    # "blackAppListJsonArray":Lorg/json/JSONArray;
    :catchall_2
    move-exception v22

    :try_start_9
    monitor-exit v24

    throw v22

    .end local v3    # "blackAppListJsonArray":Lorg/json/JSONArray;
    .restart local v4    # "blackExAppListJsonArray":Lorg/json/JSONArray;
    .restart local v9    # "i":I
    :cond_6
    monitor-exit v24

    .line 1980
    .end local v4    # "blackExAppListJsonArray":Lorg/json/JSONArray;
    .end local v9    # "i":I
    :cond_7
    const-string/jumbo v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v24, "kill_proc_list"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 1981
    const-string/jumbo v22, "value"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 1982
    .local v12, "killProcListJsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1983
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 1984
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_5
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_8

    .line 1985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1984
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1973
    .end local v9    # "i":I
    .end local v12    # "killProcListJsonArray":Lorg/json/JSONArray;
    .restart local v4    # "blackExAppListJsonArray":Lorg/json/JSONArray;
    :catchall_3
    move-exception v22

    :try_start_b
    monitor-exit v24

    throw v22

    .end local v4    # "blackExAppListJsonArray":Lorg/json/JSONArray;
    .restart local v9    # "i":I
    .restart local v12    # "killProcListJsonArray":Lorg/json/JSONArray;
    :cond_8
    monitor-exit v24

    .line 1989
    .end local v9    # "i":I
    .end local v12    # "killProcListJsonArray":Lorg/json/JSONArray;
    :cond_9
    const-string/jumbo v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v24, "level0_kill_proc_list"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 1990
    const-string/jumbo v22, "value"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 1991
    .local v15, "level0KillListJsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1992
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 1993
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_6
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_a

    .line 1994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual {v15, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 1993
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1982
    .end local v9    # "i":I
    .end local v15    # "level0KillListJsonArray":Lorg/json/JSONArray;
    .restart local v12    # "killProcListJsonArray":Lorg/json/JSONArray;
    :catchall_4
    move-exception v22

    :try_start_d
    monitor-exit v24

    throw v22

    .end local v12    # "killProcListJsonArray":Lorg/json/JSONArray;
    .restart local v9    # "i":I
    .restart local v15    # "level0KillListJsonArray":Lorg/json/JSONArray;
    :cond_a
    monitor-exit v24

    .line 1998
    .end local v9    # "i":I
    .end local v15    # "level0KillListJsonArray":Lorg/json/JSONArray;
    :cond_b
    const-string/jumbo v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v24, "prebuilt_gms_proc_list"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 1999
    const-string/jumbo v22, "value"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 2000
    .local v8, "gmsMonitorListJsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 2001
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 2002
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_7
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_c

    .line 2003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 2002
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 1991
    .end local v8    # "gmsMonitorListJsonArray":Lorg/json/JSONArray;
    .end local v9    # "i":I
    .restart local v15    # "level0KillListJsonArray":Lorg/json/JSONArray;
    :catchall_5
    move-exception v22

    :try_start_f
    monitor-exit v24

    throw v22

    .end local v15    # "level0KillListJsonArray":Lorg/json/JSONArray;
    .restart local v8    # "gmsMonitorListJsonArray":Lorg/json/JSONArray;
    .restart local v9    # "i":I
    :cond_c
    monitor-exit v24

    .line 2007
    .end local v8    # "gmsMonitorListJsonArray":Lorg/json/JSONArray;
    .end local v9    # "i":I
    :cond_d
    const-string/jumbo v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v24, "bg_detection_cpu_usage_threshold"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 2008
    const-string/jumbo v22, "value"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 2009
    .local v20, "thresholdJsonArray":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_8
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v9, v0, :cond_e

    .line 2010
    sget-object v22, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    aput v24, v22, v9

    .line 2011
    const-string/jumbo v22, "OHPD"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "[OnlineConfig]BG_DETECTION_CPU_USAGE_THRESHOLD_MIN["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "]:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v25, v25, v9

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 2000
    .end local v9    # "i":I
    .end local v20    # "thresholdJsonArray":Lorg/json/JSONArray;
    .restart local v8    # "gmsMonitorListJsonArray":Lorg/json/JSONArray;
    :catchall_6
    move-exception v22

    monitor-exit v24

    throw v22

    .line 2014
    .end local v8    # "gmsMonitorListJsonArray":Lorg/json/JSONArray;
    :cond_e
    const-string/jumbo v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v24, "bg_detection_cpu_usage_threshold_max"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 2015
    const-string/jumbo v22, "value"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 2016
    .restart local v20    # "thresholdJsonArray":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_9
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v9, v0, :cond_f

    .line 2017
    sget-object v22, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    aput v24, v22, v9

    .line 2018
    const-string/jumbo v22, "OHPD"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "[OnlineConfig]BG_DETECTION_CPU_USAGE_THRESHOLD_MAX["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "]:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    aget v25, v25, v9

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 2021
    .end local v9    # "i":I
    .end local v20    # "thresholdJsonArray":Lorg/json/JSONArray;
    :cond_f
    const-string/jumbo v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v24, "bg_detection_network_usage_threshold"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 2022
    const-string/jumbo v22, "value"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 2023
    .local v17, "netUsageJsonArray":Lorg/json/JSONArray;
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    sput v22, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_NETWORK_USAGE_THRESHOLD:I

    .line 2024
    const-string/jumbo v22, "OHPD"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "[OnlineConfig]BG_DETECTION_NETWORK_USAGE_THRESHOLD:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_NETWORK_USAGE_THRESHOLD:I

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    .end local v17    # "netUsageJsonArray":Lorg/json/JSONArray;
    :cond_10
    const-string/jumbo v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v24, "cpu_check_delay"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 2027
    const-string/jumbo v22, "value"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 2028
    .local v5, "delayJsonArray":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_a
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v9, v0, :cond_11

    .line 2029
    sget-object v22, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    aput v24, v22, v9

    .line 2030
    const-string/jumbo v22, "OHPD"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "[OnlineConfig]CPU_CHECK_DELAY["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "]:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    aget v25, v25, v9

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 2033
    .end local v5    # "delayJsonArray":Lorg/json/JSONArray;
    .end local v9    # "i":I
    :cond_11
    const-string/jumbo v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v24, "cpu_min_check_duration"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 2034
    const-string/jumbo v22, "value"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 2035
    .local v16, "miuDurJsonArray":Lorg/json/JSONArray;
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    sput v22, Lcom/android/server/am/ActivityManagerService;->CPU_MIN_CHECK_DURATION:I

    .line 2036
    const-string/jumbo v22, "OHPD"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "[OnlineConfig]CPU_MIN_CHECK_DURATION:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, Lcom/android/server/am/ActivityManagerService;->CPU_MIN_CHECK_DURATION:I

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    .end local v16    # "miuDurJsonArray":Lorg/json/JSONArray;
    :cond_12
    const-string/jumbo v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v24, "bg_detection_last_fg_threshold"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 2039
    const-string/jumbo v22, "value"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 2040
    .local v13, "lastFgJsonArray":Lorg/json/JSONArray;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    sput v22, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I

    .line 2041
    const-string/jumbo v22, "OHPD"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "[OnlineConfig]APP_LAST_FOREGROUND_TIME_THRESHOLD: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    .end local v13    # "lastFgJsonArray":Lorg/json/JSONArray;
    :cond_13
    const-string/jumbo v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v24, "bg_detection_last_provider_threshold"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 2044
    const-string/jumbo v22, "value"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 2045
    .local v14, "lastProviderJsonArray":Lorg/json/JSONArray;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    sput v22, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD:I

    .line 2046
    const-string/jumbo v22, "OHPD"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "[OnlineConfig]APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD:I

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    .end local v14    # "lastProviderJsonArray":Lorg/json/JSONArray;
    :cond_14
    const-string/jumbo v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v24, "bg_detection_pd_usage_threshold"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 2049
    const-string/jumbo v22, "value"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 2050
    .local v19, "pdUsgTholdJsonArray":Lorg/json/JSONArray;
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    sput v22, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_USG_THOLD:I

    .line 2051
    const-string/jumbo v22, "OHPD"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "[OnlineConfig]POWER_DRAIN_USG_THOLD: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_USG_THOLD:I

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    .end local v19    # "pdUsgTholdJsonArray":Lorg/json/JSONArray;
    :cond_15
    const-string/jumbo v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v24, "bg_detection_pd_tempature_threshold"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 2054
    const-string/jumbo v22, "value"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 2055
    .local v18, "pdTempTholdJsonArray":Lorg/json/JSONArray;
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    sput v22, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    .line 2056
    const-string/jumbo v22, "OHPD"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "[OnlineConfig]POWER_DRAIN_TEMP_THOLD: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    .end local v18    # "pdTempTholdJsonArray":Lorg/json/JSONArray;
    :cond_16
    const-string/jumbo v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v24, "bg_detection_pd_last_fg_threshold"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_17

    .line 2059
    const-string/jumbo v22, "value"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 2060
    .restart local v18    # "pdTempTholdJsonArray":Lorg/json/JSONArray;
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    sput v22, Lcom/android/server/am/OnePlusHighPowerDetector;->PD_LAST_FG_TIME_THOLD:I

    .line 2061
    const-string/jumbo v22, "OHPD"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "[OnlineConfig]PD_LAST_FG_TIME_THOLD: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, Lcom/android/server/am/OnePlusHighPowerDetector;->PD_LAST_FG_TIME_THOLD:I

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    .end local v18    # "pdTempTholdJsonArray":Lorg/json/JSONArray;
    :cond_17
    const-string/jumbo v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v24, "bg_detection_app_cont_busy_time_thold"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_18

    .line 2064
    const-string/jumbo v22, "value"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 2065
    .local v2, "appBusyTimeTholdJsonArray":Lorg/json/JSONArray;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    sput v22, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_CONT_BUSY_TIME_THOLD:I

    .line 2066
    const-string/jumbo v22, "OHPD"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "[OnlineConfig] APP_CONT_BUSY_TIME_THOLD: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_CONT_BUSY_TIME_THOLD:I

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1951
    .end local v2    # "appBusyTimeTholdJsonArray":Lorg/json/JSONArray;
    :cond_18
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .end local v11    # "json":Lorg/json/JSONObject;
    :cond_19
    :try_start_10
    monitor-exit v23

    .line 2070
    const-string/jumbo v22, "OHPD"

    const-string/jumbo v23, "[OnlineConfig] BackgroundDetection updated complete"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_3

    .line 2073
    .end local v10    # "index":I
    :catch_1
    move-exception v6

    .line 2074
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v22, "OHPD"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private responseSIMStateChanged()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 386
    sget v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mGlobalFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 387
    return v4

    .line 389
    :cond_0
    const/4 v1, 0x0

    .line 391
    .local v1, "ret":Z
    const-string/jumbo v2, "gsm.sim.operator.iso-country"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "mccCountry":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 393
    const-string/jumbo v2, "in"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "cn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 394
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->setKillMechanismState(Z)V

    .line 398
    :goto_0
    const/4 v1, 0x1

    .line 399
    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[BgDetect] responseSIMStateChanged # mccCountry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_2
    return v1

    .line 396
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->setKillMechanismState(Z)V

    goto :goto_0
.end method

.method private scheduleForceStopPkg(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1562
    :try_start_0
    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[BgDetect] scheduleForceStopPkg # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v3, 0xd6e0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1564
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1565
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1560
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 1566
    :catch_0
    move-exception v0

    .line 1567
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

    .line 1568
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setKillMechanismState(Z)V
    .locals 3
    .param p1, "set"    # Z

    .prologue
    .line 375
    sput-boolean p1, Lcom/android/server/am/OnePlusHighPowerDetector;->mKillMechanism:Z

    .line 376
    const-string/jumbo v1, "persist.sys.ohpd.kcheck"

    if-eqz p1, :cond_1

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
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

    .line 379
    sget v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mGlobalFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 380
    sget v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mGlobalFlags:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mGlobalFlags:I

    .line 381
    const-string/jumbo v0, "persist.sys.ohpd.flags"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mGlobalFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_0
    return-void

    .line 376
    :cond_1
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
    .line 1730
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInBlackExList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1731
    const/4 v8, 0x0

    return v8

    .line 1735
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInWhiteList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1736
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

    .line 1737
    const/4 v8, 0x1

    return v8

    .line 1740
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInBlackList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1745
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string/jumbo v9, "com.android"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1746
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v9, "com.google.android.gms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1745
    if-nez v8, :cond_3

    .line 1747
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v9, "com.google.android.gsf"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1745
    if-nez v8, :cond_3

    .line 1748
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v9, "com.google.android.packageinstaller"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1745
    if-nez v8, :cond_3

    .line 1749
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v9, "com.google.android.webview"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1745
    if-nez v8, :cond_3

    .line 1750
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string/jumbo v9, "android.process"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 1745
    if-eqz v8, :cond_5

    .line 1751
    :cond_3
    const-string/jumbo v8, "important proc"

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1752
    const/4 v8, 0x1

    return v8

    .line 1740
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

    .line 1741
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

    .line 1742
    const/4 v8, 0x1

    return v8

    .line 1755
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

    .line 1756
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

    .line 1757
    const/4 v8, 0x1

    return v8

    .line 1761
    :cond_6
    if-nez p4, :cond_7

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isAppBusyLongTime(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1762
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

    .line 1763
    const/4 v8, 0x0

    return v8

    .line 1767
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

    .line 1768
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

    .line 1769
    const/4 v8, 0x1

    return v8

    .line 1772
    :cond_8
    iget v8, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v8}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    .line 1773
    .local v2, "curUsage":J
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->lastRxBytes:[J

    aget-wide v8, v8, p4

    sub-long v4, v2, v8

    .line 1774
    .local v4, "rxDiff":J
    sget v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_NETWORK_USAGE_THRESHOLD:I

    int-to-long v8, v8

    cmp-long v8, v4, v8

    if-lez v8, :cond_9

    .line 1775
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

    .line 1776
    const/4 v8, 0x1

    return v8

    .line 1779
    :cond_9
    iget v8, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v8}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    .line 1780
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->lastTxBytes:[J

    aget-wide v8, v8, p4

    sub-long v6, v2, v8

    .line 1781
    .local v6, "txDiff":J
    sget v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_NETWORK_USAGE_THRESHOLD:I

    int-to-long v8, v8

    cmp-long v8, v6, v8

    if-lez v8, :cond_a

    .line 1782
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

    .line 1783
    const/4 v8, 0x1

    return v8

    .line 1785
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
    .line 1682
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

    .line 1683
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1684
    .local v2, "startTime":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1686
    .local v0, "callerUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    .line 1688
    const/4 v4, -0x2

    :try_start_0
    invoke-direct {p0, p1, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    .line 1689
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

    .line 1681
    :cond_0
    :goto_0
    return-void

    .line 1690
    :catch_0
    move-exception v1

    .line 1691
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

    .line 413
    move-object v5, p0

    .line 414
    .local v5, "threshold":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 415
    const-string/jumbo v6, "persist.sys.ohpd.threshold"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 417
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

    .line 418
    if-eqz v5, :cond_4

    .line 419
    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, "items":[Ljava/lang/String;
    array-length v6, v2

    if-ne v6, v10, :cond_4

    .line 421
    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->sConfigLock:Ljava/lang/Object;

    monitor-enter v7

    .line 423
    :try_start_0
    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    const/high16 v8, 0x200000

    const/4 v9, 0x0

    aput v8, v6, v9

    .line 424
    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    aput v8, v6, v9

    .line 425
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v10, :cond_1

    .line 426
    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget-object v8, v2, v1

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v1

    .line 427
    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    add-int/lit8 v9, v1, -0x1

    aget v8, v8, v9

    aput v8, v6, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 430
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

    .line 433
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    sget-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 434
    const-string/jumbo v4, ""

    .line 435
    .local v4, "min":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 436
    .local v3, "max":Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v10, :cond_2

    .line 437
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

    .line 438
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

    .line 436
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 440
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

    .line 412
    .end local v2    # "items":[Ljava/lang/String;
    :cond_4
    return-void

    .line 421
    .restart local v2    # "items":[Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method


# virtual methods
.method public beginCpuStatistics()V
    .locals 2

    .prologue
    .line 1449
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OHPD"

    const-string/jumbo v1, "beginCpuStatistics"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1451
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWorkingForkedPidList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1452
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPendingRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1448
    return-void

    .line 1450
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public cancelBgDetectNotificationIfNeeded()V
    .locals 6

    .prologue
    .line 1534
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OHPD"

    const-string/jumbo v3, "cancelBgDetectNotificationIfNeeded"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v3, 0xd6dd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1537
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v3, 0xd6dd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1539
    :cond_1
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v3, 0xd6dd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1540
    .local v1, "msg":Landroid/os/Message;
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1533
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 1541
    :catch_0
    move-exception v0

    .line 1542
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "OHPD"

    const-string/jumbo v3, "Error when cancelBgDetectNotificationIfNeeded"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method checkBlackExList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1829
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInBlackExList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1830
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1831
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1834
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1832
    :cond_1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 1833
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1836
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method checkBlackList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1840
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInBlackList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1841
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "com.truecaller"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1846
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1842
    :cond_1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 1843
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1844
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method checkGmsList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1850
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1851
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

    .line 1856
    const/4 v0, 0x0

    return v0

    .line 1852
    :cond_1
    if-eqz p1, :cond_0

    .line 1853
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1850
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method checkLevel0KillList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1872
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1873
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

    .line 1878
    const/4 v0, 0x0

    return v0

    .line 1874
    :cond_1
    if-eqz p1, :cond_0

    .line 1875
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1872
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1861
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1862
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

    .line 1867
    const/4 v0, 0x0

    return v0

    .line 1863
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1864
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1861
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public doCpuStatistics(Lcom/android/internal/os/ProcessCpuTracker$Stats;)V
    .locals 10
    .param p1, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .prologue
    .line 1457
    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_1

    iget-wide v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1458
    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 1459
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

    .line 1460
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 1461
    .local v1, "proc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    if-nez v1, :cond_2

    .line 1462
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

    .line 1466
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWorkingForkedPidList:Ljava/util/ArrayList;

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1467
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

    .line 1456
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "proc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    :cond_1
    return-void

    .line 1464
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

    .line 1458
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
    .line 1473
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1474
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 1475
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

    .line 1476
    .local v0, "proc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWorkingForkedPidList:Ljava/util/ArrayList;

    iget v6, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1477
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

    .line 1474
    .end local v0    # "proc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .end local v1    # "proc$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1480
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

    .line 1481
    .local v2, "target":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v2    # "target":Ljava/lang/String;
    :cond_2
    monitor-exit v5

    .line 1485
    .end local v1    # "proc$iterator":Ljava/util/Iterator;
    .end local v3    # "target$iterator":Ljava/util/Iterator;
    :cond_3
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "OHPD"

    const-string/jumbo v5, "finishCpuStatistics"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_4
    return-void
.end method

.method public forceUpdateOnlineConfigImmediately()V
    .locals 3

    .prologue
    .line 1937
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->BACKGROUND_DETECTION_CONFIG_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1938
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->resolveBackgroundDetectionConfigFromJSON(Lorg/json/JSONArray;)V

    .line 1936
    return-void
.end method

.method public getBgMonitorMode()Z
    .locals 1

    .prologue
    .line 1573
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
    .line 1580
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 1581
    .local v20, "startTime":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1583
    .local v6, "callerUid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v23

    const/16 v24, 0x3e8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_14

    .line 1584
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1587
    .local v17, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$HighPowerApp;>;"
    :try_start_0
    sget-object v23, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "com_oneplus_systemui_recent_task_lockd_list"

    const/16 v25, -0x2

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 1588
    .local v14, "lockedStr":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/am/OnePlusHighPowerDetector;->parseLockedStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 1589
    .local v13, "lockedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .line 1590
    .local v19, "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1591
    .local v4, "addedPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 1593
    .local v18, "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-object v24, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v24
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1594
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

    .line 1595
    .local v15, "pr":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1596
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

    .line 1593
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

    .line 1660
    .end local v4    # "addedPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "lockedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "lockedStr":Ljava/lang/String;
    .end local v18    # "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v19    # "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 1661
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v23, "OHPD"

    const-string/jumbo v24, "[BgDetect] Error in getBgPowerHungryList"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1664
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

    .line 1665
    const-string/jumbo v25, " in "

    .line 1664
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1665
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v20

    .line 1664
    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1665
    const-string/jumbo v25, " ms"

    .line 1664
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    sget-boolean v23, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v23, :cond_13

    .line 1667
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1668
    .local v22, "sz":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    move/from16 v0, v22

    if-ge v11, v0, :cond_13

    .line 1669
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

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

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

    .line 1593
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v23

    if-lez v23, :cond_2

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1602
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

    .line 1603
    .local v9, "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    iget-object v0, v9, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1604
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

    .line 1601
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

    .line 1609
    .end local v10    # "fproc$iterator":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1610
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

    .line 1611
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1612
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    .line 1613
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

    .line 1614
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 1615
    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 1616
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1617
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    .line 1609
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

    .line 1613
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    .restart local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;>;"
    :cond_4
    const/16 v23, 0x0

    goto :goto_5

    .line 1619
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

    .line 1622
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

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 1627
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

    .line 1628
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1629
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    .line 1630
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

    .line 1631
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 1632
    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 1633
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1634
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_6

    .line 1626
    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    :catchall_3
    move-exception v23

    :try_start_b
    monitor-exit v24

    throw v23
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 1630
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    :cond_9
    const/16 v23, 0x0

    goto :goto_7

    .line 1636
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

    .line 1639
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

    .line 1643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 1644
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

    .line 1645
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1646
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    .line 1647
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

    .line 1648
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 1649
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 1656
    :cond_e
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_8

    .line 1643
    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    :catchall_4
    move-exception v23

    :try_start_f
    monitor-exit v24

    throw v23
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    .line 1647
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;"
    :cond_f
    const/16 v23, 0x0

    goto :goto_9

    .line 1650
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

    .line 1651
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1653
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
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    goto/16 :goto_1

    .line 1672
    .end local v4    # "addedPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/ActivityManager$HighPowerApp;>;>;"
    .end local v13    # "lockedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "lockedStr":Ljava/lang/String;
    .end local v16    # "pr$iterator":Ljava/util/Iterator;
    .end local v18    # "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v19    # "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_13
    return-object v17

    .line 1674
    .end local v17    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$HighPowerApp;>;"
    :cond_14
    const/16 v23, 0x0

    return-object v23
.end method

.method getDeviceTemp()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1420
    const/16 v4, 0xa

    :try_start_0
    new-array v0, v4, [C

    .line 1421
    .local v0, "buffer":[C
    new-instance v2, Ljava/io/FileReader;

    const-string/jumbo v4, "/sys/class/thermal/thermal_zone5/temp"

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1423
    .local v2, "file":Ljava/io/FileReader;
    const/4 v4, 0x0

    const/16 v5, 0xa

    :try_start_1
    invoke-virtual {v2, v0, v4, v5}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 1424
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

    .line 1426
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 1424
    return v4

    .line 1425
    .end local v3    # "len":I
    :catchall_0
    move-exception v4

    .line 1426
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 1425
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1428
    .end local v0    # "buffer":[C
    .end local v2    # "file":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 1429
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "OHPD"

    const-string/jumbo v5, "Can\'t get device temp w /sys/class/thermal/thermal_zone5/temp"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    return v6
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 39
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage # msg.what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 465
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 463
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 467
    :pswitch_1
    sget v2, Lcom/android/server/am/ActivityManagerService;->CPU_MIN_CHECK_DURATION:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkExcessiveCpuUsageLocked(II)I

    move-result v33

    .line 468
    .local v33, "result":I
    if-nez v33, :cond_0

    .line 469
    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 470
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v6, 0xd6d8

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 471
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v6, 0xd6d8

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 472
    .local v23, "nmsg":Landroid/os/Message;
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-long v6, v6

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 469
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    .end local v23    # "nmsg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 477
    .end local v33    # "result":I
    :pswitch_2
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkExcessiveCpuUsageLocked(II)I

    move-result v33

    .line 478
    .restart local v33    # "result":I
    if-nez v33, :cond_0

    .line 479
    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 480
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v6, 0xd6d9

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 481
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v6, 0xd6d9

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 482
    .restart local v23    # "nmsg":Landroid/os/Message;
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-long v6, v6

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    .line 479
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    .end local v23    # "nmsg":Landroid/os/Message;
    :catchall_1
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 487
    .end local v33    # "result":I
    :pswitch_3
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkExcessiveCpuUsageLocked(II)I

    move-result v33

    .line 488
    .restart local v33    # "result":I
    if-nez v33, :cond_0

    .line 489
    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 490
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v6, 0xd6da

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 491
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v6, 0xd6da

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 492
    .restart local v23    # "nmsg":Landroid/os/Message;
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    int-to-long v6, v6

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v3

    .line 489
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v23    # "nmsg":Landroid/os/Message;
    :catchall_2
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 497
    .end local v33    # "result":I
    :pswitch_4
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkExcessiveCpuUsageLocked(II)I

    move-result v33

    .line 498
    .restart local v33    # "result":I
    if-nez v33, :cond_0

    .line 499
    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 500
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v6, 0xd6de

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 501
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v6, 0xd6de

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 502
    .restart local v23    # "nmsg":Landroid/os/Message;
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    int-to-long v6, v6

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v3

    .line 499
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v23    # "nmsg":Landroid/os/Message;
    :catchall_3
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 508
    .end local v33    # "result":I
    :pswitch_5
    :try_start_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Ljava/lang/String;

    .line 509
    .local v38, "triggerPkgName":Ljava/lang/String;
    if-nez v38, :cond_1

    return-void

    .line 511
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 512
    .local v18, "curTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 514
    .local v24, "lastNotifyTime":J
    sub-long v2, v18, v24

    sget-wide v6, Lcom/android/server/am/OnePlusHighPowerDetector;->NOTIFY_INTERVAL:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_3

    .line 515
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Notification # too short time to notify: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v6, v18, v24

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_2
    return-void

    .line 519
    .end local v24    # "lastNotifyTime":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 521
    const/16 v30, 0x0

    .line 523
    .local v30, "pkgLabel":Ljava/lang/String;
    :try_start_5
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    .line 524
    .local v16, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v16, :cond_4

    .line 525
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object/from16 v30, v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 530
    .end local v16    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v30    # "pkgLabel":Ljava/lang/String;
    :cond_4
    :goto_1
    if-eqz v30, :cond_5

    :try_start_6
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_6

    .line 531
    :cond_5
    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[BgDetect] error: cannot get pkg label : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-void

    .line 527
    .restart local v30    # "pkgLabel":Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 528
    .local v20, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "OHPD"

    const-string/jumbo v3, "get highpower pkg label error"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 592
    .end local v18    # "curTime":J
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v30    # "pkgLabel":Ljava/lang/String;
    .end local v38    # "triggerPkgName":Ljava/lang/String;
    :catch_1
    move-exception v20

    .line 593
    .restart local v20    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "OHPD"

    const-string/jumbo v3, "Error posting power intensive notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 535
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v18    # "curTime":J
    .restart local v38    # "triggerPkgName":Ljava/lang/String;
    :cond_6
    :try_start_7
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const v3, 0x50a002f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 536
    .local v37, "title":Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const v3, 0x50a002e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 537
    .local v17, "content":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 538
    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Notification # title:84541487 "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Notification # content:84541486 "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Notification # triggerPkgName:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ",pkgLabel:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 547
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "classname"

    const-string/jumbo v3, "com.android.settings.fuelgauge.PowerUsageSummary"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    new-instance v36, Landroid/content/Intent;

    const-string/jumbo v2, "com.oem.intent.action.force_stop_pkg"

    move-object/from16 v0, v36

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 552
    .local v36, "stopIntent":Landroid/content/Intent;
    const-string/jumbo v2, "pkg"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    .line 555
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 554
    const/4 v6, 0x0

    .line 555
    const/high16 v7, 0x8000000

    .line 554
    move-object/from16 v0, v36

    invoke-static {v2, v6, v0, v7, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v27

    .line 558
    .local v27, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification$Action$Builder;

    .line 559
    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const v6, 0x50a0035

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 558
    const v6, 0x108032b

    move-object/from16 v0, v27

    invoke-direct {v2, v6, v3, v0}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v13

    .line 562
    .local v13, "action":Landroid/app/Notification$Action;
    new-instance v2, Landroid/app/Notification$Builder;

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 563
    const v3, 0x108008a

    .line 562
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 571
    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const v6, 0x106005b

    invoke-virtual {v3, v6}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 562
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 575
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    .line 577
    new-instance v7, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v7, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 575
    const/4 v3, 0x0

    .line 576
    const/high16 v5, 0x8000000

    const/4 v6, 0x0

    .line 575
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 562
    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 578
    const/4 v3, 0x1

    .line 562
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 579
    const/4 v3, 0x1

    .line 562
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .line 583
    .local v10, "notification":Landroid/app/Notification;
    const/4 v2, 0x1

    new-array v11, v2, [I

    .line 584
    .local v11, "outId":[I
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v5

    .line 585
    .local v5, "inm":Landroid/app/INotificationManager;
    const-string/jumbo v6, "android"

    const-string/jumbo v7, "android"

    .line 587
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    .line 585
    const/4 v8, 0x0

    .line 586
    const v9, 0x50a002e

    .line 585
    invoke-interface/range {v5 .. v12}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgNameSet:Ljava/util/HashSet;

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 590
    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgName:Ljava/lang/String;

    .line 591
    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[BgDetect][Notification] notify for pkg "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " pid "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 599
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "inm":Landroid/app/INotificationManager;
    .end local v10    # "notification":Landroid/app/Notification;
    .end local v11    # "outId":[I
    .end local v13    # "action":Landroid/app/Notification$Action;
    .end local v17    # "content":Ljava/lang/String;
    .end local v18    # "curTime":J
    .end local v27    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v36    # "stopIntent":Landroid/content/Intent;
    .end local v37    # "title":Ljava/lang/String;
    .end local v38    # "triggerPkgName":Ljava/lang/String;
    :pswitch_6
    :try_start_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;

    .line 600
    .local v28, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->cleanUpWhenPkgRemoved(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 601
    .end local v28    # "pkg":Ljava/lang/String;
    :catch_2
    move-exception v20

    .line 602
    .restart local v20    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "OHPD"

    const-string/jumbo v3, "Error when clean up package removed record"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 610
    .end local v20    # "e":Ljava/lang/Exception;
    :pswitch_7
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 673
    :goto_2
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v5

    .line 674
    .restart local v5    # "inm":Landroid/app/INotificationManager;
    const-string/jumbo v2, "android"

    invoke-interface {v5, v2}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v14

    .line 675
    .local v14, "activeList":[Landroid/service/notification/StatusBarNotification;
    if-eqz v14, :cond_8

    array-length v2, v14

    const/4 v3, 0x1

    if-ge v2, v3, :cond_17

    .line 676
    :cond_8
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string/jumbo v2, "OHPD"

    const-string/jumbo v3, "[BgDetect][Notification] activeList null"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_9
    return-void

    .line 612
    .end local v5    # "inm":Landroid/app/INotificationManager;
    .end local v14    # "activeList":[Landroid/service/notification/StatusBarNotification;
    :cond_a
    new-instance v35, Ljava/util/HashSet;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashSet;-><init>()V

    .line 613
    .local v35, "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v34, Ljava/util/HashSet;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashSet;-><init>()V

    .line 614
    .local v34, "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 615
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, "pr$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/am/ProcessRecord;

    .line 616
    .local v31, "pr":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 617
    move-object/from16 v0, v31

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_3

    .line 614
    .end local v31    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v32    # "pr$iterator":Ljava/util/Iterator;
    :catchall_4
    move-exception v2

    :try_start_b
    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 693
    .end local v34    # "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v35    # "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_3
    move-exception v20

    .line 694
    .restart local v20    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "OHPD"

    .line 695
    const-string/jumbo v3, "[BgDetect] cancel notification fail"

    .line 694
    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v32    # "pr$iterator":Ljava/util/Iterator;
    .restart local v34    # "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v35    # "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_b
    :try_start_c
    monitor-exit v3

    .line 614
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 621
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 622
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "fproc$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 623
    .local v21, "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 624
    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_4

    .line 621
    .end local v21    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .end local v22    # "fproc$iterator":Ljava/util/Iterator;
    :catchall_5
    move-exception v2

    :try_start_e
    monitor-exit v3

    throw v2

    .restart local v22    # "fproc$iterator":Ljava/util/Iterator;
    :cond_c
    monitor-exit v3

    .line 629
    .end local v22    # "fproc$iterator":Ljava/util/Iterator;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 630
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, "pkg$iterator":Ljava/util/Iterator;
    :cond_e
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 632
    .restart local v28    # "pkg":Ljava/lang/String;
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    .line 634
    .local v15, "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    iget v2, v15, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 635
    iget-object v2, v15, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 636
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_f

    const-string/jumbo v2, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[BgDetect][Notification] cancel abort: huge running: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :cond_f
    :try_start_10
    monitor-exit v3

    .line 637
    return-void

    .end local v15    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v28    # "pkg":Ljava/lang/String;
    :cond_10
    monitor-exit v3

    .line 643
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    .line 644
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_11
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 646
    .restart local v28    # "pkg":Ljava/lang/String;
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    .line 648
    .restart local v15    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    iget v2, v15, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 649
    iget-object v2, v15, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 650
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_12

    const-string/jumbo v2, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[BgDetect][Notification] cancel abort: high running: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :cond_12
    :try_start_12
    monitor-exit v3

    .line 651
    return-void

    .line 629
    .end local v15    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v28    # "pkg":Ljava/lang/String;
    .end local v29    # "pkg$iterator":Ljava/util/Iterator;
    :catchall_6
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v29    # "pkg$iterator":Ljava/util/Iterator;
    :cond_13
    monitor-exit v3

    .line 657
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    .line 658
    :try_start_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_14
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 660
    .restart local v28    # "pkg":Ljava/lang/String;
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    .line 662
    .restart local v15    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    iget v2, v15, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 663
    iget-object v2, v15, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 664
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_15

    const-string/jumbo v2, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[BgDetect][Notification] cancel abort: medium running: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    :cond_15
    :try_start_14
    monitor-exit v3

    .line 665
    return-void

    .line 643
    .end local v15    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v28    # "pkg":Ljava/lang/String;
    :catchall_7
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_16
    monitor-exit v3

    goto/16 :goto_2

    .line 657
    :catchall_8
    move-exception v2

    monitor-exit v3

    throw v2

    .line 679
    .end local v29    # "pkg$iterator":Ljava/util/Iterator;
    .end local v32    # "pr$iterator":Ljava/util/Iterator;
    .end local v34    # "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v35    # "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5    # "inm":Landroid/app/INotificationManager;
    .restart local v14    # "activeList":[Landroid/service/notification/StatusBarNotification;
    :cond_17
    const/4 v2, 0x0

    array-length v3, v14

    :goto_5
    if-ge v2, v3, :cond_0

    aget-object v26, v14, v2

    .line 680
    .local v26, "noti":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v26 .. v26}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    const v7, 0x50a002e

    if-ne v6, v7, :cond_19

    .line 681
    const-string/jumbo v2, "OHPD"

    const-string/jumbo v3, "[BgDetect][Notification] notification exists, cancel it"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-string/jumbo v2, "android"

    .line 683
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 682
    const/4 v6, 0x0

    .line 683
    const v7, 0x50a002e

    .line 682
    invoke-interface {v5, v2, v6, v7, v3}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgNameSet:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .restart local v29    # "pkg$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 686
    .restart local v28    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    sget-wide v6, Lcom/android/server/am/OnePlusHighPowerDetector;->NOTIFY_INTERVAL:J

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 688
    .end local v28    # "pkg":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgNameSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 689
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgName:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    goto/16 :goto_0

    .line 679
    .end local v29    # "pkg$iterator":Ljava/util/Iterator;
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 700
    .end local v5    # "inm":Landroid/app/INotificationManager;
    .end local v14    # "activeList":[Landroid/service/notification/StatusBarNotification;
    .end local v26    # "noti":Landroid/service/notification/StatusBarNotification;
    :pswitch_8
    :try_start_15
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v5

    .line 701
    .restart local v5    # "inm":Landroid/app/INotificationManager;
    const-string/jumbo v2, "android"

    .line 702
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 701
    const/4 v6, 0x0

    .line 702
    const v7, 0x50a002e

    .line 701
    invoke-interface {v5, v2, v6, v7, v3}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5

    .line 707
    .end local v5    # "inm":Landroid/app/INotificationManager;
    :goto_7
    :try_start_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;

    .line 708
    .restart local v28    # "pkg":Ljava/lang/String;
    const/4 v2, -0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4

    goto/16 :goto_0

    .line 709
    .end local v28    # "pkg":Ljava/lang/String;
    :catch_4
    move-exception v20

    .line 710
    .restart local v20    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "OHPD"

    const-string/jumbo v3, "[BgDetect] Error when force stop pkg"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 703
    .end local v20    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v20

    .line 704
    .restart local v20    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "OHPD"

    const-string/jumbo v3, "[BgDetect] Error when cancel notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0xd6d8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method hasSystemFlag(I)Z
    .locals 2
    .param p1, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 718
    and-int/lit16 v1, p1, 0x81

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public initOnlineConfig()V
    .locals 5

    .prologue
    .line 406
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    .line 407
    new-instance v3, Lcom/android/server/am/OnePlusHighPowerDetector$BackgroundDetectionConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusHighPowerDetector$BackgroundDetectionConfigUpdater;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->BACKGROUND_DETECTION_CONFIG_NAME:Ljava/lang/String;

    .line 406
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBackgroundDetectionConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 408
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBackgroundDetectionConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 404
    return-void
.end method

.method isForkedProcInWhiteList(Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;)Z
    .locals 3
    .param p1, "pr"    # Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .prologue
    .line 1799
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1800
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

    .line 1805
    const/4 v0, 0x0

    return v0

    .line 1801
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1802
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1799
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method isProcInBlackExList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "pr"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1819
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1820
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

    .line 1825
    const/4 v0, 0x0

    return v0

    .line 1821
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1819
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method isProcInBlackList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "pr"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1809
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1810
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

    .line 1815
    const/4 v0, 0x0

    return v0

    .line 1811
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1812
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1809
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method isProcInWhiteList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "pr"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1789
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1790
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

    .line 1795
    const/4 v0, 0x0

    return v0

    .line 1791
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1792
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1789
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

    .line 1394
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    if-eqz v6, :cond_3

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 1395
    const/4 v2, 0x0

    .local v2, "conni":I
    :goto_0
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 1396
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord;

    .line 1397
    .local v0, "c":Lcom/android/server/am/ContentProviderRecord;
    const/4 v5, 0x0

    .line 1398
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

    .line 1400
    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ContentProviderConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1404
    .local v5, "sr":Lcom/android/server/am/ContentProviderConnection;
    if-eqz v5, :cond_0

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, v5, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v6, v7, :cond_0

    .line 1405
    iget-object v1, v5, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 1406
    .local v1, "client":Lcom/android/server/am/ProcessRecord;
    iget v6, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 1407
    iget v6, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v6, v9, :cond_0

    .line 1408
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

    .line 1409
    return v9

    .line 1401
    .end local v1    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "sr":Lcom/android/server/am/ContentProviderConnection;
    :catch_0
    move-exception v3

    .line 1395
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1415
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

    .line 722
    packed-switch p2, :pswitch_data_0

    .line 737
    return v1

    .line 726
    :pswitch_0
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ge v2, v5, :cond_0

    .line 727
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v2, v4, :cond_1

    .line 726
    :cond_0
    :goto_0
    return v0

    .line 728
    :cond_1
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 730
    :pswitch_1
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ge v2, v5, :cond_2

    .line 731
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v2, v4, :cond_3

    .line 730
    :cond_2
    :goto_1
    return v0

    .line 732
    :cond_3
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-eq v2, v3, :cond_2

    .line 733
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 734
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    .line 735
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    move v0, v1

    goto :goto_1

    .line 722
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public postProcessOfForceStop(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1490
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1491
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1492
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :try_start_2
    monitor-exit v5

    .line 1495
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1496
    :try_start_3
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1497
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    :try_start_4
    monitor-exit v5

    .line 1500
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1501
    :try_start_5
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1502
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_2
    :try_start_6
    monitor-exit v5

    .line 1506
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1507
    :try_start_7
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    if-eqz v4, :cond_4

    .line 1508
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;>;>;"
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1509
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1510
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 1511
    .local v0, "app":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1512
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 1506
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

    .line 1517
    :catch_0
    move-exception v1

    .line 1518
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

    .line 1488
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 1490
    :catchall_1
    move-exception v4

    :try_start_9
    monitor-exit v5

    throw v4

    .line 1495
    :catchall_2
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1500
    :catchall_3
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_4
    monitor-exit v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_1
.end method

.method public setBgMonitorMode(Z)V
    .locals 0
    .param p1, "auto"    # Z

    .prologue
    .line 1576
    return-void
.end method

.method public startMonitor()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 450
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v2, 0xd6d8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 451
    .local v0, "nmsg":Landroid/os/Message;
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 452
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v2, 0xd6d9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 453
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    aget v2, v2, v4

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 454
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v2, 0xd6da

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 455
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 456
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    const v2, 0xd6de

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 457
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 458
    const-string/jumbo v1, "OHPD"

    const-string/jumbo v2, "[BgDetect] startMonitor # queue CHECK_EXCESSIVE_CPU MSGs"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBgDetectStartMonitoring:Z

    .line 447
    return-void
.end method

.method public stopBgPowerHungryApp(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "powerLevel"    # I

    .prologue
    .line 1678
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->stopBgPowerHungryApp(Ljava/lang/String;IZ)V

    .line 1677
    return-void
.end method

.method updateProcUsg(Lcom/android/server/am/ProcessRecord;I)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "level"    # I

    .prologue
    .line 1435
    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    iput-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    .line 1436
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    aput-wide v2, v0, p2

    .line 1437
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->lastRxBytes:[J

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    aput-wide v2, v0, p2

    .line 1438
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->lastTxBytes:[J

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    aput-wide v2, v0, p2

    .line 1434
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
    .line 1443
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1444
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    :cond_0
    return-void
.end method
